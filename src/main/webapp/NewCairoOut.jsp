<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Caffeinated Canvas</title>
    <link rel="icon" href="./image/imageCairo/rol.png" type="image/icon type">
    <!-- SWIPER -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
    <!-- Font Awesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Custom CSS -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

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
            text-transform: capitalize;
            transition: all .2s linear;
        }

        html {
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-padding-top: 7rem;
            scroll-behavior: smooth;
            background-color: #F5E4D7;
        }

        section {
            padding: 2rem 9%;
        }

        .heading {
            font-size: 9rem;
            text-transform: uppercase;
            color: transparent;
            letter-spacing: .2rem;
            text-align: center;
            pointer-events: none;
            position: relative;
        }

        .menu .heading {
            color: white;
        }

        .heading span {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            color: var(--main-color);
            font-size: 3rem;
        }

        .btn {
            display: inline-block;
            padding: .9rem 1.5rem;
            border: var(--border);
            border-radius: var(--border-radius);
            color: var(--main-color);
            background: none;
            cursor: pointer;
            margin-top: 1rem;
            font-size: 1.7rem;
        }

        .btn:hover {
            border-radius: var(--border-radius-hover);
            border: var(--border-hover);
        }

        /* HEADER */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            z-index: 1000;
            background: #F5E4D7;
            box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
            padding: 2rem 9%;
        }

        .header .logo {
            color: var(--main-color);
            font-size: 2.3rem;
        }

        .header .logo i {
            padding-right: .5rem;
        }

        .header .navbar a {
            margin: 0 1rem;
            font-size: 1.7rem;
            color: var(--main-color);
        }

        .header .btn {
            margin-top: 0;
        }

        #menu-btn {
            font-size: 3rem;
            color: var(--main-color);
            cursor: pointer;
            display: none;
        }

        .navbar {
            margin-right: 10px;
        }

        /* HOME */
        .home {
            min-height: 100vh;
            padding-top: 12rem;
            background: url(./image/home-bg.jpg) no-repeat;
            background-position: center;
            background-size: cover;
        }

        .home .row {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            margin-left: 2%;
            gap: 1.5rem;
        }

        .home .row .content {
            flex: 1 1 42rem;
        }

        .home .row .image {
            flex: 1 1 42rem;
            padding-top: 10rem;
            text-align: center;
        }

        .home .row .image img {
            height: 35rem;
            animation: float 4s linear infinite;
            margin-left: 280px;
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0rem);
            }
            50% {
                transform: translateY(-7rem);
            }
        }

        .home .row .content h3 {
            font-size: 6.5rem;
            color: var(--main-color);
            text-transform: uppercase;
        }

        .home .image-slider {
            text-align: center;
            padding: 3rem 0;
        }

        .home .image-slider img {
            height: 9rem;
            margin: 0 .5rem;
            cursor: pointer;
            margin-top: 5rem;
        }

        .home .image-slider img:hover {
            transform: translateY(-2rem);
        }

        /* ABOUT */
        .about .heading {
            color: white;
        }

        .about .row {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            gap: 1.5rem;
        }

        .about .row .image {
            flex: 1 1 42rem;
        }

        .about .row .image img {
            height: 700px;
            border-radius: 50%;
        }

        @keyframes aboutImage {
            0%, 100% {
                transform: scale(.9);
                border-radius: var(--border-radius-hover);
            }
            50% {
                transform: scale(.8);
                border-radius: var(--border-radius);
            }
        }

        .about .row .content {
            flex: 1 1 42rem;
        }

        .about .row .content .title {
            color: var(--main-color);
            font-size: 3rem;
            line-height: 1.8;
        }

        .about .row .content p {
            color: var(--main-color);
            font-size: 1.5rem;
            line-height: 1.8;
            padding: 1rem 0;
        }

        .about .row .content .icons-container {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            padding-top: 3rem;
        }

        .about .row .content .icons-container .icons {
            flex: 1 1 15rem;
            padding: 1.5rem;
            text-align: center;
            border: var(--border);
            border-radius: var(--border-radius);
        }

        .about .row .content .icons-container .icons img {
            height: 5rem;
        }

        .about .row .content .icons-container .icons h3 {
            font-size: 1.7rem;
            padding-top: 1rem;
            color: var(--main-color);
        }

        /* MENU */
        .menu {
            background: url(./image/menu-bg.jpg) no-repeat;
            background-position: center;
            background-size: cover;
        }

        .menu .box-container {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            justify-content: center;
        }

        .menu .box-container .box {
            flex: 1 1 42rem;
            padding: 2rem;
            border: var(--border);
            border-radius: var(--border-radius);
            display: flex;
            align-items: center;
            gap: 1.5rem;
            margin-left: 6rem;
        }

        .menu .box-container .box:hover {
            border: var(--border-hover);
            border-radius: var(--border-radius-hover);
        }

        .menu .box-container .box img {
            height: 8rem;
            margin-left: -6rem;
        }

        .menu .box-container .box .content h3 {
            font-size: 2.2rem;
            color: var(--main-color);
            line-height: 1.8;
        }

        .menu .box-container .box .content p {
            font-size: 1.6rem;
            color: var(--main-color);
            line-height: 1.8;
            padding: 1rem 0;
        }

        .menu .box-container .box .content span {
            font-size: 2rem;
            color: var(--main-color);
            line-height: 1.8;
        }

        .box .content {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 20px;
        }

        .add-to-cart {
            align-self: flex-end;
            color: #000000;
            padding: 10px 20px;
            font-size: 15px;
            border: 2px solid #000;
            border-radius: var(--border-radius);
            cursor: pointer;
            background: none;
        }

        .view-nutritional-info {
            align-self: flex-end;
            color: #000000;
            padding: 10px 20px;
            font-size: 15px;
            border: 2px solid #000;
            border-radius: var(--border-radius);
            cursor: pointer;
            background: none;
        }

        .quantity-input {
            width: 60px;
            padding: 5px;
            margin-right: 10px;
            border: 1px solid #000;
            border-radius: 5px;
        }

        /* REVIEW */
        .review .heading {
            color: white;
        }

        .review .review-slider {
            padding: 3rem 0;
        }

        .review .review-slider .box {
            border: var(--border);
            border-radius: var(--border-radius);
            text-align: center;
            position: relative;
            z-index: 0;
            padding: 2rem;
        }

        .review .review-slider .box .fa-quote-left {
            position: absolute;
            top: 2rem;
            left: 2.5rem;
            font-size: 6rem;
            color: #ccc;
            z-index: -1;
        }

        .review .review-slider .box .fa-quote-right {
            position: absolute;
            bottom: 2rem;
            right: 2.5rem;
            font-size: 6rem;
            color: #ccc;
            z-index: -1;
        }

        .review .review-slider .box:hover .fa-quote-left {
            top: -6.5rem;
        }

        .review .review-slider .box:hover .fa-quote-right {
            bottom: -6.5rem;
        }

        .review .review-slider .box img {
            height: 7rem;
            width: 7rem;
            border-radius: 50%;
            margin-bottom: .7rem;
        }

        .review .review-slider .box .stars {
            padding: .5rem 0;
        }

        .review .review-slider .box .stars i {
            font-size: 1.7rem;
            color: var(--main-color);
        }

        .review .review-slider .box p {
            font-size: 1.6rem;
            color: var(--main-color);
            padding: 1rem 0;
            line-height: 1.8;
        }

        .review .review-slider .box h3 {
            font-size: 2.2rem;
            color: var(--main-color);
            line-height: 1.8;
        }

        .review .review-slider .box span {
            font-size: 1.5rem;
            color: var(--main-color);
        }

        /* BOOK */
        .book .heading {
            color: white;
        }

        .book {
            background: url(./image/book-bg.jpg);
            background-position: center;
            background-size: cover;
        }

        .book form {
            margin: 0 auto 2rem auto;
            max-width: 60rem;
            border-radius: var(--border-radius-hover);
            padding: 3rem;
            border: var(--border);
        }

        .book form .box {
            width: 100%;
            padding: 1rem 1.2rem;
            border-radius: .5rem;
            font-size: 1.6rem;
            background: none;
            text-transform: none;
            color: var(--main-color);
            border: var(--border);
            margin: .7rem 0;
        }

        .book form .box:focus {
            border: var(--border-hover);
        }

        .book form textarea {
            height: 15rem;
            resize: none;
        }

        /* FOOTER */
        .footer .box-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(23rem, 1fr));
            gap: 1.5rem;
        }

        .footer .box-container .box h3 {
            font-size: 2.5rem;
            padding: 1rem 0;
            color: var(--main-color);
        }

        .footer .box-container .box a {
            display: block;
            font-size: 1.5rem;
            padding: 1rem 0;
            color: var(--main-color);
        }

        .footer .box-container .box a i {
            padding-right: .5rem;
        }

        .footer .box-container .box a:hover i {
            padding-right: 2rem;
        }

        .footer .credit {
            text-align: center;
            font-size: 2rem;
            padding: 2rem 1rem;
            margin-top: 1rem;
            color: var(--main-color);
        }

        .footer .credit span {
            border-bottom: var(--border-hover);
        }

        @media (max-width: 991px) {
            html {
                font-size: 55%;
            }
            .header {
                padding: 3rem;
            }
            section {
                padding: 2rem;
            }
        }

        @media (max-width: 768px) {
            .heading {
                font-size: 6rem;
            }
            .heading span {
                font-size: 2.3rem;
            }
            #menu-btn {
                display: initial;
            }
            #menu-btn.fa-times {
                transform: rotate(180deg);
            }
            .header .navbar.active {
                clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
            }
            .header .navbar a {
                display: block;
                font-size: 2.2rem;
                margin: 0;
                padding: 1.5rem 2rem;
            }
            .home {
                text-align: center;
            }
            .home .row .content h3 {
                font-size: 4rem;
            }
            .menu .box-container .box {
                margin-left: 0;
                margin-top: 6rem;
                flex-flow: column;
                text-align: center;
            }
            .menu .box-container .box img {
                margin-left: 0;
                margin-top: -6rem;
            }
            .navbar {
                display: none;
                position: absolute;
                top: 80px;
                left: 0;
                width: 100%;
                background-color: #F5E4D7;
                z-index: 999;
            }
            .navbar.active {
                display: block;
            }
            .menu-container {
                display: flex;
                flex-direction: column;
            }
            .menu-container a {
                padding: 10px 20px;
                text-decoration: none;
                color: #333;
                border-bottom: 1px solid #ccc;
            }
        }

        @media (max-width: 450px) {
            html {
                font-size: 50%;
            }
            .home .row .image img {
                height: auto;
                width: 100%;
            }
            .navbar {
                display: none;
                position: absolute;
                top: 50px;
                left: 0;
                width: 100%;
                background-color: #F5E4D7;
                z-index: 999;
            }
            .navbar.active {
                display: block;
            }
            .menu-container {
                display: flex;
                flex-direction: column;
            }
            .menu-container a {
                padding: 10px 20px;
                text-decoration: none;
                color: #333;
                border-bottom: 1px solid #ccc;
            }
        }

        .popup {
            position: relative;
            display: inline-block;
            cursor: pointer;
        }

        .popup .popuptext {
            visibility: hidden;
            width: 160px;
            background-color: var(--main-color);
            color: #F5E4D7;
            text-align: center;
            border-radius: 6px;
            padding: 4px 0;
            position: absolute;
            z-index: 1;
            top: 125%;
            left: 50%;
            margin-left: -80px;
        }

        .popup .popuptext::after {
            content: "";
            position: absolute;
            bottom: 100%;
            left: 50%;
            margin-left: -5px;
            border-width: 5px;
            border-style: solid;
            border-color: #555 transparent transparent transparent;
        }

        .popup .show {
            visibility: visible;
            -webkit-animation: fadeIn 1s;
            animation: fadeIn 1s;
        }

        @-webkit-keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 10% auto;
            padding: 10px;
            border: 1px solid #888;
            max-width: 30%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-content img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <!-- HEADER -->
    <header class="header">
        <div id="menu-btn" class="fas fa-bars"></div>
        <div class="popup" onclick="popUp()">
            <a href="#" class="logo">Caffeinated Canvas <i class="fas fa-mug-hot"></i></a>
            <span class="popuptext" id="myPopup">Welcome To Our CoffeeShop! :)</span>
        </div>
        <nav class="navbar">
            <div class="menu-container">
                <a href="#home"><ion-icon name="storefront-outline"></ion-icon>Home</a>
                <a href="#about"><ion-icon name="people-outline"></ion-icon>About</a>
                <a href="#menu"><ion-icon name="restaurant-outline"></ion-icon>Menu</a>
                <a href="#review"><ion-icon name="chatbox-outline"></ion-icon>Review</a>
                <a href="Feedback.jsp"><ion-icon name="star-half-outline"></ion-icon>Feedback</a>
                <a href="./cart.jsp"><ion-icon name="cart-outline"></ion-icon>View Cart</a>
            </div>
        </nav>
        <a href="#book" class="btn">Book a Table</a>
        <a href="./NewCairo.jsp" class="btn">Sign Out</a>
    </header>

    <!-- HOME -->
    <section class="home" id="home">
        <div class="row">
            <div class="content">
                <h3>fresh coffee in the morning</h3>
                <a href="#menu" class="btn">buy one now</a>
            </div>
            <div class="image">
                <img src="image/home-img-1.png" class="main-home-image" alt="">
            </div>
        </div>
        <div class="image-slider">
            <img src="image/home-img-1.png" alt="">
            <img src="image/home-image-2.png" alt="">
            <img src="image/home-img-3.png" alt="">
        </div>
    </section>

    <!-- ABOUT -->
    <section class="about" id="about">
        <h1 class="heading">about us <span>why choose us</span></h1>
        <div class="row">
            <div class="image">
                <img src="image/about-img.jpg" alt="">
            </div>
            <div class="content">
                <h3 class="title">what's make our coffee special!</h3>
                <p>Welcome to Caffeinated Canvas, where every cup tells a story and every sip sparks creativity.
                    At Caffeinated Canvas, we believe in more than just serving coffee; we're passionate about crafting experiences.
                    Our journey began with a simple idea: to create a space where people could gather, unwind, and unleash their inner artist.
                    Inspired by the rich tapestry of art and culture, our coffee blends are meticulously curated to delight your senses and fuel your imagination.
                    From the moment you step through our doors, you're greeted by the aroma of freshly roasted beans and the vibrant energy of our community.</p>
                <a href="#" class="btn">read more</a>
                <div class="icons-container">
                    <div class="icons">
                        <img src="image/about-icon-1.png" alt="">
                        <h3>quality coffee</h3>
                    </div>
                    <div class="icons">
                        <img src="image/about-icon-2.png" alt="">
                        <h3>our branches</h3>
                    </div>
                    <div class="icons">
                        <img src="image/about-icon-3.png" alt="">
                        <h3>free delivery</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- MENU -->
    <section class="menu" id="menu">
        <h1 class="heading">our menu <span>popular menu</span></h1>
        <div class="box-container">
            <div class="box">
                <img src="image/menu-1.png" alt="">
                <div class="content">
                    <h3>Caffeinated Canvas Signature Latte</h3>
                    <p>Indulge your senses with our masterpiece, the Caffeinated Canvas Signature Latte.
                        Crafted with precision and passion, it's not just a coffee; it's an experience</p>
                    <span>89.99 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="1">
                    <button class="add-to-cart" data-id="1" data-category="Drink"  data-name="Caffeinated Canvas Signature Latte" data-price="89.99">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-1">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="image/menu-2.png" alt="">
                <div class="content">
                    <h3>Decadent Mocha</h3>
                    <p>Elevate your coffee experience with our Artisan Mocha at Caffeinated Canvas.
                        Crafted with care and creativity, it's not just a beverage; it's a masterpiece in a cup.</p>
                    <span>99.99 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="2">
                    <button class="add-to-cart" data-id="2" data-category="Drink"  data-name="Decadent Mocha" data-price="99.99">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-2">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="image/menu-3.png" alt="">
                <div class="content">
                    <h3>Classic Cappuccino</h3>
                    <p>Experience the epitome of coffee elegance with our Signature Cappuccino at Caffeinated Canvas.
                        Crafted with precision and passion, it's not just a beverage; it's a masterpiece of flavor and finesse.</p>
                    <span>80.00 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="3">
                    <button class="add-to-cart" data-id="3" data-category="Drink"  data-name="Classic Cappuccino" data-price="80.00">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-3">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="image/menu-4.png" alt="">
                <div class="content">
                    <h3>Hot Chocolate</h3>
                    <p>Wrap yourself in the cozy embrace of our Signature Hot Chocolate, a decadent blend of premium cocoa and velvety milk.
                        It's a comforting hug in a cup.</p>
                    <span>120.00 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="4">
                    <button class="add-to-cart" data-id="4" data-category="Drink"  data-name="Hot Chocolate" data-price="120.00">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-4">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="image/menu-5.png" alt="">
                <div class="content">
                    <h3>Artisan Flat White</h3>
                    <p>Discover the perfect balance of bold espresso and velvety milk with our Artisan Flat White. This sophisticated coffee classic
                        is a testament to simplicity and elegance, with a rich, creamy texture and a smooth, indulgent finish.</p>
                    <span>110.00 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="5">
                    <button class="add-to-cart" data-id="5" data-category="Drink" data-name="Artisan Flat White" data-price="110.00">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-5">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="image/menu-6.png" alt="">
                <div class="content">
                    <h3>Velvet Macchiato</h3>
                    <p>Experience the perfect balance of boldness and subtlety with our Artisan Macchiato at Caffeinated Canvas.
                        Crafted with precision and care, it's not just a coffee; it's a symphony of flavor in a cup.</p>
                    <span>100.00 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="6">
                    <button class="add-to-cart" data-id="6" data-category="Drink"  data-name="Velvet Macchiato" data-price="100.00">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-6">View Nutritional Info</button>
                </div>
            </div>
        </div>
    </section>

    <!-- PASTRY -->
    <section class="menu" id="pastry">
        <h1 class="heading">Pastry <span>popular menu</span></h1>
        <div class="box-container">
            <div class="box">
                <img src="./image/Bakery-Transparent.png" alt="A delightful Cookies">
                <div class="content">
                    <h3>Canvas Cookies</h3>
                    <p>Indulge in a palette of flavors with our signature Canvas Cookies at Caffeinated Canvas.
                        Each bite is a brushstroke of sweetness, handcrafted to perfection for a delightful treat
                        that pairs perfectly with your favorite cup of coffee.</p>
                    <span>49.99 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="7">
                    <button class="add-to-cart" data-id="7" data-category="Pastry" data-image="./image/Bakery-Transparent.png" data-name="Canvas Cookies" data-price="49.99">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-7">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="./image/Cup.png" alt="a delicious cupcake">
                <div class="content">
                    <h3>Canvas Cupcakes</h3>
                    <p>Satisfy your sweet cravings with a touch of artistic flair at Caffeinated Canvas.
                        Our Canvas Cupcakes are more than just desserts; they're miniature masterpieces crafted to delight your taste buds and ignite your imagination.</p>
                    <span>59.99 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="8">
                    <button class="add-to-cart" data-id="8" data-category="Pastry"  data-name="Canvas Cupcakes" data-price="59.99">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-8">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="./image/tarte.png" alt="a delicious tart">
                <div class="content">
                    <h3>Canvas Tarte</h3>
                    <p>Elevate your dessert experience with our delectable Canvas Tart at Caffeinated Canvas.
                        Handcrafted with precision and passion, each bite is a journey of flavor and elegance that's sure to captivate your senses.</p>
                    <span>119.99 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="9">
                    <button class="add-to-cart" data-id="9" data-category="Pastry"  data-name="Canvas Tarte" data-price="119.99">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-9">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="./image/Cheesecake.png" alt="Cheesecake">
                <div class="content">
                    <h3>Canvas Cheesecake</h3>
                    <p>Experience a taste of indulgence with our decadent Canvas Cheesecake at Caffeinated Canvas.
                        Crafted with care and expertise, each slice is a symphony of creamy richness and heavenly flavors that will leave you craving more.</p>
                    <span>120.00 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="10">
                    <button class="add-to-cart" data-id="10" data-category="Pastry"  data-name="Canvas Cheesecake" data-price="120.00">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-10">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="./image/Crepe.png" alt="Crepe">
                <div class="content">
                    <h3>Canvas Crepe</h3>
                    <p>Embark on a journey of culinary delight with our exquisite Canvas Crepe at Caffeinated Canvas.
                        Handcrafted with precision and passion, each crepe is a delicate masterpiece that will transport your taste buds to the streets of Paris.</p>
                    <span>109.99 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="11">
                    <button class="add-to-cart" data-id="11" data-category="Pastry"  data-name="Canvas Crepe" data-price="109.99">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-11">View Nutritional Info</button>
                </div>
            </div>
            <div class="box">
                <img src="./image/Croissant-Transparent.png" alt="Croissant">
                <div class="content">
                    <h3>Canvas Croissant</h3>
                    <p>Immerse yourself in the allure of French pastry with our Artisan Croissant at Caffeinated Canvas.
                        Handcrafted with precision and passion, each bite is a celebration of flaky perfection and timeless elegance.</p>
                    <span>49.99 L.E</span>
                    <input type="number" class="quantity-input" min="1" value="1" data-id="12">
                    <button class="add-to-cart" data-id="12" data-category="Pastry"  data-name="Canvas Croissant" data-price="49.99">Add to Cart</button>
                    <button class="view-nutritional-info" data-target="nutritional-info-popup-12">View Nutritional Info</button>
                </div>
            </div>
        </div>
    </section>

    <!-- REVIEW -->
    <section class="review" id="review">
        <h1 class="heading">reviews <span>what people say</span></h1>
        <div class="swiper review-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide box">
                    <i class="fas fa-quote-left"></i>
                    <i class="fas fa-quote-right"></i>
                    <img src="./image/imageCairo/pic-3.jpg" alt="">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>"Yo, let me tell you about Caffeine Canvas! It's not just a coffee joint; it's a whole vibe,
                        a scene, man! Picture this: you walk in, and BAM! The aroma hits you like
                        a punch of flavor right in the face. It's like you've been transported to coffee heaven, bro!
                        The place is buzzing with energy, just like me on stage! You've got people chatting, laughing,
                        maybe even jamming out to some tunes. And the staff? They're on point, always serving up the freshest brews with a smile.
                        But it's not just about the coffee, nah. They've got these insane pastries, cakes, you name it.
                        And don't even get me started on the vibes! It's like stepping into a whole new world, where every cup tells a story, and every moment is a party."</p>
                    <h3>Mohamed Ramadan</h3>
                    <span>satisfied client</span>
                </div>
                <div class="swiper-slide box">
                    <i class="fas fa-quote-left"></i>
                    <i class="fas fa-quote-right"></i>
                    <img src="./image/imageCairo/pic-4.jpg" alt="">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>"Caffeine Canvas epitomizes sophistication amidst the urban clamor.
                        Upon entering, one is greeted by the subtle perfume of freshly brewed coffee, promising a sensory journey.
                        The ambiance seamlessly blends comfort with refinement, creating a haven for contemplation
                        and discourse. However, it is the coffee itself that truly captivates. Each cup, meticulously
                        prepared, offers a symphony of flavors that tantalize the palate and evoke a sense of indulgence.
                        Caffeine Canvas is more than a café; it's a sanctuary for those with discerning tastes,
                        where every detail is thoughtfully curated to ensure an unparalleled experience."</p>
                    <h3>Ahmed Ezz</h3>
                    <span>satisfied client</span>
                </div>
                <div class="swiper-slide box">
                    <i class="fas fa-quote-left"></i>
                    <i class="fas fa-quote-right"></i>
                    <img src="./image/imageCairo/pic-1.jpg" alt="">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>"In the heart of bustling streets, where whispers of tradition mingle with the modern breeze,
                        there lies a sanctuary known as Caffeine Canvas. Oh, how it beckons with its symphony of aromas,
                        drawing weary souls into its embrace.
                        Amidst the tapestry of flavors, where the rich notes
                        of arabica dance with the sweetness of freshly baked pastries,
                        one finds solace. Here, time slows its hurried pace, allowing moments to be savored like the finest blend.</p>
                    <h3>Fairuz</h3>
                    <span>satisfied client</span>
                </div>
                <div class="swiper-slide box">
                    <i class="fas fa-quote-left"></i>
                    <i class="fas fa-quote-right"></i>
                    <img src="./image/imageCairo/pic-2.jpg" alt="">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>"At Caffeine Canvas, the pulse of the city finds its rhythm in every cup. With each sip,
                        you're transported to a world where every flavor tells a story, and every corner invites you to linger a little longer.
                        Here, amidst the sleek décor and the aroma of freshly ground beans,
                        you find a haven from the chaos outside. It's a place where you can lose yourself in the depths of
                        a perfectly crafted brew,
                        and where every detail is meticulously curated to delight the senses."</p>
                    <h3>Elissa</h3>
                    <span>satisfied client</span>
                </div>
            </div>
        </div>
    </section>

    <!-- BOOK -->
    <section class="book" id="book">
        <h1 class="heading">booking <span>reserve a table</span></h1>
        <form action="ControllerReservation.jsp">
            <input type="text" placeholder="Name" class="box">
            <input type="email" placeholder="Email" class="box">
            <input type="number" placeholder="Number" class="box">
            <textarea name="" placeholder="Message" class="box" id="" cols="30" rows="10"></textarea>
            <input type="submit" value="send message" class="btn">
        </form>
    </section>

    <!-- FOOTER -->
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>our branches</h3>
                <a href="./NewCairoOut.jsp"><i class="fas fa-arrow-right"></i> New Cairo</a>
                <a href="./LondonOut.jsp"><i class="fas fa-arrow-right"></i> London</a>
                <a href="./LosAngelesOut.jsp"><i class="fas fa-arrow-right"></i> Los Angeles</a>
            </div>
            <div class="box">
                <h3>quick links</h3>
                <a href="#home"><i class="fas fa-arrow-right"></i> home</a>
                <a href="#about"><i class="fas fa-arrow-right"></i> about</a>
                <a href="#menu"><i class="fas fa-arrow-right"></i> menu</a>
                <a href="#review"><i class="fas fa-arrow-right"></i> review</a>
            </div>
            <div class="box">
                <h3>contact info</h3>
                <a href="#"><i class="fas fa-phone"></i> +201094027697</a>
                <a href="#"><i class="fas fa-phone"></i> +201149844894</a>
                <a href="#"><i class="fas fa-envelope"></i> coffeeCanva@gmail.com</a>
            </div>
            <div class="box">
                <h3>contact info</h3>
                <a href="https://www.facebook.com/people/Caffeinated-Canvas/61558841841816/"><i class="fab fa-facebook-f"></i> facebook</a>
                <a href="https://www.instagram.com/caffienated__canvas?igsh=MWdseXZ5MXFsbW1mMg=="><i class="fab fa-instagram"></i> instagram</a>
            </div>
        </div>
    </section>

    <!-- Nutritional Info Popups -->
    <div id="nutritional-info-popup-1" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Latte.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-2" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Mocha.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-3" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Cappuchino.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-4" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Hot Chocolate.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-5" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Flat White.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-6" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Caramel Macchiato.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-7" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Cookies.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-8" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/CupCake.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-9" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Tart.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-10" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/CheeseC.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-11" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Crepee.PNG" alt="Nutritional Information">
        </div>
    </div>
    <div id="nutritional-info-popup-12" class="modal">
        <div class="modal-content">
            <span class="close">×</span>
            <img src="./image/Croissant.PNG" alt="Nutritional Information">
        </div>
    </div>

    <!-- SCRIPTS -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script>
    let menu = document.querySelector('#menu-btn');
    let navbar = document.querySelector('.navbar');

    menu.onclick = () => {
        menu.classList.toggle('fa-times');
        navbar.classList.toggle('active');
    };

    window.onscroll = () => {
        menu.classList.remove('fa-times');
        navbar.classList.remove('active');
    };

    document.querySelectorAll('.image-slider img').forEach(images => {
        images.onclick = () => {
            var src = images.getAttribute('src');
            document.querySelector('.main-home-image').src = src;
        };
    });

    var swiper = new Swiper(".review-slider", {
        spaceBetween: 20,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        loop: true,
        grabCursor: true,
        autoplay: {
            delay: 7500,
            disableOnInteraction: false,
        },
        breakpoints: {
            0: { slidesPerView: 1 },
            768: { slidesPerView: 2 }
        },
    });

    function popUp() {
        var popup = document.getElementById("myPopup");
        popup.classList.toggle("show");
    }

    document.addEventListener("DOMContentLoaded", function() {
        // Nutritional Info Modal Handling
        var viewNutritionalInfoButtons = document.querySelectorAll(".view-nutritional-info");
        viewNutritionalInfoButtons.forEach(function(button) {
            button.addEventListener("click", function(event) {
                event.preventDefault();
                var targetId = this.getAttribute("data-target");
                var nutritionalInfoPopup = document.getElementById(targetId);
                if (nutritionalInfoPopup) {
                    nutritionalInfoPopup.style.display = "block";
                } else {
                    console.error("Nutritional popup not found for target:", targetId);
                }
            });
        });

        var closeButtons = document.querySelectorAll(".close");
        closeButtons.forEach(function(button) {
            button.addEventListener("click", function() {
                this.closest(".modal").style.display = "none";
            });
        });

        window.onclick = function(event) {
            if (event.target.classList.contains("modal")) {
                event.target.style.display = "none";
            }
        };

        // Cart Functionality with Robust Error Handling and Debugging
        console.log("Attaching event listeners to add-to-cart buttons...");
        console.log("Found add-to-cart buttons:", document.querySelectorAll('.add-to-cart').length);
        console.log("Found quantity inputs:", document.querySelectorAll('.quantity-input').length);

        // Define context path as a variable for flexibility

        document.querySelectorAll('.add-to-cart').forEach(button => {
            button.addEventListener('click', function(event) {
                event.preventDefault();
                console.log("Add to Cart clicked for button:", button);

                // Explicitly retrieve attributes with standardized image path
                const id = button.getAttribute('data-id');
                const category = button.getAttribute('data-category');
                const name = button.getAttribute('data-name');
                const price = parseFloat(button.getAttribute('data-price')) || 0;
                // Validate price
                if (isNaN(price) || price < 0) {
                    console.error("Invalid price for item:", name, "Price:", price);
                    alert("Error: Invalid price for this item.");
                    return;
                }

                console.log("Button attributes:", { id, category, name, price });

                if (!id || !name) {
                    console.error("Missing required attributes: id or name", { id, name });
                    alert("Error: Item cannot be added due to missing information.");
                    return;
                }

                const quantityInput = document.querySelector(`.quantity-input[data-id="${id}"]`);
                let quantity = 1; // Default quantity
                if (quantityInput) {
                    quantity = parseInt(quantityInput.value);
                    console.log("Quantity input found:", quantityInput.value);
                } else {
                    console.error(`Quantity input not found for data-id: ${id}`);
                    console.log("Available quantity inputs:", Array.from(document.querySelectorAll('.quantity-input')).map(input => input.getAttribute('data-id')));
                    console.warn(`Using default quantity of ${quantity} for item: ${name}`);
                }

                if (isNaN(quantity) || quantity < 1) {
                    alert('Please enter a valid quantity (minimum 1).');
                    console.error("Invalid quantity:", quantity);
                    return;
                }

                try {
                    let cart = [];
                    const cartData = localStorage.getItem('cart');
                    console.log("Raw cart data from localStorage:", cartData);

                    if (cartData) {
                        try {
                            const parsed = JSON.parse(cartData);
                            if (Array.isArray(parsed)) {
                                cart = parsed;
                            } else {
                                console.warn("Cart data is not an array, resetting to empty array:", parsed);
                            }
                        } catch (parseError) {
                            console.error("Failed to parse cart data:", parseError);
                            console.warn("Resetting cart to empty array");
                        }
                    }
                    console.log("Current cart before adding:", cart);

                    let existingItem = cart.find(item => item.id === id);

                    if (existingItem) {
                        existingItem.quantity += quantity;
                        console.log("Updated existing item:", existingItem);
                    } else {
                        cart.push({
                            id: id,
                            category: category,
                            name: name,
                            price: price,
                            quantity: quantity
                        });
                        console.log("Added new item:", { id, category, name, price, quantity });
                    }

                    localStorage.setItem('cart', JSON.stringify(cart));
                    console.log("Cart after saving:", JSON.parse(localStorage.getItem('cart')));
                    alert(`${name} (x${quantity}) has been added to your cart!`);
                } catch (e) {
                    console.error("Error processing cart:", e);
                    alert("Failed to add item to cart. Please check your browser settings or try clearing your browser storage.");
                }
            });
        });
    });
    </script>
</body>
</html>