<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    
}
.container {
    width: 100%;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #e8e8e8;
    background-image: url("./image/book-bg.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
.main {
    position: relative;
    display: flex;
    flex-direction: column;
    background-color:#D4B483;
    max-height: 450px;
    width: 400px;
    overflow: hidden;
    border-radius: 12px;
}

.form {
    display: flex;
    flex-direction: column;
    gap: 14px;
    padding: 24px;
}


/*Login*/

.login {
    position: relative;
    width: 100%;
    height: 100%;
}

.login label {
    margin: 5% 0 5%;
}

label {
    color: #fff;
    font-size: 2rem;
    justify-content: center;
    display: flex;
    font-weight: bold;
    cursor: pointer;
    transition: .5s ease-in-out;
}

.input {
    width: 100%;
    height: 40px;
    font-size: 1rem;
    background: #e0dede;
    padding: 10px;
    margin-top: 15px;
    border: none;
    outline: none;
    
}
 

/*Button*/

.form button {
    width: 50%;
    height: 40px;
    margin: 15px auto 10%;
    color: #69626D ;
    background-color:#E4DFDA;
    font-size: 1rem;
    font-weight: bold;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: .2s ease-in;
}

.form button:hover {
    background-color: beige;
}



</style>
</head>
<body>
 <div class="container">
        <div class="main">      
            <div class="login">
                <form class="form" action="ControllerLogin.jsp" method="post">
                    <label>Sign in</label>
                    <input class="input" type="email" name="email" placeholder="Email" >
                    <input class="input" type="password" name="password" placeholder="Password" >
                    <button type="submit">Sign in</button>
                </form>
            </div>
          </div>
    </div> 
</body>
</html>
