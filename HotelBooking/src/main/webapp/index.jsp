<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>My Website</title>  
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/69ea77cb87.js" crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
<head> -->
  

</head>
<style>
    body {
        background-color: pink;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;         
    }
   
    input[type="text"]
   { 
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    font-family: Arial, sans-serif;
  }
  input[type="submit"] {
    width: 50%;
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    font-family: Arial, sans-serif;
    }
 #formadd{
   width: 50%   ;
 }
</style>



<body >
    
</form>
</div>


<h2>Create/post  information</h2>
<form action="addUser" id="formadd">
   
   Enter Name  <input type="text" name = "name" > 
   Enter Email  <input type="text" name = "email" > 
   Enter Mobile  <input type="text" name = "mobile" > 
  
   <input type="submit">
</form>  
       
   
</form>
     </div>
    

    <h2>display information</h2>
    <form action="getUser">
        Enter Id  <input type="text" name = "id"> 
        <input type="submit">
    </form>



 <h2>delete information</h2>
<form action="deleteUser">
    Enter Id  <input type="text" name = "id"> 
    <input type="submit">
</form>



    <h2>update information</h2>
    <form action="updateUser">
        Enter Id  <input type="text" name = "id"> 
        <input type="submit">
    </form> 





    <script >
       
    const num1Input = document.getElementById('num1');
    const num2Input = document.getElementById('num2');
    const resultInput = document.getElementById('result');
    
    num1Input.addEventListener('input', updateResult);
    num2Input.addEventListener('input', updateResult);
    
    function updateResult() {
        
        const num1 = parseFloat(num1Input.value);
        const num2 = parseFloat(num2Input.value);
    
        
        const sum = num1 + num2;
        resultInput.value = sum;
    }      

    
    
    </script>


</body>
</html>