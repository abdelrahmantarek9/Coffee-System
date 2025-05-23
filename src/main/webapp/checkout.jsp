<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            padding: 20px;
            max-width: 1200px;
            margin: 50px auto;
            background-color: transparent;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .checkout-form {
            flex: 1;
            padding: 20px;
            border-right: 1px solid transparent;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .checkout-form h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .checkout-form label {
            font-weight: bold;
        }

        .checkout-form input[type="text"],
        .checkout-form input[type="tel"],
        .checkout-form input[type="email"],
        .checkout-form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .checkout-form button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .checkout-summary {
            flex: 1;
            padding: 10px;
            background-color: #f8f9fa;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin: 20px;
            height: 150px;
            margin-top: 100px;
        }

        .checkout-summary h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        .summary-item {
            margin-bottom: 20px;
        }

        .summary-item strong {
            font-weight: bold;
        }

        #visaDetails {
            display: none;
            margin-top: 10px;
        }

        #visaDetails label {
            display: block;
            margin-bottom: 5px;
        }

        .checkout-form button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        .checkout-form button:hover {
            opacity:1;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="checkout-form">
            <h2>Checkout Form</h2>
            <form id="checkoutForm" action="process_checkout.php" method="POST">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required /><br />
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required /><br />
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required /><br />
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required /><br />
                <input
            type="hidden"
            id="totalPriceInput"
            name="totalPrice"
            value=""
        />
                <label for="paymentMethod">Payment Method:</label>
                <select id="paymentMethod" name="paymentMethod" required>
                    <option value="">Select Payment Method</option>
                    <option value="visa">Visa</option>
                    <option value="Cash">Cash On Delivery</option>
                </select><br />
                <div id="visaDetails">
                    <label for="cardNumber">Card Number:</label>
                    <input type="text" id="cardNumber" name="cardNumber" /><br />
                    <label for="cvv">CVV:</label>
                    <input type="text" id="cvv" name="cvv" /><br />
                    <label for="expiration">Expiration Date (MM/YY):</label>
                    <input type="text" id="expiration" name="expiration" /><br />
                </div>

                <button type="submit">Submit</button>
            </form>
        </div>

        <div class="checkout-summary">
            <h2>Order Summary</h2>
            <div class="summary-item">
                <strong id="totalPrice">Total Price: $0.00</strong>
            </div>
            <div class="summary-item">
                
            </div>
        </div>
    </div>

    <script>
    document
        .getElementById("checkoutForm")
        .addEventListener("submit", function (event) {

        let totalPrice = sessionStorage.getItem("totalPrice");
        let productNames = sessionStorage.getItem("productNames");

        document.getElementById("totalPriceInput").value = totalPrice;
        document.getElementById("productNamesInput").value = productNames;

        
        this.submit();
        });

    
    let totalPrice = sessionStorage.getItem("totalPrice") || "0.00";
    let productNames = sessionStorage.getItem("productNames") || "None";
    document.getElementById(
        "totalPrice"
    ).textContent = `Total Price: ${totalPrice}`;
    document.getElementById(
        "productNames"
    ).textContent = `Products: ${productNames}`;
    
        document.getElementById("paymentMethod").addEventListener("change", function() {
            var visaDetails = document.getElementById("visaDetails");
            if (this.value === "visa") {
                visaDetails.style.display = "block";
            } else {
                visaDetails.style.display = "none";
            }
        });
    </script>
</body>
</html>
