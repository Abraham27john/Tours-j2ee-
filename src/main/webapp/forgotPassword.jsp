<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Forgot Password</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

height:100vh;

display:flex;

justify-content:center;

align-items:center;

background:linear-gradient(135deg,#1565c0,#42a5f5);

}

.container{

width:430px;

background:white;

padding:40px;

border-radius:25px;

box-shadow:0 20px 45px rgba(0,0,0,.25);

animation:fadeIn .6s ease;

}

@keyframes fadeIn{

from{

opacity:0;
transform:translateY(20px);

}

to{

opacity:1;
transform:translateY(0);

}

}

.icon{

width:90px;

height:90px;

margin:auto;

border-radius:50%;

background:#e3f2fd;

display:flex;

justify-content:center;

align-items:center;

margin-bottom:20px;

}

.icon i{

font-size:42px;

color:#1565c0;

}

h2{

text-align:center;

color:#1565c0;

margin-bottom:10px;

}

p{

text-align:center;

color:#666;

margin-bottom:30px;

font-size:15px;

}

.inputBox{

margin-bottom:20px;

}

.inputBox label{

display:block;

margin-bottom:8px;

font-weight:600;

color:#333;

}

.inputBox input{

width:100%;

padding:15px 18px;

border:2px solid #90caf9;

border-radius:12px;

font-size:15px;

outline:none;

transition:.3s;

}

.inputBox input:focus{

border-color:#1565c0;

box-shadow:0 0 8px rgba(21,101,192,.3);

}

button{

width:100%;

padding:16px;

border:none;

border-radius:40px;

background:#1565c0;

color:white;

font-size:18px;

font-weight:600;

cursor:pointer;

transition:.3s;

}

button:hover{

background:#0d47a1;

transform:translateY(-2px);

}

.error{

background:#ffebee;

color:#c62828;

padding:12px;

border-radius:10px;

text-align:center;

margin-bottom:20px;

}

.success{

background:#e8f5e9;

color:#2e7d32;

padding:12px;

border-radius:10px;

text-align:center;

margin-bottom:20px;

}

.back{

text-align:center;

margin-top:20px;

}

.back a{

text-decoration:none;

color:#1565c0;

font-weight:600;

}

.back a:hover{

text-decoration:underline;

}

</style>

</head>

<body>

<div class="container">

<div class="icon">

<i class="fa-solid fa-key"></i>

</div>

<h2>Forgot Password</h2>

<p>
Enter your registered email and choose a new password.
</p>

<%
String error=(String)request.getAttribute("error");

if(error!=null){
%>

<div class="error">
<%=error%>
</div>

<%
}

String success=(String)request.getAttribute("success");

if(success!=null){
%>

<div class="success">
<%=success%>
</div>

<%
}
%>

<form action="forgotPassword" method="post">

<div class="inputBox">

<label>Email Address</label>

<input
type="email"
name="email"
placeholder="Enter your email"
required>

</div>

<div class="inputBox">

<label>New Password</label>

<input
type="password"
name="password"
placeholder="Enter new password"
required>

</div>

<div class="inputBox">

<label>Confirm Password</label>

<input
type="password"
name="confirm"
placeholder="Confirm new password"
required>

</div>

<button type="submit">

<i class="fa-solid fa-rotate-right"></i>

&nbsp; Reset Password

</button>

</form>

<div class="back">

<a href="index.jsp">

<i class="fa-solid fa-arrow-left"></i>

Back to Login

</a>

</div>

</div>

</body>
</html>w