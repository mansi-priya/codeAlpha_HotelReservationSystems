<!DOCTYPE html>
<html>
<head>
    <title>Cancel Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f3f7;
            padding: 30px;
        }
        form {
            background: #fff;
            padding: 20px;
            border-radius: 15px;
            width: 400px;
            margin: auto;
            box-shadow: 0 0 10px #ccc;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        .btn {
            background-color: #4b0082;
            color: white;
            border: none;
            margin-top: 15px;
            padding: 10px;
            border-radius: 10px;
            cursor: pointer;
            width: 100%;
        }
        .btn:hover {
            background-color: #5f2da8;
        }
        .home-btn {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #4b0082;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2 style="text-align:center;color:#4b0082;">Cancel Your Booking</h2>
    <form action="cancelBooking" method="post">
        <label for="bookingId">Booking ID:</label>
        <input type="text" name="bookingId" id="bookingId" required>

        <label for="email">Email used for booking:</label>
        <input type="email" name="email" id="email" required>

        <button type="submit" class="btn">Cancel Booking</button>
    </form>

    <a href="index.html" class="home-btn">Back to Home</a>
</body>
</html>
