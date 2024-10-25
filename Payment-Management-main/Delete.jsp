<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Delete Your Payment Details</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://tse1.mm.bing.net/th?id=OIP.M6ryo-8RtyK7faWugYTxiAHaE8&pid=Api&P=0&h=220');
            background-size: cover;
            background-position: center;
            color: #fff;
        }

        h1 {
            text-align: center;
            padding: 20px;
            color: #fff;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .right-half {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 40px;
            border-radius: 15px;
            border: 2px solid #fff;
            display: flex;
            justify-content: space-between;
        }

        form {
            display: flex;
            flex-direction: column;
            width: 45%; /* Adjust width for proper alignment */
            color: #fff;
        }

        label,
        input,
        select {
            margin-bottom: 15px;
            color: #fff;
        }

        input,
        select {
            padding: 10px;
            border: 1px solid #fff;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
            width: 100%; /* Set input fields width to 100% */
        }

        .btncls {
            text-align: center;
        }

        button {
            padding: 12px 24px;
            background-color: #fff;
            color: #333;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #ccc;
        }
    </style>
</head>

<body>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String email = request.getParameter("email");  
	String phone = request.getParameter("phone");
	String section = request.getParameter("section");
	String method = request.getParameter("method");
	String amount = request.getParameter("amount");
%>
	
    <div class="container">
        <div class="right-half">
            <form action="delete" method="post">
                <div class="column">
				<center><h1><u>Delete Payment Details</u></h1></center>
                    <label for="id">ID</label>
                    <input type="text" id="id" name="id" required value="<%= id %>" readonly>

                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required value="<%= name %>" readonly>

                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required value="<%= email %>" readonly>
                </div>
                <div class="column">
                    <label for="phone">Phone Number</label>
                    <input type="text" id="phone" name="phone" required value="<%= phone %>" readonly>

                    <label for="section">Section</label>
                    <select id="section" name="section" readonly>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                    </select>

                    <label for="method">Payment Method</label>
                    <select id="method" name="method" required readonly>
                        <option value="Card Payment">Card Payment</option>
                        <option value="Paypal">Paypal</option>
                        <option value="Apple Pay">Apple Pay</option>
                    </select>

                    <label for="amount">Payment Amount</label>
                    <input type="text" id="amount" name="amount" value="<%= amount %>" readonly>
                </div>
                <div class="btncls">
                    <button type="submit">Delete</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>