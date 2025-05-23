<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Locations</title>
    <link rel="icon" href="./image/imageLondon/sss.png" type="image/icon type">
    <style>

        :root {
    --main-color: #443;
    --border-radius: 95% 4% 97% 5% / 4% 94% 3% 95%;
    --border-radius-hover: 4% 95% 6% 95% / 95% 4% 92% 5%;
    --border: .2rem solid var(--main-color);
    --border-hover: .2rem dashed var(--main-color);
}

        * {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
    border: none;
    text-decoration: none;
    transition: all .2s linear;
}
        html {
            background-image: url(./image/book-bg.jpg);
        }

      

        .container-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top : 200px;
        }

        .container {
            width: 15%; 
            height: 230px; 
            margin: 20px; 
            margin-top: -80px;
            padding: 20px;
            border: 1px solid #000000;
            display: inline-block; 
            transition: transform 0.3s;
            text-align: center; 
            border-radius: 20px; 
            background-color:#ffffff
        }
        .container:hover {
            transform: scale(1.1); 
        }
        .container img {
            display: block; 
            margin: 0 auto; 
            width: 150px;
            height: 150px;
        }

        .container h2 {
            margin-top: 0;
        }

        @media screen and (max-width: 600px) {
            .container {
                width: 90%;
            }
        }
        h2{
            color: #000000;



        }
        h1{
            margin-top: 70px; 
            font-size: xxx-large;
            color: var(--main-color)

            
        }
    
    </style>
</head>

<body>
    <center><h1> Select a Location </h1></center>

    <div class="container-wrapper">
        <a href="LosAngelesOut.jsp" class="container" id="pc">
            <img src="./image/Hollywood-removebg-preview.png" alt="Los Angeles" />
            <h2>Los Angeles</h2>
        </a>

        <a href="LondonOut.jsp" class="container" id="ps">
            <img src="./image/London-removebg-preview.png" alt="London" />
            <h2>London</h2>
        </a>

        <a href="NewCairoOut.jsp" class="container" id="xbox">
            <img src="./image/Pyramids-removebg-preview.png" alt="New Cairo" />
            <h2>New Cairo</h2>
        </a>
    </div>
</body>
</html>
    