<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Out Page</title>
    <script src="https://kit.fontawesome.com/69ea77cb87.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <!--section 1-->
    
    <section id="Header">
        <div class="head">
            <a href=""><i class="fa-solid fa-angle-left"></i></a>
            <h2>CheckOut</h2>
        </div>
    </section>

    <!--section 2-->

    <section id="Main">
        <div class="mai">
            
            <div class="mai1">
                <select id="additionalOptionsContainer"></select>
            </div>
            
            <div class="mai3">

                <div class="mai2">
                    <a href=""><img src="./images/location.png" alt=""></a>
                </div> 

                <div class="dropdown">
                    <select id="mainSelect">
                        <option >Select a Area</option>
                        <option value="Velachery" name="Velachery"> Velachery </option>
                        <option value="Koyambedu" name="Koyambedu"> Koyambedu </option >
                        <option value="Ramapuram" name="Ramapuram"> Ramapuram </option >
                        <option value="T.nagar" name="T.nagar"> T.nagar </option >
                        <option value="Tambaram " name="Tambaram "> Tambaram </option >  
                    </select>
                </div>
            </div> 
        </div>  
            
        <div class="clock">
            <div class="clock1">
                <label for="startTime">Parking From</label><br>
                <input type="datetime-local" id="startTime" name="startTime" required>
            </div>

            <div class="clock2">
                <img src="./images/right arrow.png" alt="">
            </div>

            <div class="clock1">
                <label for="endTime">Parking Until</label><br>
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
                    <label for="amountInput">Parking Fee</label>
                    <input type="text" id="amountInput" name="parkingFee" readonly>
                </div>
                <div>
                    <label for="amountInput1">processing Fee</label>
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
   
    <section id="main3">

        <div class="per">
            <h1>Personal Details</h1>
        </div> 
        <div id="tap" class="tapdetils">
            <div  id="tap1" class="tapdetils1">
                <p >Tap to Personal details</p>
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
    </section>

    <!--section 5-->

    <section id="main4">
        <div class="per1">
            <h1>Vehicle Details</h1>
        </div> 
        <div id="tap2" class="tapdetils2">
            <div  id="tap3" class="tapdetils">
                <p >Tap to Vehicle details</p>
            </div>
                <button id="editButton1"><img src="./images/plus button.png" alt=""></button>
            <div id="inputDiv1" class="hidden1">
                <input type="text" id="nameInput1" placeholder="VehicleNumber" name="vehicleNumber" required>
                <input type="text" id="emailInput1" placeholder="VehicleModel" name="vehicleModel" required>
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
    </section>

    <!--section 6-->

    <section id="main5">
        <div class="per2">
            <h1>Payment Details</h1>
        </div> 
        <div id="tap4" class="tapdetils3">
            <div  id="tap5" class="tapdetils">
                <p >Tap to Payment details</p>
            </div>
                <button id="editButton2"><img src="./images/plus button.png" alt=""></button>
            <div id="inputDiv2" class="hidden2">
                  
                <select name="" id="check">
                    <option value="google pay" name="googlePay" >google pay</option>
                    <option value="Phone pe" name="phonePe" >phone pe</option>
                    <option value="Amazon pay" name="amazonPay" >Amazon Pay</option>
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
                <button type="submit" id="buttonclick">proceeed to pay </button>
            </div>
        </div>
    </section>

        <script src="script.js" ></script>
</body>
</html>