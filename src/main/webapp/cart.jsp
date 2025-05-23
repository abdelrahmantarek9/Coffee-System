<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart - Caffeinated Canvas</title>
    <link rel="icon" href="./image/imageCairo/rol.png" type="image/icon type">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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

        .cart-container {
            padding: 10rem 9%;
        }

        .cart-container h1 {
            font-size: 4rem;
            color: var(--main-color);
            text-align: center;
            margin-bottom: 2rem;
        }

        .cart-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 2rem;
        }

        .cart-table th, .cart-table td {
            padding: 1.5rem;
            text-align: left;
            font-size: 1.6rem;
            color: var(--main-color);
            border-bottom: 0.1rem solid #ccc;
            vertical-align: middle;
            white-space: nowrap;
            overflow: visible;
        }

        .cart-table th {
            font-weight: 600;
        }

        .cart-table img {
            height: 6rem;
            width: auto;
        }

        .cart-table .quantity-input {
            width: 60px;
            padding: 5px;
            border: 1px solid #000;
            border-radius: 5px;
        }

        .cart-table .remove-btn {
            color: #d32f2f;
            font-size: 1.4rem;
            cursor: pointer;
        }

        .cart-table .remove-btn:hover {
            text-decoration: underline;
        }

        .cart-table .price-cell, .cart-table .total-cell {
            color: var(--main-color);
            font-size: 1.6rem;
            font-weight: 400;
        }

        .cart-total {
            font-size: 2.2rem;
            color: var(--main-color);
            text-align: right;
            margin-bottom: 2rem;
            font-weight: bold;
        }

        @media (max-width: 768px) {
            html {
                font-size: 55%;
            }
            .cart-container {
                padding: 8rem 3%;
            }
            .cart-table th, .cart-table td {
                font-size: 1.4rem;
                padding: 1rem;
            }
        }

        @media (max-width: 450px) {
            html {
                font-size: 50%;
            }
            .cart-table th, .cart-table td {
                font-size: 1.2rem;
                padding: 0.8rem;
            }
            .cart-table img {
                height: 4rem;
            }
        }
    </style>
</head>
<body>
    <script>
    // Initialize cart with test data if empty
    function initializeCart() {
        if (!localStorage.getItem('cart')) {
            const testCart = [
                {
                    id: 1,
                    name: "Decadent Mocha",
                    category: "Drink",
                    price: 99.99,
                    quantity: 1
                },
                {
                    id: 2,
                    name: "Caffeinated Canvas Signature Latte",
                    category: "Drink",
                    price: 89.99,
                    quantity: 1
                }
            ];
            try {
                localStorage.setItem('cart', JSON.stringify(testCart));
                console.log("Cart initialized with test data");
            } catch (e) {
                console.error("Failed to initialize cart:", e);
            }
        }
    }

    // Display cart contents
    function displayCart() {
        initializeCart(); // Ensure cart exists
        
        let cart = [];
        try {
            const cartData = localStorage.getItem('cart');
            cart = cartData ? JSON.parse(cartData) : [];
            if (!Array.isArray(cart)) cart = [cart]; // Handle single item case
        } catch (e) {
            console.error("Error loading cart:", e);
            cart = [];
        }

        const cartItems = document.getElementById('cart-items');
        const cartTotal = document.getElementById('cart-total');
        if (!cartItems || !cartTotal) {
            console.error("Cart items or total element not found");
            return;
        }
        cartItems.innerHTML = '';

        let total = 0;
        if (cart.length === 0) {
            cartItems.innerHTML = '<tr><td colspan="7" style="text-align: center;">Your cart is empty.</td></tr>';
            cartTotal.textContent = 'Total: 0.00 L.E';
            return;
        }

        cart.forEach(item => {
            const price = parseFloat(item.price) || 0;
            const quantity = parseInt(item.quantity) || 1;
            const itemTotal = price * quantity;
            total += itemTotal;

            const row = document.createElement('tr');
            
            // Image cell
            const imageCell = document.createElement('td');
            imageCell.textContent = 'N/A';
            row.appendChild(imageCell);

            // Product name cell
            const nameCell = document.createElement('td');
            nameCell.textContent = item.name || 'Unknown Product';
            row.appendChild(nameCell);

            // Category cell
            const categoryCell = document.createElement('td');
            categoryCell.textContent = item.category || 'Unknown Category';
            row.appendChild(categoryCell);

            // Price cell
            const priceCell = document.createElement('td');
            priceCell.className = 'price-cell';
            priceCell.textContent = price.toFixed(2) + ' L.E';
            row.appendChild(priceCell);

            // Quantity cell
            const quantityCell = document.createElement('td');
            const quantityInput = document.createElement('input');
            quantityInput.type = 'number';
            quantityInput.className = 'quantity-input';
            quantityInput.min = '1';
            quantityInput.value = quantity;
            quantityInput.setAttribute('data-id', item.id);
            quantityInput.addEventListener('change', () => updateQuantity(item.id, quantityInput.value));
            quantityCell.appendChild(quantityInput);
            row.appendChild(quantityCell);

            // Total cell
            const totalCell = document.createElement('td');
            totalCell.className = 'total-cell';
            totalCell.textContent = itemTotal.toFixed(2) + ' L.E';
            row.appendChild(totalCell);

            // Action cell
            const actionCell = document.createElement('td');
            const removeLink = document.createElement('a');
            removeLink.className = 'remove-btn';
            removeLink.textContent = 'Remove';
            removeLink.addEventListener('click', () => removeItem(item.id));
            actionCell.appendChild(removeLink);
            row.appendChild(actionCell);

            cartItems.appendChild(row);
        });

        // Update grand total
        cartTotal.textContent = `Total: ${total.toFixed(2)} L.E`;
        console.log("Total updated to:", total.toFixed(2) + " L.E");
    }

    // Update item quantity
    function updateQuantity(id, quantity) {
        let cart = [];
        try {
            const cartData = localStorage.getItem('cart');
            cart = cartData ? JSON.parse(cartData) : [];
            if (!Array.isArray(cart)) cart = [cart];
        } catch (e) {
            console.error("Error loading cart:", e);
            return;
        }

        quantity = parseInt(quantity);
        if (isNaN(quantity)) return;

        const item = cart.find(item => item.id === id);
        if (item) {
            item.quantity = quantity > 0 ? quantity : 1;
            try {
                localStorage.setItem('cart', JSON.stringify(cart));
                displayCart();
            } catch (e) {
                console.error("Error saving cart:", e);
            }
        }
    }

    // Remove item from cart
    function removeItem(id) {
        let cart = [];
        try {
            const cartData = localStorage.getItem('cart');
            cart = cartData ? JSON.parse(cartData) : [];
            if (!Array.isArray(cart)) cart = [cart];
        } catch (e) {
            console.error("Error loading cart:", e);
            return;
        }

        cart = cart.filter(item => item.id !== id);
        localStorage.setItem('cart', JSON.stringify(cart));
        displayCart();
    }

    // Clear entire cart
    function clearCart() {
        localStorage.removeItem('cart');
        displayCart();
    }

    // Initialize when page loads
    document.addEventListener('DOMContentLoaded', displayCart);
    </script>
    <header class="header">
        <a href="./NewCairoOut.jsp" class="logo">Caffeinated Canvas <i class="fas fa-mug-hot"></i></a>
        <a href="./NewCairoOut.jsp" class="btn">Continue Shopping</a>
    </header>

    <div class="cart-container">
        <h1>Your Shopping Cart</h1>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Product</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="cart-items">
                <!-- Cart items will be inserted here by JavaScript -->
            </tbody>
        </table>
        <div class="cart-total" id="cart-total">Total: 0.00 L.E</div>
        <button class="btn" onclick="clearCart()">Clear Cart</button>
    </div>


</body>
</html>