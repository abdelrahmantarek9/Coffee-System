<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="db" class="caffeinecanvas.DBInitialization" scope="application"/>
<jsp:useBean id="c" class="caffeinecanvas.Customer" scope="request">
    <jsp:setProperty property="*" name="c"/>
</jsp:useBean>
<%
    String password = request.getParameter("password");
    int result = -1; // default error

    if(password == null || password.length() < 8) {
%>
        <script>
        alert("Password must be at least 8 characters long.");
        window.location.href = "Register.jsp";
        </script>
<%
    } else {
        result = db.storeCustomer(c);
        if(result < 1) {
%>
            <script>
            alert("User already exists!");
            window.location.href = "Register.jsp";
            </script>
<%
        } else {
%>
            <script>
            alert("Registration successful! Redirecting to login...");
            window.location.href = "Login.jsp";
            </script>
<%
        }
    }
%>
