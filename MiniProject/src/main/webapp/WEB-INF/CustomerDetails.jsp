<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details FORM </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://kit.fontawesome.com/69ea77cb87.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:whitesmoke;
            margin:0px;
            padding:0px;
        
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
        .container {
            max-width: 500px;
            margin: 50px auto;
            background-color:rgb(34, 163, 188);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2, h3 {
            color: #333;
            text-align: center;
        }
        input[type="text"], input[type="tel"], input[type="email"], button {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: rgb(34, 163, 188);
        }
        .error {
            color: red;
        }
        .logo {
            display: block;
            margin: 0 auto 20px;
            width: 200px;
            border-radius: 10px;
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
            <h2>CUSTOMER DETAILS  </h2>
        </div>
    </section>


    <div class="container">
        <img src="images/customer.jpg" alt="Hotel Logo" class="logo" width="900" height="200">
        <h1>Hotel Management System</h1>
        <h2>Customer Details</h2>
        <form id="customerForm">
            <label for="id">ID</label>
            <input type="text" id="id" name="id" required>
            
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
            
            <label for="mobile">Mobile</label>
            <input type="tel" id="mobile" name="mobile" required>
            
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            
            <button type="button" onclick="saveCustomer()">Save</button>
        </form>
    </div>

    <script>
        function saveCustomer() {
            var id = document.getElementById('id').value;
            var name = document.getElementById('name').value;
            var mobile = document.getElementById('mobile').value;
            var email = document.getElementById('email').value;

            var isValid = true;
            if (id.trim() === '') {
                isValid = false;
                document.getElementById('id').classList.add('error');
            } else {
                document.getElementById('id').classList.remove('error');
            }
            if (name.trim() === '') {
                isValid = false;
                document.getElementById('name').classList.add('error');
            } else {
                document.getElementById('name').classList.remove('error');
            }
            if (mobile.trim() === '') {
                isValid = false;
                document.getElementById('mobile').classList.add('error');
            } else {
                document.getElementById('mobile').classList.remove('error');
            }
            if (email.trim() === '') {
                isValid = false;
                document.getElementById('email').classList.add('error');
            } else {
                document.getElementById('email').classList.remove('error');
            }

            if (isValid) {
                alert('Customer details saved successfully!');
                document.getElementById('customerForm').reset();
            } else {
                alert('Please fill in all required fields.');
            }
        }
    </script>
</body>
</html>
