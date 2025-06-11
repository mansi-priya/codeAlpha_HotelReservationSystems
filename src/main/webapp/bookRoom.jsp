<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String roomNo = request.getParameter("roomNo");
    String type = request.getParameter("type");
    String price = request.getParameter("price");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Room Booking - Hotel Platinum Pavilion</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f7fc;
      margin: 0;
      padding: 0;
    }

    h1 {
      background-color: #4b0082;
      color: white;
      padding: 20px;
      text-align: center;
    }

    .form-container {
      max-width: 800px;
      background-color: white;
      margin: 30px auto;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }

    .form-group {
      margin-bottom: 15px;
    }

    label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
    }

    input, select {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
    }

    .submit-btn {
      background-color: #4b0082;
      color: white;
      border: none;
      padding: 12px 20px;
      font-size: 16px;
      border-radius: 25px;
      cursor: pointer;
      margin-top: 20px;
    }

    .submit-btn:hover {
      background-color: #6a5acd;
    }

    .room-info {
      background-color: #f0e6ff;
      padding: 15px;
      border-radius: 8px;
      margin-bottom: 20px;
    }

    .room-info p {
      margin: 5px 0;
      font-weight: bold;
    }

    .section-title {
      margin-top: 30px;
      font-size: 20px;
      color: #4b0082;
      border-bottom: 2px solid #4b0082;
      padding-bottom: 5px;
    }

    .home-link {
      display: inline-block;
      margin-top: 10px;
      text-decoration: none;
      color: #4b0082;
    }
  </style>
</head>
<body>

<h1>Room Booking Form</h1>

<div class="form-container">

  <div class="room-info">
    <p>Room No: <%= roomNo != null ? roomNo : "N/A" %></p>
    <p>Room Type: <%= type != null ? type : "N/A" %></p>
    <p>Rent per Night: ₹<%= price != null ? price : "N/A" %></p>
  </div>

  <form action="receipt.jsp" method="post">
    <!-- Hidden fields to pass room info -->
    <input type="hidden" name="roomNo" value="<%= roomNo %>">
    <input type="hidden" name="roomType" value="<%= type %>">
    <input type="hidden" name="roomPrice" value="<%= price %>">

    <div class="section-title">Guest Details</div>

    <div class="form-group">
      <label for="name">Full Name:</label>
      <input type="text" name="name" required>
    </div>

    <div class="form-group">
      <label for="age">Age:</label>
      <input type="number" name="age" min="18" required>
    </div>

    <div class="form-group">
      <label for="email">Email Address:</label>
      <input type="email" name="email" required>
    </div>

    <div class="form-group">
      <label for="phone">Phone Number:</label>
      <input type="text" name="phone" pattern="[0-9]{10}" required>
    </div>

    <div class="form-group">
      <label for="checkin">Check-In Date:</label>
      <input type="date" name="checkin" required>
    </div>

    <div class="form-group">
      <label for="checkout">Check-Out Date:</label>
      <input type="date" name="checkout" required>
    </div>

    <div class="section-title">Payment Details</div>

    <div class="form-group">
      <label for="paymentMethod">Payment Method:</label>
      <select name="paymentMethod" required>
        <option value="">-- Select Payment Method --</option>
        <option value="UPI">UPI</option>
        <option value="Card">Credit/Debit Card</option>
        <option value="NetBanking">Net Banking</option>
      </select>
    </div>

    <div class="form-group">
      <label for="transactionId">Transaction ID / UPI Ref / Card No. (Last 4 Digits):</label>
      <input type="text" name="transactionId" required>
    </div>

    <button class="submit-btn" type="submit">Confirm Booking</button>
  </form>

  <a href="index.jsp" class="home-link">← Back to Home</a>
</div>

</body>
</html>
