<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.dcl.tours.dto.User"%>

<%
User user=(User)session.getAttribute("user");

if(user==null){
    response.sendRedirect("index.jsp");
    return;
}

String pid=request.getParameter("pid");
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Book Tour Package</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

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

.card{

width:500px;

background:white;

padding:40px;

border-radius:25px;

box-shadow:0 20px 45px rgba(0,0,0,.25);

animation:slide .7s;

}

@keyframes slide{

from{

opacity:0;
transform:translateY(40px);

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

background:#e3f2fd;

border-radius:50%;

display:flex;

justify-content:center;

align-items:center;

margin-bottom:20px;

}

.icon i{

font-size:42px;

color:#1565c0;

}

h1{

text-align:center;

color:#1565c0;

margin-bottom:10px;

}

.subtitle{

text-align:center;

color:#666;

margin-bottom:30px;

}

.package{

background:#f5f9ff;

padding:15px;

border-radius:15px;

margin-bottom:25px;

text-align:center;

font-weight:600;

font-size:18px;

color:#1565c0;

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

padding:16px;

border:2px solid #90caf9;

border-radius:15px;

font-size:16px;

outline:none;

transition:.3s;

}

.inputBox input:focus{

border-color:#1565c0;

box-shadow:0 0 10px rgba(21,101,192,.25);

}

button{

width:100%;

padding:16px;

border:none;

border-radius:40px;

font-size:18px;

font-weight:600;

cursor:pointer;

transition:.3s;

}

.book{

background:#1565c0;

color:white;

margin-top:10px;

}

.book:hover{

background:#0d47a1;

transform:translateY(-3px);

}

.home{

background:#eceff1;

margin-top:15px;

}

.home:hover{

background:#cfd8dc;

}

.home a{

text-decoration:none;

color:#333;

display:block;

}

</style>

</head>

<body>

<div class="card">

<div class="icon">

<i class="fa-solid fa-plane-departure"></i>

</div>

<h1>Book Your Tour</h1>

<p class="subtitle">
Complete the details below to confirm your booking.
</p>

<div class="package">

<i class="fa-solid fa-location-dot"></i>

Package ID :
<%=pid%>

</div>

<form action="booking" method="post">

<input
type="hidden"
name="pid"
value="<%=pid%>">

<div class="inputBox">

<label>

<i class="fa-solid fa-calendar-days"></i>

Journey Start Date

</label>

<input
type="date"
name="startDate"
required>

</div>

<div class="inputBox">

<label>

<i class="fa-solid fa-calendar-check"></i>

Journey End Date

</label>

<input
type="date"
name="endDate"
required>

</div>

<button
type="submit"
class="book">

<i class="fa-solid fa-ticket"></i>

Confirm Booking

</button>

</form>

<button class="home">

<a href="home.jsp">

<i class="fa-solid fa-house"></i>

Back to Home

</a>

</button>

</div>

</body>

</html>