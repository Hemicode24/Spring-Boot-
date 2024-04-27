<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .header {
            background-color: rgb(18, 173, 204);
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .hero-section {
            text-align: center;
            padding: 100px 0;
            background-image: url('hotel_hero.jpg');
            background-size: cover;
            color: rgb(18, 173, 204);
        }
        .hero-content {
            max-width: 600px;
            margin: 0 auto;
        }
        .hero-content h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }
        .hero-content p {
            font-size: 18px;
            margin-bottom: 30px;
        }
        .cta-button {
            background-color:rgb(18, 173, 204);
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .cta-button:hover {
            background-color: #45a049;
        }
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 50px;
        }
        .feature {
            text-align: center;
            width: 300px;
            margin-bottom: 30px;
            padding: 20px;
            background-color:rgb(18, 173, 204);
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .feature h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 10px;
        }
        .feature p {
            color: #666;
            font-size: 16px;
        }
        .footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>

    
    <div class="navbar">
        <a href="home.html">Home</a>
        <a href="RoomDetails.html">Rooms</a>
        <a href="CustomerDetails.html">customer</a>
        <a href="index.html">booking</a>
    </div>
    <div class="header">
        <h1>Hotel Management System</h1>
    </div>
    <div class="hero-section">
        <div class="container">
            <div class="hero-content">
                <h1>Welcome to Our Hotel</h1>
                <p>Experience comfort and luxury at its finest. Book your stay with us today!</p>
                <a href="#" class="cta-button">Book Now</a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="features">
            <div class="feature">
                <img src="images/Modern Rooms.jpg" alt="Modern Rooms" style="width: 200px; border-radius: 50%;">
                <h2>Modern Rooms</h2>
                <p>Discover our beautifully designed modern rooms equipped with all amenities.</p>
            </div>
            <div class="feature">
                <img src="images/delicious1.jpg" alt="Delicious Cuisine" style="width: 200px; border-radius: 50%;">
                <h2>Delicious Cuisine</h2>
                <p>Indulge in a variety of delicious dishes crafted by our talented chefs.</p>
            </div>
            <div class="feature">
                <img src="images/Relaxing Spa.jpg" alt="Relaxing Spa" style="width: 200px; border-radius: 50%;">
                <h2>Relaxing Spa</h2>
                <p>Pamper yourself with rejuvenating spa treatments to unwind and relax.</p>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Hotel Management System. All rights reserved.</p>
    </div>
</body>
</html>
