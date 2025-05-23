<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="db" class="caffeinecanvas.DBInitialization" scope="application"></jsp:useBean>
        <jsp:useBean id="c" class="caffeinecanvas.Customer" scope="session">
        <jsp:setProperty property="email" name="c"/>
        <jsp:setProperty property="password" name="c"/>
        </jsp:useBean>
        <jsp:useBean id="d" class="caffeinecanvas.Director" scope="session">
        <jsp:setProperty property="email" name="d"/>
        <jsp:setProperty property="password" name="d"/>
        </jsp:useBean>
        
    
<%
boolean CLogin=db.loginCustomer(c);
//boolean DLogin=db.loginDirector(d);
if(CLogin){
	
	%>
	
	<jsp:forward page="LocationOut.jsp" />
	<%
}
	//	request.getRequestDispatcher("Location.jsp").forward(request,response);
//else if(DLogin)
//		request.getRequestDispatcher("AdminView.jsp").forward(request,response);
else
	{
		session.removeAttribute("c");
		session.removeAttribute("d");
		out.print("Invalid username or password");
		request.getRequestDispatcher("Login.jsp").include(request,response);
	}
%>