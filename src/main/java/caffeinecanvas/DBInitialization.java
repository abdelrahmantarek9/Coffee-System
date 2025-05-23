package caffeinecanvas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class DBInitialization {
Connection con=null;
	
	public DBInitialization() {
		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");	
			System.out.println("driver loaded");
			
			con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
			System.out.println("connected");
			
			Statement FeedbackStmt = con.createStatement();
			FeedbackStmt.executeUpdate("CREATE TABLE Feedback (\r\n"
			        + "    FeedbackID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,\r\n"
			        + "    email VARCHAR(50),\r\n"
			        + "    phone VARCHAR(11),\r\n"
			        + "    location VARCHAR(50),\r\n"
			        + "    dine VARCHAR(50),\r\n"  // Added comma here
			        + "    DayVisited DATE,\r\n"
			        + "    FoodQuality VARCHAR(50),\r\n"
			        + "    serviceQuality VARCHAR(50),\r\n"
			        + "    Cleanliness VARCHAR(50),\r\n"
			        + "    OrderAccuracy VARCHAR(50),\r\n"
			        + "    SpeedOfService VARCHAR(50),\r\n"
			        + "    OverallExperience VARCHAR(50)\r\n"  // Removed comma here
			        + ")");

			
			Statement CustomerStmt=con.createStatement();
			CustomerStmt.executeUpdate("create table Customer (\r\n"
					+ "    username varchar(50) ,\r\n"
					+ "    password varchar(50) , \r\n"
					+ "    email varchar(50) primary key)");
			Statement BaristaStmt=con.createStatement();
			BaristaStmt.executeUpdate("CREATE TABLE Barista (\r\n"
				    + "    Id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, \r\n"
				    + "    name varchar(50),\r\n"
				    + "    phone varchar(11),\r\n"
				    + "    address varchar(100),\r\n"
				    + "    salary varchar(20))");
			Statement OrdersStmt=con.createStatement();
			OrdersStmt.executeUpdate("CREATE TABLE Orders (\r\n"
				    + "    Order_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,\r\n"
				    + "    TotalPrice DOUBLE,\r\n"
				    + "    OrderDate TIMESTAMP,\r\n"
				    + "    Id_Barista INT,\r\n"
				    + "    CONSTRAINT fk_Id_Barista FOREIGN KEY (Id_Barista) REFERENCES Barista(Id))");

			Statement DirectorStmt=con.createStatement();
			DirectorStmt.executeUpdate("CREATE TABLE Director (\r\n"
				    + "    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, \r\n"
				    + "    name VARCHAR(50),\r\n"
				    + "    phone VARCHAR(11),\r\n"
				    + "    address VARCHAR(100),\r\n"
				    + "    salary VARCHAR(20),\r\n"
				    + "    email VARCHAR(50),\r\n"
				    + "    password VARCHAR(50))");

			Statement ProductsStmt=con.createStatement();
			ProductsStmt.executeUpdate("CREATE TABLE Products (\r\n"
				    + "    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, \r\n"
				    + "    name VARCHAR(50),\r\n"
				    + "    price DOUBLE,\r\n"
				    + "    location VARCHAR(50))");
				    
			Statement ReservationStmt = con.createStatement();
			ReservationStmt.executeUpdate("CREATE TABLE Reservation (\r\n"
			    + "    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,\r\n"
			    + "    CustomerName VARCHAR(50),\r\n"
			    + "    email VARCHAR(50),\r\n" // Ensure the column name is 'email'
			    + "    phone VARCHAR(11),\r\n"
			    + "    message VARCHAR(100)\r\n"
			    + ")");

		} catch (SQLException e) {
            if (e.getErrorCode() == 30000) { // In case of table was created before!
                System.out.println("error");
            } else {
                e.printStackTrace();
            }
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				if(con != null)
					con.close();
			} catch (SQLException ex) {
			}
		}
		
	}
	
	public int storeCustomer(Customer c) {
	    int customerUpdated = 0;
	    Connection con = null;
	    try {
			con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
	        System.out.println("Connected to DB.");

	        // Check if email already exists
	        PreparedStatement checkStmt = con.prepareStatement("SELECT COUNT(*) FROM Customer WHERE email = ?");
	        checkStmt.setString(1, c.getEmail());
	        ResultSet rs = checkStmt.executeQuery();
	        if (rs.next() && rs.getInt(1) > 0) {
	            System.out.println("User already exists with email: " + c.getEmail());
	            return 0;  // User exists, do not insert
	        }

	        // Insert new customer
	        PreparedStatement insertStmt = con.prepareStatement("INSERT INTO Customer(username, password, email) VALUES (?, ?, ?)");
	        insertStmt.setString(1, c.getUsername());
	        insertStmt.setString(2, c.getPassword());
	        insertStmt.setString(3, c.getEmail());

	        customerUpdated = insertStmt.executeUpdate();
	        System.out.println("Rows inserted: " + customerUpdated);

	        insertStmt.close();
	        checkStmt.close();
	    } catch (SQLException e) {
	        System.out.println("SQL Exception message: " + e.getMessage());
	        e.printStackTrace();
	    } finally {
	        try {
	            if (con != null)
	                con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return customerUpdated;
	}


public int storeBarista(Barista b) {
		
		int Baristaupdated = 0;
		
		try {
			con=DriverManager.getConnection("jdbc:derby:db/CaffeineCanvas;create=true");
			System.out.println("connected");
			PreparedStatement bpstmt = con.prepareStatement("insert into Barista(name, phone, address, salary) values(?,?,?,?)");
			bpstmt.setString(1,"farah yasser");
			bpstmt.setString(2,"01082333654");
			bpstmt.setString(3,"sheraton");
			bpstmt.setString(4,"5000");
			
			
			Baristaupdated += bpstmt.executeUpdate();
			
			bpstmt.setString(1,"habiba ahmed");
			bpstmt.setString(2,"01082333655");
			bpstmt.setString(3,"zayed");
			bpstmt.setString(4,"5500");
			
			Baristaupdated  += bpstmt.executeUpdate();
			
			bpstmt.setString(1,"sara ahmed");
			bpstmt.setString(2,"01082333656");
			bpstmt.setString(3,"Heliopolis");
			bpstmt.setString(4,"6000");
			
			
			Baristaupdated  += bpstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return Baristaupdated;
		
		
}
public int storeOrders(Orders o) {
	
	int Orderupdated = 0;
	
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		System.out.println("connected");
		PreparedStatement opstmt = con.prepareStatement("insert into Orders(TotalPrice, OrderDate, Id_Barista) values(?,?,?)");
		opstmt.setDouble(1,o.getTotalprice());
		opstmt.setTimestamp(2,o.getOrderDate());
		opstmt.setInt(3, o.getBarista().getId());

		
		
		Orderupdated = opstmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return Orderupdated;
}
public int storeDirector(Barista b) {
	
	int Directorupdated = 0;
	
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		System.out.println("connected");
		PreparedStatement bpstmt = con.prepareStatement("insert into Director values(?,?,?,?,?,?)");
		bpstmt.setString(1,"Malak AlAmir");
		bpstmt.setString(2,"01082333657");
		bpstmt.setString(3,"new cairo");
		bpstmt.setString(4,"10000");
		bpstmt.setString(5,"Malak@gmail.com");
		bpstmt.setString(6,"malak");

		
		Directorupdated += bpstmt.executeUpdate();
		
		bpstmt.setString(1,"Nouran Magdy");
		bpstmt.setString(2,"01082333658");
		bpstmt.setString(4,"Mokattam");
		bpstmt.setString(3,"15000");

		bpstmt.setString(5,"Nouran@gmail.com.com");
		bpstmt.setString(6,"nounou");
		
		Directorupdated  += bpstmt.executeUpdate();
		
		bpstmt.setString(1,"Basmala Elsayed");
		bpstmt.setString(2,"01082333659");
		bpstmt.setString(3,"Heliopolis");
		bpstmt.setString(4,"15000");
		bpstmt.setString(5,"basmala@gmail.com");
		bpstmt.setString(6,"basmala");
		
		
		Directorupdated  += bpstmt.executeUpdate();
		
		bpstmt.setString(1,"Salma Ahmed");
		bpstmt.setString(2,"01082333650");
		bpstmt.setString(3,"New Cairo");
		bpstmt.setString(4,"20000");
		bpstmt.setString(5,"salmaahmed@gmail.com");
		bpstmt.setString(6,"salma");
		
		
		Directorupdated  += bpstmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return Directorupdated;
	
	
}

public int storeeservation(Reservation r) {
	
	int Reservationupdated = 0;
	
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		System.out.println("connected");
		PreparedStatement rpstmt = con.prepareStatement("insert into Reservation(CustomerName,email,phone,message) values(?,?,?,?)");
		rpstmt.setString(1,r.getCustomerName());
		rpstmt.setString(2,r.getEmail());
		rpstmt.setString(3,r.getPhone());
		rpstmt.setString(4,r.getMessage());
		
		
		
		Reservationupdated = rpstmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return Reservationupdated;
}
public void DropFeedback()
{
	try {
		Class.forName("org.apache.derby.jdbc.ClientDriver");
		System.out.println("driver loaded");
		
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		System.out.println("connected");
		
		 Statement dropStmt = con.createStatement();
         dropStmt.executeUpdate("DROP TABLE Reservation");

}catch(Exception e){
	e.printStackTrace();
}finally{
	try {
		if(con != null)
			con.close();
	} catch (SQLException ex) {
	}
}
}
public int storeFeedback(Feedback f) {
	System.out.println("in store");
	int Feedbackupdated = 0;
	
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		System.out.println("connected");
		PreparedStatement fpstmt = con.prepareStatement("insert into Feedback(email,location,dine,FoodQuality,serviceQuality,Cleanliness,OrderAccuracy,SpeedOfService,OverallExperience) values(?,?,?,?,?,?,?,?,?)");
		fpstmt.setString(1, f.getEmail());
		fpstmt.setString(2, f.getLocation());
		fpstmt.setString(3, f.getDine());
		fpstmt.setString(4, f.getFoodQuality());
		fpstmt.setString(5, f.getServiceQuality());
		fpstmt.setString(6, f.getCleanliness());
		fpstmt.setString(7, f.getOrderAccuracy());
		fpstmt.setString(8, f.getSpeedOfService());
		fpstmt.setString(9, f.getOverallExperience());

		
		System.out.println("Hill");
		
		Feedbackupdated = fpstmt.executeUpdate();
		System.out.println(Feedbackupdated);
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return Feedbackupdated;
	
	
}

public boolean loginCustomer(Customer c){
	System.out.println(c.getEmail());
	System.out.println(c.getPassword());
/*
	
*/
	try {
		
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		Statement st = con.createStatement();
		
		PreparedStatement Cpstmt = con.prepareStatement("select * from Customer where email=? and password=?");
		Cpstmt.setString(1,c.getEmail());
		Cpstmt.setString(2,c.getPassword());
		ResultSet rs=Cpstmt.executeQuery();
		if(rs.next())
		{
			System.out.println(c.getEmail());
			c.setUsername(rs.getString("username"));
			return true;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return false;
	
	}
public boolean loginDirector(Director d){

	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		
		PreparedStatement dpstmt = con.prepareStatement("select * from Director where email=? and password=?");
		dpstmt.setString(1,d.getEmail());
		dpstmt.setString(2,d.getPassword());
		ResultSet rs=dpstmt.executeQuery();
		if(rs.next())
		{
			d.setName(rs.getString("name"));
			d.setPhone(rs.getString("phone"));
			d.setAddress(rs.getString("address"));
			d.setSalary(rs.getString("salary"));
			return true;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return false;
	
	}
public ArrayList<Products> viewProducts(){
	
	ArrayList<Products> products = new ArrayList<>();
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		
		//select * from users
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Products");
		while(rs.next()) {
			Products p = new Products();
			p.setId(rs.getInt("id"));
			p.setName(rs.getString("name"));
			p.setPrice(rs.getDouble("price"));
			products.add(p);  
		}

		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return products;
}
public ArrayList<Orders> viewOrders(Barista b){
	
	ArrayList<Orders> orders = new ArrayList<>();
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Orders");
		while(rs.next()) {
			Orders o = new Orders();
			o.setOrderId(rs.getInt("Order_ID"));
			o.setOrderDate(rs.getTimestamp("OrderDate"));
			o.setTotalprice(rs.getDouble("TotalPrice"));

			orders.add(o) ;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return orders;
}
public ArrayList<Customer> viewCustomers(){
	
	
	ArrayList<Customer> customers = new ArrayList<>();
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Customer");
		System.out.println("customers");
		while(rs.next()) {
			Customer c= new Customer();
			c.setEmail(rs.getString("email"));
			c.setPassword(rs.getString("password"));
			c.setUsername(rs.getString("username"));
			System.out.println(c);
			customers.add(c) ;
		}
		
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return customers;
}
public ArrayList<Feedback> viewFeedback(){
	
	ArrayList<Feedback> feedback = new ArrayList<>();
	try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Feedback");
		while(rs.next()) {
			Feedback f= new Feedback();
			f.setId(rs.getInt("FeedbackID"));
			f.setLocation(rs.getString("location"));
			f.setDine(rs.getString("dine"));
			f.setServiceQuality(rs.getString("serviceQuality"));
			f.setCleanliness(rs.getString("Cleanliness"));
			f.setOrderAccuracy(rs.getString("OrderAccuracy"));
			f.setSpeedOfService(rs.getString("SpeedOfService"));
			f.setOverallExperience(rs.getString("OverallExperience"));

			
			feedback.add(f) ;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		try {
			if(con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return feedback;

}
public ArrayList<Reservation> viewReservations() {
    ArrayList<Reservation> reservations = new ArrayList<>();
    try {
		con=DriverManager.getConnection("jdbc:derby://localhost:1527/Caff;create=true");

        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM Reservation");
        while (rs.next()) {
            Reservation reservation = new Reservation();
            reservation.setId(rs.getInt("id"));
            reservation.setCustomerName(rs.getString("CustomerName"));
            reservation.setEmail(rs.getString("email"));
            reservation.setPhone(rs.getString("phone"));
            reservation.setMessage(rs.getString("message"));
            reservations.add(reservation);
        }

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (con != null)
                con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    return reservations;
}

}
	
	
	

