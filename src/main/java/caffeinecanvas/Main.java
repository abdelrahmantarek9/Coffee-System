package caffeinecanvas;

import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {

		DBInitialization dbInit = new DBInitialization();
		
		// Display columns and input for Customer table
        ArrayList<Customer> customers = dbInit.viewCustomers();
        System.out.println("Customer Table:");
        System.out.println("Username | Password | Email");
        for (Customer customer : customers) {
            System.out.println(customer.getUsername() + " | " + customer.getPassword() + " | " + customer.getEmail());
        }
        
        // Display columns and input for Products table
        ArrayList<Products> products = dbInit.viewProducts();
        System.out.println("\nProducts Table:");
        System.out.println("ID | Name | Price");
        for (Products product : products) {
            System.out.println(product.getId() + " | " + product.getName() + " | " + product.getPrice());
        }

        // Display columns and input for Orders table
        Barista barista = new Barista(); // Instantiate a dummy Barista object
        ArrayList<Orders> orders = dbInit.viewOrders(barista);
        System.out.println("\nOrders Table:");
        System.out.println("Order ID | Total Price | Order Date");
        for (Orders order : orders) {
            System.out.println(order.getOrderId() + " | " + order.getTotalprice() + " | " + order.getOrderDate());
        }
        
        // Display columns and input for Reservation table
        ArrayList<Reservation> reservations = dbInit.viewReservations();
        System.out.println("\nReservation Table:");
        System.out.println("ID | Customer Name | Email | Phone | Message");
        for (Reservation reservation : reservations) {
            System.out.println(reservation.getId() + " | " + reservation.getCustomerName() + " | " + reservation.getEmail() + " | " + reservation.getPhone() + " | " + reservation.getMessage());
        }
        
        // Display columns and input for Feedback table
        ArrayList<Feedback> feedbackList = dbInit.viewFeedback();
        System.out.println("\nFeedback Table:");
        System.out.println("ID | Email | Location | Dine In | Food Quality | Service Quality | Cleanliness | Order Accuracy | Speed Of Service | Overall Experience");
        for (Feedback feedback : feedbackList) {
            System.out.println(feedback.getId() + " | " + feedback.getEmail() + " | " + feedback.getLocation() + " | " + feedback.getDine() + " | "  + feedback.getFoodQuality() + " | " + feedback.getServiceQuality() + " | " + feedback.getCleanliness() + " | " + feedback.getOrderAccuracy() + " | " + feedback.getSpeedOfService() + " | " + feedback.getOverallExperience());
        }
    }
	}


