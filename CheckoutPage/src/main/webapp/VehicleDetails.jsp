<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VehicleDetails</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    
*{
    margin:0px;
    padding:0px;
    box-sizing: border-box;
    font-family:'roboto',sans-serif;
}
.head{
    display: flex;
    flex-direction: column;
    position:absolute;
    width:100%;
    height:80px;
    overflow:hidden;
    
}
.back-icon{
    font-size: 20px;
    color:#fff;
    margin-left:20px;
    margin-top:45px;
    
}
.link1{
    text-decoration: none;
    color: #fff;
}
.div1{ 
    background-color: rgb(5,166,90);
    display:flex;
    flex-direction: row;
    height:80px;
}
.VehicleDetails{
    font-size: 20px;
    color:#fff;
    margin-left:20px;
    margin-top:45px;

}

.Details{
    padding-top:90px;
    height:250px;
    width:100%;
    
} 
.container{
    
    height:600px;
    width:95%;
    margin:0px auto;
    border-radius:15px;
    padding:10px;
    overflow: hidden;
    display:flex;
    flex-direction: column;
    justify-content: space-between;
}
.lbl{
    padding:5px;
    width:100%;
    height:30px;
    border-radius: 10px;
    color: black;
    margin-bottom: 10px;
}
.inputBox{
    margin:5px;
    border: 1px solid;
    height:40px;
    border-radius: 8px;
    padding:5px;
border: 1px solid #A0A0A0;
}
#VehicleType{
    display:flex;
    flex-direction: column;
    margin-bottom:20px;
}
#VehicleNumber{
    display:flex;
    flex-direction: column;
}
.vehicle{

display:flex;
flex-direction:row;
justify-content:space-around;
}
.vehicleInput{
width: 100px;
height: 46px;
border-radius: 8px;
border: 1px solid #A0A0A0;
flex-shrink: 0;
display:flex;
flex-direction:row;

justify-content:space-evenly;
}
.lbl2 p{
width: 27px;
height: 16px;
flex-shrink: 0;
color: #030303;
font-size: 14px;
font-style: normal;
font-weight: 400;
line-height: normal;
padding-top:15px;
padding-left:5px;
}
.lbl2 svg{
width: 32px;
height: 32px;
flex-shrink: 0;
padding-top:8px;
padding-right:1px;
}
.submit input{
     width:90%;
    height:41px;
    background-color: rgb(5,166,90);
    border-radius: 10px;
    color: #fff;
    margin-bottom: 5px;
    justify-content: center;
    border: none;
    margin-top:20px;
    margin-left:23px;
    display: inline-flex;
	padding: 14px 139.5px;
	gap: 10px;
}
.lbl2{
display:flex;
flex-direction:row;}
.vehicleInput input[type="radio"]{
width: 100px;
height: 46px;
border-radius: 8px;
border: 1px solid #A0A0A0;
}
.vehicleInput input[type="radio"]:checked + label {
		width: 100px;
height: 46px;
border-radius: 8px;
border: 1px solid #A0A0A0;
        background-color:#F0FFFA ; /* Change the background color to the desired color */
        color: #030303; /* Change the text color when selected */
    }
    </style>

    <script>
        function validVehicleNumber(){
        //get input values

        var vehicleno=document.forms["myForm"]["VehicleNo"].value;
        //Regular Expression validation
        var vehicleRegex=/^[a-zA-Z0-9/s]+$/;
        //validation check
        if(!vehicleno.match(vehicleRegex)){
            alert("Please enter a valid vehicle Number");
            return false;
        }
        return true;
        }
    </script>
</head>
<body>
    
    <header class="head">
        <div class="div1">
            <div class="back-icon">
             <a  class="link1" href="./index.jsp">
                <i class="fa fa-angle-left" aria-hidden="true"></i></a>
            </div> 
            <div class="VehicleDetails">
        
                <p>Vehicle Details</p>
            </div>
        </div>
    </header>
    <section class="Details">
        <div class="container">
             <form action="VehicleDetails" name="myForm" onsubmit="return validVehicleNumber()"> 
                <div id="VehicleType">
                    <label class="lbl" for="VehicleType">Choose Vehicle Type</label>
                    <div class="vehicle">
                <!--     <select class="inputBox" name="VehicleType">
                       <div> 
                       <option><button>
                            Bike
                        </button></option></div>
                        <div><option><button>
                            Car
                       </button> </option></div>
                    </select>-->
                    <div class="vehicleInput">
                    <input type="radio" id="bike" name="vehicleType" value="Bike" style="display:none">
                    <label class="lbl2" for="bike">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
  					<g clip-path="url(#clip0_0_4160)">
    				<path d="M24 9H20V7H24C24.552 7 25 7.447 25 8C25 8.552 24.552 9 24 9ZM21 0C21 -1.657 19.657 -3 18 -3H13C11.343 -3 10 -1.657 10 0V6H9V0C9 -2.209 10.791 -4 13 -4H18C20.209 -4 22 -2.209 22 0V6H21V0ZM11 9H7C6.447 9 6 8.552 6 8C6 7.447 6.447 7 7 7H11V9ZM15.5 11.5C13.566 11.5 12 9.933 12 8C12 6.066 13.566 4.5 15.5 4.5C17.434 4.5 19 6.066 19 8C19 9.933 17.433 11.5 15.5 11.5ZM15.5 6C14.396 6 13.5 6.896 13.5 8C13.5 9.104 14.396 10 15.5 10C16.604 10 17.5 9.104 17.5 8C17.5 6.896 16.604 6 15.5 6ZM12.112 10.106C12.818 11.239 14.066 12 15.5 12C16.934 12 18.181 11.239 18.888 10.106C20.668 10.511 22 12.097 22 14V24C22 25.861 20.722 27.412 19 27.858V22.437C19 20.504 17.433 18.937 15.5 18.937C13.567 18.937 12 20.504 12 22.437V27.858C10.277 27.412 9 25.861 9 24V14C9 12.097 10.332 10.511 12.112 10.106ZM15.5 20C16.881 20 18 21.119 18 22.5V29.5C18 30.881 16.881 32 15.5 32C14.119 32 13 30.881 13 29.5V22.5C13 21.119 14.119 20 15.5 20Z" fill="#1A9E75"/>
  					</g>
  					<defs>
					<clipPath id="clip0_0_4160">
					<rect width="32" height="32" fill="white"/>
    				</clipPath>
  					</defs>
					</svg>
					<p>Bike</p>
					</label>
                    </div>
                    <div class="vehicleInput">
                    <input type="radio" id="auto" name="vehicleType" value="Auto" style="display:none">
            <label class="lbl2" for="auto">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
 						 <g clip-path="url(#clip0_0_4165)">
    						<path d="M10.87 4.47129C10.8394 4.47203 10.8089 4.47495 10.7788 4.48004H5.76002C2.58657 4.48004 2.26228e-05 7.06659 2.26228e-05 10.24V12.0525C-0.0114008 12.1217 -0.0114008 12.1922 2.26218e-05 12.2613L2.26228e-05 14.72V15.36V21.12C2.26228e-05 22.5338 1.14626 23.68 2.56002 23.68H2.58627C2.57748 23.7868 2.56002 23.8931 2.56002 24C2.56002 24.8623 2.84398 25.7331 3.44127 26.405C4.03857 27.077 4.96002 27.52 6.08002 27.52C7.20002 27.52 8.12148 27.077 8.71877 26.405C9.31607 25.7331 9.60002 24.8623 9.60002 24C9.60002 23.8931 9.58256 23.7868 9.57377 23.68H20.535L28.7525 17.2888L28.7638 17.2788C28.7241 16.4231 28.6457 15.607 28.5388 14.8288C28.5343 14.7936 28.5314 14.7552 28.5263 14.72H28.5213C27.9022 10.3513 26.373 7.25569 25.49 5.76004H27.52C27.6048 5.76124 27.689 5.74557 27.7677 5.71395C27.8464 5.68233 27.9181 5.63537 27.9785 5.57583C28.0389 5.51628 28.0868 5.44532 28.1195 5.36707C28.1523 5.28883 28.1691 5.20486 28.1691 5.12004C28.1691 5.03523 28.1523 4.95126 28.1195 4.87301C28.0868 4.79477 28.0389 4.72381 27.9785 4.66426C27.9181 4.60471 27.8464 4.55776 27.7677 4.52614C27.689 4.49451 27.6048 4.47884 27.52 4.48004H10.9875C10.9487 4.47352 10.9094 4.47059 10.87 4.47129ZM5.76002 5.76004H10.24V11.52H1.28002V10.24C1.28002 7.75845 3.27843 5.76004 5.76002 5.76004ZM11.52 5.76004H19.2V16.32C19.2 18.2612 17.6205 19.84 15.68 19.84H14.08V17.92C14.08 16.3749 12.9786 15.0825 11.52 14.785V12.2675C11.5314 12.1984 11.5314 12.1279 11.52 12.0588V5.76004ZM22.4 5.76004H23.9763C24.4024 6.38153 26.2725 9.29715 27.1188 14.08H22.4V5.76004ZM1.28002 12.8H10.24V14.72H1.28002V12.8ZM29.3888 18.415L23.4425 23.04H24.47C24.3816 23.3468 24.32 23.6649 24.32 24C24.32 25.9412 25.8995 27.52 27.84 27.52C29.7805 27.52 31.36 25.9412 31.36 24C31.36 23.6671 31.3106 23.3455 31.2238 23.04H31.36C31.552 23.04 31.7334 22.9548 31.855 22.8063C31.976 22.6585 32.0253 22.4632 31.9875 22.275C31.5504 20.0862 30.3085 18.9629 29.3888 18.415ZM25.825 23.04H29.855C29.9949 23.3322 30.08 23.6551 30.08 24C30.08 25.2352 29.0752 26.24 27.84 26.24C26.6048 26.24 25.6 25.2352 25.6 24C25.6 23.6551 25.6852 23.3322 25.825 23.04ZM3.86752 23.68H8.29252C8.30599 23.7863 8.32002 23.8922 8.32002 24C8.32002 24.5778 8.12398 25.147 7.76127 25.555C7.39857 25.9631 6.88002 26.24 6.08002 26.24C5.28002 26.24 4.76148 25.9631 4.39877 25.555C4.03607 25.147 3.84002 24.5778 3.84002 24C3.84002 23.8922 3.85406 23.7863 3.86752 23.68Z" fill="#1A9E75"/>
 							 </g>
  							<defs>
    						<clipPath id="clip0_0_4165">
      					<rect width="32" height="32" fill="white"/>
   						 </clipPath>
  						</defs>
						</svg>
						<p>Auto</p>
						</label>
                    </div>
                    <div class="vehicleInput">
                     <input type="radio" id="car" name="vehicleType" value="Car" style="display:none">
            <label class="lbl2" for="car">
                    	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
  						<path d="M4.12128 16.7209C4.12768 16.0216 4.3487 15.3411 4.75445 14.7715C5.16019 14.2019 5.73108 13.7706 6.38991 13.536L8.23244 8.77982C8.39657 8.39199 8.66851 8.05938 9.01599 7.82145C9.36348 7.58353 9.77192 7.45027 10.1929 7.4375H21.8072C22.2281 7.45027 22.6366 7.58353 22.984 7.82145C23.3315 8.05938 23.6035 8.39199 23.7676 8.77982L25.6118 13.536C26.2703 13.7709 26.8408 14.2023 27.2463 14.7718C27.6517 15.3414 27.8725 16.0218 27.8788 16.7209V21.5209C27.8783 21.7329 27.7939 21.9361 27.6439 22.0861C27.494 22.236 27.2908 22.3204 27.0788 22.3209H25.9486V24.8084C25.9482 25.0205 25.8638 25.2237 25.7138 25.3736C25.5639 25.5236 25.3607 25.608 25.1486 25.6084H23.5015C23.2895 25.608 23.0862 25.5236 22.9363 25.3736C22.7864 25.2237 22.7019 25.0205 22.7015 24.8084V22.3209H9.29854V24.8084C9.2981 25.0205 9.21367 25.2237 9.06373 25.3736C8.9138 25.5236 8.71058 25.608 8.49854 25.6084H6.85138C6.63935 25.608 6.43612 25.5236 6.28619 25.3736C6.13626 25.2237 6.05183 25.0205 6.05138 24.8084V22.3209H4.92128C4.70924 22.3204 4.50602 22.236 4.35608 22.0861C4.20615 21.9361 4.12172 21.7329 4.12128 21.5209V16.7209ZM9.4097 16.731C9.4097 16.3879 9.30796 16.0525 9.11734 15.7672C8.92673 15.4819 8.6558 15.2596 8.33882 15.1283C8.02183 14.997 7.67304 14.9626 7.33653 15.0296C7.00002 15.0965 6.69092 15.2617 6.44832 15.5043C6.20571 15.7469 6.04049 16.056 5.97356 16.3925C5.90662 16.7291 5.94098 17.0778 6.07227 17.3948C6.20357 17.7118 6.42592 17.9827 6.71119 18.1734C6.99647 18.364 7.33186 18.4657 7.67496 18.4657C7.90277 18.4657 8.12835 18.4208 8.33882 18.3337C8.54928 18.2465 8.74052 18.1187 8.90161 17.9576C9.06269 17.7965 9.19047 17.6053 9.27765 17.3948C9.36483 17.1844 9.4097 16.9588 9.4097 16.731ZM8.47159 13.3238H23.5251L22.0261 9.45518C21.9727 9.3795 21.8938 9.32567 21.8038 9.30361H10.1929C10.1041 9.3264 10.0265 9.38016 9.97391 9.45518L8.47159 13.3238ZM26.0564 16.731C26.0564 16.3878 25.9547 16.0523 25.764 15.767C25.5733 15.4817 25.3022 15.2594 24.9852 15.1281C24.6681 14.9969 24.3192 14.9626 23.9826 15.0297C23.6461 15.0968 23.337 15.2622 23.0945 15.5049C22.8519 15.7477 22.6868 16.057 22.6201 16.3936C22.5533 16.7302 22.5879 17.079 22.7195 17.396C22.8511 17.7129 23.0737 17.9838 23.3592 18.1742C23.6447 18.3646 23.9802 18.466 24.3234 18.4657C24.7835 18.4657 25.2247 18.2829 25.55 17.9576C25.8754 17.6323 26.0564 17.1911 26.0564 16.731Z" fill="#1A9E75"/>
						</svg>
						<p>car</p>
						</label>
                    	</div>
                    	
                    </div>
                    
                </div> 
                
                <div id="VehicleNumber">
                    <label class="lbl" for="VehicleNo">Enter Vehicle Number</label>
                    <input class="inputBox" type="Text" name="VehicleNo" placeholder="Eg: XX12XX1234" required>
                </div>
                <div class="submit">
                <input type="submit" value="Save">
                </div>
                </form>
        </div>

    </section>
    
</body>
</html>
