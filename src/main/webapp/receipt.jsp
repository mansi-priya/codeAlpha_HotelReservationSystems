<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String email = request.getParameter("email");
    String checkin = request.getParameter("checkin");
    String checkout = request.getParameter("checkout");
    String payment = request.getParameter("payment");

    String roomNo = request.getParameter("roomNo");
    String type = request.getParameter("type");
    String price = request.getParameter("price");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Receipt</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7;
            padding: 30px;
        }
        .receipt {
            background-color: white;
            padding: 25px;
            max-width: 600px;
            margin: auto;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
        }
        h2 {
            text-align: center;
            color: #4b0082;
            margin-bottom: 20px;
        }
        .details p {
            font-size: 16px;
            margin: 8px 0;
        }
        .btn {
            display: block;
            margin: 20px auto;
            background: #4b0082;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            border-radius: 10px;
        }
        .btn:hover {
            background-color: #5e2da6;
        }
    </style>
</head>
<body>

<div class="receipt">
    <h2>Booking Receipt</h2>
    <div class="details">
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Age:</strong> <%= age %></p>
        <p><strong>Email:</strong> <%= email %></p>
        <p><strong>Room Number:</strong> <%= roomNo %></p>
        <p><strong>Room Type:</strong> <%= type %></p>
        <p><strong>Rent per Night:</strong> ₹<%= price %></p>
        <p><strong>Check-in Date:</strong> <%= checkin %></p>
        <p><strong>Check-out Date:</strong> <%= checkout %></p>
        <p><strong>Payment Method:</strong> <%= payment %></p>
    </div>

    <a href="index.html" class="btn">Back to Home</a>
</div>

</body>
</html>
