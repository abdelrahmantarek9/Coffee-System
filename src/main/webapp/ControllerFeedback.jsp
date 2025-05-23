<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="db" class="caffeinecanvas.DBInitialization" scope="application"></jsp:useBean>
<jsp:useBean id="f" class="caffeinecanvas.Feedback" scope="request">
    <jsp:setProperty property="*" name="f"/>
</jsp:useBean>

<% 
// Store the feedback in the database
int feedbackStored = db.storeFeedback(f);

// Check if feedback was successfully stored
if (feedbackStored > 0) {
    out.println("Feedback submitted successfully!");
} else {
    out.println("Failed to submit feedback. Please try again.");
}
%>
