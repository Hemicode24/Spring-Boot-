<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PersonalDetails</title>
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
    text-decoration: none;
    
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
.PersonalDetails{
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
    
    height:400px;
    width:95%;
    margin:0px auto;
    border-radius:15px;
    padding:10px;
    overflow: hidden;
    display:flex;
    flex-direction: column;
    justify-content: space-around;
}
#name{
    display:flex;
    flex-direction: column;
    
}
#contact{
    display:flex;
    flex-direction: column;
    
}
#email{
    display:flex;
    flex-direction: column;
    
}
label{
    padding:5px;
    width:100%;
    height:30px;
    
    border-radius: 10px;
    color: black;
    margin-bottom: 5px;
}
.inputBox{
    margin:5px;
    padding-left:10px;
    border: 1px solid;
    height:40px;
    border-radius: 8px;
}
.inputBox value{
    padding:10px;
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
.mob{
dispaly:flex;
flex-direction:row;
border-radius:8px;}
.countrycode{
}

/* .submit input{
    background-color: rgb(5,166,90);
    color: #fff;
    border: none;
    padding-left: 100;
} */
    </style>
    <script>
        function validForm(){
            //get input values
            var name=document.forms["myForm"]["Name"].value;
            var contact=document.forms["myForm"]["Mobile"].value;
            var email=document.forms["myForm"]["Email"].value;
            //Regular Expression for validation
            var nameRegex=/^[a-zA-Z/s]+$/;
            var mobileRegex=/^\d{10}$/;
            var emailRegex=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
            //Validation Check
            if(!name.match(nameRegex)){
                alert("please Enter a Valid Name");
                return false;
            }
            if(!contact.match(mobileRegex)){
                alert("Please Enter a valid 10-digit mobile number");
                return false;
            }
            if(!email.match(emailRegex)){
                alert("please Enter a valid Email address");
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
            <div class="PersonalDetails">        
                <p>Personal Details</p>
            </div>
        </div>
    </header>
    <section class="Details">
       <div class="container">
        <form name="myForm" action="PersonalDetails" onsubmit="return validForm()"> 
        <div id="name">
            <label for="Name">Name</label>
            <input class="inputBox" type="text" name="Name"  placeholder="Enter your Name" required>
        </div>
        
        <div id="email">
            <label for="Email">Email:</label>
            <input class="inputBox" type="text" name="Email" placeholder="Enter your Email" required>
        </div>
        <div id="contact">
            <label for="MobileNo.">Mobile No.</label>
            <div class="mob">
            <!-- input class="countrycode" type="text" value="+91" style="border-right:1px;"-->
            <input class="inputBox" type="number" name="Mobile" placeholder="Enter your mobile number" required>
        </div>
        </div>
        <div class="submit">
            <input type="submit" value="Save">
        </div>
        
        </form>
    </div>

    </section>
    
    
</body>
</html>