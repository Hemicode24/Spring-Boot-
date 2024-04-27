<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOTEL MANAGEMENT SYSTEM </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://kit.fontawesome.com/69ea77cb87.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    

    <div class="navbar">
        <a href="home.jsp">Home</a>
        <a href="RoomDetails.jsp">Rooms</a>
        <a href="CustomerDetails.jsp">customer</a>
        <a href="index.jsp">booking</a>
    </div>
    <!--section 1-->
    
    <section id="Header">
        <div class="head">
            <a href="home.jsp"><i class="fa-solid fa-angle-left"></i></a>
            <h2>Hotel Booking  </h2>
        </div>
    </section>

    <!--section 2-->

    <form action="addUser">
    <section id="Main">
        <div class="mai">
            
            <div class="mai1">
                <select id="additionalOptionsContainer"></select>
            </div>
            
            <div class="mai3">

                <!-- <div class="mai2">
                    <a href=""><img src="./images/location.png" alt=""></a>
                </div>  -->
                <div class="location-icon">
                    <i class="fa-solid fa-location-dot"></i>
                </div>
                

                <div class="dropdown">
                    <select id="mainSelect">
                        <option >Location</option>
                        <option value="Velachery" name="Velachery"> Velachery </option>
                        <option value="Koyambedu" name="Koyambedu"> Koyambedu </option >
                        <option value="T.nagar" name="T.nagar"> T.Nagar </option >
                        <option value="Tambaram " name="Tambaram "> Tambaram </option >  
                    </select>
                </div>
            </div> 
        </div>  
            
        <div class="clock">
            <div class="clock1">
                <label for="startTime">Check-In Date</label><br>
                <input type="datetime-local" id="startTime" name="startTime" required>
            </div>

            <div class="clock2">
                <img src="./images/right arrow.png" alt="">
            </div>

            <div class="clock1">
                <label for="endTime">Check-Out Date</label><br>
                <input type="datetime-local" id="endTime" name="endTime" required > 
            </div>
        </div> 
     
        <div class="time">
            <p>Total Time Duration <br> <span id="timeDifference" name="timeDifference"></span></p>
        </div>

    </section>

    <!--section 3-->

    <section id="main1">
        <div class="personal">

            <div class="personal1">
                <h1>Payment Summary</h1>
            </div>
     
            <div class="personal2">
                <div>
                    <label for="amountInput">Taxable Amount</label>
                    <input type="text" id="amountInput" name="parkingFee" readonly>
                </div>
                <div>
                    <label for="amountInput1">CGST __________    </label>
                    <input type="text" id="amountInput1" name="ProcessingFee" readonly>
                </div>
                <hr>
                <div>
                    <label for="amountInput1">Total Amount</label>
                    <input type="text" id="amountInput2" name="totalAmount" readonly>
                </div>  
            </div>
        </div>
    </section>

    <!--section 4 -->

     <!-- container of personal details -->
     <div class="Details">
        <p><h1>Customer Details</h1></p>
        <div class="container3">
            <p>Tap to customer details</p>
           <a href="./CustomerDetails.jsp">
             <button class="btn" id="PersonalLink" onclick="myOnclikFnparking()" type="submit">+</button></a>
        </div>

    </div>
    </form>
<!--    
    <section id="main3">

        <div class="per">
            <a href="CustomerDetails.jsp"><h1 style="color: black; text-decoration: none; ">Customer Details</h1></a>
        </div> 
        <div id="tap" class="tapdetils">
            <div  id="tap1" class="tapdetils1">
                <p >Tap to Customer details</p>
            </div>
            
                <button id="editButton"><img src="./images/plus button.png" alt=""></button>
            <div id="inputDiv" class="hidden">
                <input type="text" id="nameInput" placeholder="Name" name="name" required>
                <input type="text" id="emailInput" placeholder="Email"  name="email">
                <input type="number" id="locationInput" placeholder="Contact" name="contact" required>
                <button id="saveButton">Save</button>
            </div>
            <div id="detailsDiv" class="hidden">
                <div>
                    <p><strong></strong> <span id="name"></span></p>                        <p><strong></strong> <span id="email"></span></p>
                    <p><strong></strong> <span id="location"></span></p>
                </div>
                <div>
                    <button id="editDetailsButton" class="hidden">Edit</button>
                </div>       
            </div>
        </div> 
    </section> -->

    <!--section 5-->

     <!-- container of Room details -->
     <form action="./RoomDetails.jsp">
        <div class="Details">
            <p><h1>Room Details</h1></p>
            <div class="container3">
                <p>Tap to Room details</p>
               <a href="./RoomDetails.jsp">
               <button class="btn" id="VehicleLink" onclick="myOnclikFn()">+</button></a>
            </div>

        </div>
        </form>


    
   
    <!-- <section id="main4">
        
        <div class="per1">
            <a href="RoomDetails.jsp"><h1 style="color: black; text-decoration: none; ">Room Details</h1></a>
            
        </div> 
        <div id="tap2" class="tapdetils2">
            <div  id="tap3" class="tapdetils">
                <p >Tap to Room details</p>
            </div>
                <button id="editButton1"><img src="./images/plus button.png" alt=""></button>
            <div id="inputDiv1" class="hidden1">
                <input type="text" id="nameInput1" placeholder="RoomNumber" name="vehicleNumber" required>
                <input type="text" id="emailInput1" placeholder="RoomModel" name="vehicleModel" required>
                <button id="saveButton1">Save</button>
            </div>
            <div id="detailsDiv1" class="hidden1">
                <div>
                    <p><strong></strong> <span id="name1"></span></p>
                    <p><strong></strong> <span id="email1"></span></p>
                </div>
            <div>
                <button id="editDetailsButton1" class="hidden1">Edit</button>
            </div>   
        </div> 
        
    </section> -->

    <!--section 6-->

    <section id="main5">
        <div class="per2">
            <h1>Payment Details</h1>
        </div> 
        <div id="tap4" class="tapdetils3">
            <div  id="tap5" class="tapdetils">
                <p >Tap to Payment details</p>
            </div>
                <button id="editButton2"><img src="./images/plus butt" alt=""></button>
            <div id="inputDiv2" class="hidden2">
                  
                <select name="" id="check">
                    <option value="google pay" name="googlePay" >google pay</option>
                    <option value="Phone pe" name="phonePe" >phone pe</option>
                    <option value="Amazon pay" name="amazonPay" >Amazon Pay</option>
                    <option value="UPI Pay  " name="UPI ID" >UPI</option>
                </select>
                    <button id="saveButton2">Save</button>
            </div>
            <div id="detailsDiv2" class="hidden2">
                <div>
                    <p><strong></strong> <span id="name2"></span></p>    
                </div>
                <div>
                    <button id="editDetailsButton2" class="hidden2">Edit</button>
                </div>     
            </div> 
        </div> 
    </section>

    <!--section 7-->

    <section id="main6">

        <div class="head66">
            <div class="head6">
                <h1>Cancellation Policy</h1>
            </div>
            <div class="head61">
                <p>Cancel more than 24 hrs  before the booking starts and get a 
                    full refund less the transaction fee. For more details click 
                    through to our cancellation policies
                </p>
            </div>
        </div>
        
        <div class="head64">
            <div class="head62">
                <p id="total" ></p>
            </div>
            <div class="head63">
                <button type="submit" id="buttonclick">Book Now </button>
            </div>
        </div>
    
    </section>
</form>

        <script src="script.js" ></script>
</body>
</html>