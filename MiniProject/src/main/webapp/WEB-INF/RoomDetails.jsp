<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System - Room Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://kit.fontawesome.com/69ea77cb87.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        #Header{
    background-color:rgb(18, 173, 204);
    padding: 30px; 
    
}
#Header .head{
    display: flex;    
    justify-content: flex-start;
    flex-direction: row;
   
}
#Header .head h2{
    margin-left: 50px;
    color: rgb(255, 255, 255);
}
#Header .head a{
    margin-top: 8px;
    width: 20px;
}
#Header .head a>i{
    color: white;
  font-size: 50px;
  margin-bottom: 20px;
   
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
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color:rgb(18, 173, 204);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2, h3 {
            color: #333;
            text-align: center;
        }
        input[type="text"], select, button {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }
        button {
            background-color:  #45a049;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #148190;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="home.jsp">Home</a>
        <a href="RoomDetails.jsp">Rooms</a>
        <a href="CustomerDetails.jsp">customer</a>
        <a href="index.jsp">booking</a>
    </div>
    <section id="Header">
        <div class="head">
            <a href="home.jsp"><i class="fa-solid fa-angle-left"></i></a>
            <h2>ROOM DETAILS  </h2>
        </div>
    </section>

    <div class="container">
        <form action="RoomDetails" name="myForm" onsubmit="return validRoomNumber()"> 
        <img src="images/room.jpg" alt="Hotel" style="display: block; margin: 0 auto; width: 600px; border-radius: 10px;">
        <h1>Hotel Management System</h1>
        <h2>Room Detail</h2>
        <form id="roomForm">
            
            <table>
                <tr>
                    <th>Room Number</th>
                    <td><input type="text" id="roomNumber" name="roomNumber"></td>
                </tr>
                <tr>
                    <th>Room Type</th>
                    <td>
                        <select id="roomType" name="roomType">
                            <option value="Single">Single</option>
                            <option value="Double">Double</option>
                            <option value="Suite">Suite</option>
                        </select>
                    </td>
                </tr>
            </table>
            
            <button type="button" onclick="saveRoom()">Save</button>
        </form>
    </form>
        
    </div>

    <script>
        function saveRoom() {
            // Get room form values
            var roomNumber = document.getElementById('roomNumber').value;
            var roomType = document.getElementById('roomType').value;

            // Validation (you can add more validation as needed)
            var isValid = true;
            if (roomNumber.trim() === '') {
                isValid = false;
                document.getElementById('roomNumber').classList.add('error');
            } else {
                document.getElementById('roomNumber').classList.remove('error');
            }

            // If all fields are valid, proceed with saving
            if (isValid) {
                // Here, you can proceed with saving the room details to your database or perform any other action
                alert('Room details saved successfully!');
                // For demonstration, you can reset the form after saving
                document.getElementById('roomForm').reset();
            } else {
                alert('Please fill in all required fields.');
            }
        }
    </script>
</body>
</html>
