<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="db" class="caffeinecanvas.DBInitialization" scope="application"></jsp:useBean>
<jsp:useBean id="r" class="caffeinecanvas.Reservation" scope="request">
    <jsp:setProperty property="*" name="r"/>
</jsp:useBean>

<% 
// Store the feedback in the database
int reservationStored = db.storeeservation(r);

// Check if feedback was successfully stored
if (reservationStored > 0) {
    out.println("Reservation submitted successfully!");
} else {
    out.println("Failed to submit reservation. Please try again.");
}
%>