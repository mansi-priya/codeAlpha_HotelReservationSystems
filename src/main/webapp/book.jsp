<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Room</title>
    <style>
        body {
            background: linear-gradient(to right, #6dd5ed, #2193b0);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.3);
            margin: 80px auto;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            color: #555;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        input[type="submit"] {
            margin-top: 25px;
            background-color: #2193b0;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 8px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #14778c;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Room Reservation Form</h2>
        <form action="BookingServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>

            <label for="checkin">Check-In:</label>
            <input type="date" name="checkin" id="checkin" required>

            <label for="checkout">Check-Out:</label>
            <input type="date" name="checkout" id="checkout" required>

            <label for="room_type">Room Type:</label>
            <select name="room_type" id="room_type">
                <option>Single</option>
                <option>Double</option>
                <option>Suite</option>
            </select>

            <input type="submit" value="Reserve">
        </form>
    </div>

</body>
</html> 