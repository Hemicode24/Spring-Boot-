<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1" >
    <title>ParkQwik</title>
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <!-- header of the page -->
    <header class="head">
        <div class="div1">
            <div class="back-icon">
                 <i class="fa fa-angle-left" aria-hidden="true"></i>
            </div> 
            <div class="Checkout">
        
                <p>Checkout</p>
            </div>
    </div>
    </header>
    <!-- Section under header and over footer -->
    <form action="addUser">
    <section class="section1">
         <!-- container of parking slot booking section -->
        <div class="container">
            <div class="parking">
                <div class="parking-Slot">
                    <select id="slot" name="parkingSlot">
                        <option>Elite Car Parking</option>
                        <option>EV Parking</option>
                        <option>Car Parking</option>
                    
                    </select>
                               
                </div>
                <div class="location-icon">
                    <i class="fa-solid fa-location-dot"></i>
                </div>
                <div class="location">
                    <select id="location" name="parkingLocation">
                        <option>Ramapuram</option>
                        <option>Porur</option>
                        <option>Guindy</option>
                    </select>
                </div>
            </div>
            <div class="Parking-Time">
                <div class="Parking-from">
                    <p class="ParkingFont">Parking-from</p>
                    <p class="Time">Today at
                    <input id="startTime" type="time"  name="startTime"required></p>
                    <!-- <i class="fa-solid fa-chevron-down"></i> -->
                </div>    
                <div class="arrow">
                    <i class="fa fa-arrow-right"></i>
                </div>            
                <div class="Parking-until">
                    <p class="ParkingFont">Parking Until</p>
                    <p class="Time">Today at
                    <input id="endTime" type="time" name="endTime" required onclick="calculateTimeDifference()"></p>
                    <!-- <i class="fa-solid fa-chevron-down"></i> -->
                 </div>
                 
            </div>
            <div class="result">
                <div class="duration">
                    <p id="result1" name="parkingDuration">--</p> 
                    <p class="ParkingFont">Total Duration</p>
                    <!-- <p class="ParkingFont">Total Duration</p> -->
                </div>
                <hr>
                 <div class="toDestination">
                 <p id="dest">40 mins</p>
                 <p class="ParkingFont">To Destination</p>
                </div>
            </div>
        </div>   
         <!--container of payment summary  -->
        <div class="PaymentSummary">
        <p>Payment Summary</p>
            <div class="container2">
                <div id="payment">
                    <div class="Fee">
                        <p>Parking fee</p>
                        <p >&#8377;<span id="ParkingFee" name="parkingFee">000</span></p>
                    </div> 
                <div class="Fee"  id="transaction" >
                    <p>Transaction Fee</p>
                    <p name="transactionFee">&#8377;20</p>
                </div>
                <div class="Fee">
                    <p>Total Amount</p>
                    <p>&#8377;<span  id="Total" name="totalFee">000</span></p>
                </div>
            </div>
        </div>

        <!-- container of personal details -->
        <div class="Details">
            <p>Personal Details</p>
            <div class="container3">
                <p>Tap to personal details</p>
               <a href="./PersonalDetails.jsp">
                 <button class="btn" id="PersonalLink" onclick="myOnclikFnparking()" type="submit">+</button></a>
            </div>

        </div>
        </form>
        
   
        <!-- container of vehicle details -->
        <form action="./VehicleDetails.jsp">
        <div class="Details">
            <p>Vehicle Details</p>
            <div class="container3">
                <p>Tap to Vehicle details</p>
               <a href="./VehicleDetails.jsp">
               <button class="btn" id="VehicleLink" onclick="myOnclikFn()">+</button></a>
            </div>

        </div>
        </form>
        </section>
        <!-- footer section -->
       <footer class="foot">
        <div class="Fee">
            
            <p id="amt">&#8377;<span id="Total1">000</span></p>
        </div>
        <div id="proceedToPay">
            <input id="proceed" value="Proceed To Pay">      
        </div>

    </footer>
    <!-- javascript code of the page -->
    
        
    <script>
                    
        // Get the input values
        var startTimeStr = document.getElementById("startTime");
        var endTimeStr = document.getElementById("endTime");
        startTimeStr.addEventListener('input',calculateTimeDifference );
        endTimeStr.addEventListener('input', calculateTimeDifference);

        function calculateTimeDifference() {
        // Parse input values into Date objects
        var startTime = new Date("1970-01-01T" + startTimeStr.value);
        var endTime = new Date("1970-01-01T" + endTimeStr.value);

        // Calculate the time difference in milliseconds
        var timeDifference = endTime - startTime;

        // Convert milliseconds to hours and minutes
        var hours = Math.round(timeDifference / 3600000);
        //var minutes = Math.floor((timeDifference % 3600000) / 60000);

        // Display the total hours of parking
        
        var resultElement = document.getElementById("result1");
        resultElement.textContent =  hours + " h";
        //Display the parking fee
        var parkingResult=hours*200;
        var parkingFee=document.getElementById("ParkingFee");
        parkingFee.textContent=parkingResult;
        //value for transacction fee
        var TotalAmount=parkingResult+20;
        //Display the total amount for parking
        var TotalFee=document.getElementById("Total");
        TotalFee.textContent=TotalAmount;
        //Display the Total amount for parking at  footer
        var Total1Fee=document.getElementById("Total1");
        Total1Fee.textContent=TotalAmount;
     // Send the result to your Spring Boot backend for storage
        //saveResultToDatabase(startTimeStr,endTimeStr,hours);
    }
       /* function saveResultToDatabase(startTime,endTime,result1) {
        	var data = {
                    "startTime": document.getElementById("startTime").value,
                    "endTime": document.getElementById("endTime").value,
                    "result1": result1
                };
            fetch('/saveResult', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json',
                },
                body: JSON.stringify(data),
            })
            .then(response => {
                if (response.status === 200) {
                    console.log('Result saved successfully.');
                } else {
                    console.error('Failed to save result.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }*/

       /* var startTime = new Date("1970-01-01T" + startTimeStr.value);
        var endTime = new Date("1970-01-01T" + endTimeStr.value);

        var parkingRecord = {
        	    
        	    //parkingSlot: document.getElementById("slot").value,
        	    //parkingLocation: document.getElementById("location").value,
        	    startTime:startTime,
        	    endTime:endTime ,
        	    parkingDuration: result1,
        	    parkingFee: ParkingFee,
        	    transactionFee: 20, // Assuming transaction fee is a fixed value
        	    totalFee: Total
        	};
        function saveResultToDatabase(parkingRecord) {
        	
        	
            fetch('/saveResult', {
                method: 'POST',
                headers: {
                	'Content-Type': 'application/json'
                },
                body: JSON.stringify(parkingRecord),
            })
            .then(response => {
                if (response.status === 200) {
                    console.log('Result saved successfully.');
                } else {
                    console.error('Failed to save result.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }*/

     // Assuming this code is within your JavaScript function after calculating the values

     // Create an object to hold the data
     //const parkingRecord = {
       //  parkingDuration: resultElement.textContent,
         //parkingFee: parkingResult,
         //transactionFee: 20, // Assuming transaction fee is a fixed value
         //totalFee: TotalAmount
     //};

     // Send a POST request to your Spring Boot endpoint
     //fetch('/saveParkingRecord', {
       //  method: 'POST',
         //headers: {
             //'Content-Type': 'application/json',
         //},
         //body: JSON.stringify(parkingRecord),
     //})
     //.then(response => {
         // Handle the response as needed
     //})
     //.catch(error => {
         // Handle errors
     //});

      // const myform=document.getElementById("myForm");
      //myform.submit();

        function myOnclikFnparking(){
            document.location.href="PersonalDetails.jsp";
        }
        function myOnclikFn(){
            document.location.href="VehicleDetails.jsp";
        }
    
    
</script> 

</body>
</html>