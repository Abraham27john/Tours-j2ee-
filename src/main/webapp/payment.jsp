<%@page import="com.dcl.tours.dto.Package"%>
<%@page import="com.dcl.tours.dto.Booking"%>
<%@page import="com.dcl.tours.dto.User"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%

User user=(User)session.getAttribute("user");

Booking booking=(Booking)request.getAttribute("booking");

Package pack=(Package)request.getAttribute("package");

if(user==null || booking==null || pack==null){

	response.sendRedirect("UserDashboard");
	return;

}

Double amount=pack.getPrice();

Double gst=amount*0.18;

Double totalAmount=amount+gst;

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Payment Gateway</title>

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

background:#eef2f7;

}

.container{

width:1100px;

margin:40px auto;

display:flex;

gap:30px;

}

.left{

width:65%;

background:white;

padding:35px;

border-radius:15px;

box-shadow:0 5px 20px rgba(0,0,0,.15);

}

.right{

width:35%;

background:white;

padding:30px;

border-radius:15px;

box-shadow:0 5px 20px rgba(0,0,0,.15);

}

h2{

color:#0d6efd;

margin-bottom:20px;

}

.method{

padding:15px;

border:1px solid #ddd;

border-radius:8px;

margin-bottom:15px;

cursor:pointer;

transition:.3s;

}

.method:hover{

background:#f4f8ff;

border-color:#0d6efd;

}

.method input{

margin-right:10px;

}

label{

font-weight:bold;

display:block;

margin-bottom:8px;

}

input[type=text]{

width:100%;

padding:12px;

margin-bottom:20px;

border:1px solid #bbb;

border-radius:6px;

font-size:15px;

outline:none;

}

input[type=text]:focus{

border-color:#0d6efd;

}

.row{

display:flex;

gap:20px;

}

.row div{

flex:1;

}

.summary{

margin-top:15px;

}

.summary table{

width:100%;

border-collapse:collapse;

}

.summary td{

padding:10px;

border-bottom:1px solid #eee;

}

.total{

font-size:20px;

font-weight:bold;

color:#0d6efd;

}

.paybtn{

width:100%;

padding:16px;

border:none;

background:#0d6efd;

color:white;

font-size:18px;

border-radius:8px;

cursor:pointer;

margin-top:20px;

transition:.3s;

}

.paybtn:hover{

background:#084298;

transform:translateY(-2px);

}

</style>

</head>

<body>

<div class="container">

<form action="payment" method="post">

<div class="left">

<h2>

<i class="fa-solid fa-credit-card"></i>

Select Payment Method

</h2>
<div class="method">

<input
type="radio"
name="pay_mode"
value="UPI"
checked>

<i class="fa-brands fa-google-pay"></i>

UPI Payment

</div>

<div class="method">

<input
type="radio"
name="pay_mode"
value="CARD">

<i class="fa-solid fa-credit-card"></i>

Credit / Debit Card

</div>

<div class="method">

<input
type="radio"
name="pay_mode"
value="NET BANKING">

<i class="fa-solid fa-building-columns"></i>

Net Banking

</div>

<div class="method">

<input
type="radio"
name="pay_mode"
value="CASH">

<i class="fa-solid fa-money-bill-wave"></i>

Cash Payment

</div>

<hr>

<br>

<h2>

<i class="fa-solid fa-address-card"></i>

Card Details

</h2>

<label>

Card Holder Name

</label>

<input
type="text"
placeholder="Enter Card Holder Name">

<label>

Card Number

</label>

<input
type="text"
placeholder="XXXX XXXX XXXX XXXX">

<div class="row">

<div>

<label>

Expiry Date

</label>

<input
type="text"
placeholder="MM / YY">

</div>

<div>

<label>

CVV

</label>

<input
type="text"
placeholder="123">

</div>

</div>

<label>

Billing Address

</label>

<input
type="text"
placeholder="Enter Billing Address">

</div>

<div class="right">

<h2>

<i class="fa-solid fa-receipt"></i>

Booking Summary

</h2>

<div class="summary">

<table>
<tr>

<td><b>Customer</b></td>

<td><%=user.getUname()%></td>

</tr>

<tr>

<td><b>Package</b></td>

<td><%=pack.getPname()%></td>

</tr>

<tr>

<td><b>Package ID</b></td>

<td><%=pack.getPid()%></td>

</tr>

<tr>

<td><b>Duration</b></td>

<td><%=pack.getNo_of_days()%> Days</td>

</tr>

<tr>

<td><b>Start Date</b></td>

<td><%=booking.getStart_date()%></td>

</tr>

<tr>

<td><b>End Date</b></td>

<td><%=booking.getEnd_date()%></td>

</tr>

<tr>

<td><b>Package Amount</b></td>

<td>

₹ <%=String.format("%.2f",amount)%>

</td>

</tr>

<tr>

<td><b>GST (18%)</b></td>

<td>

₹ <%=String.format("%.2f",gst)%>

</td>

</tr>

<tr class="total">

<td>

Total Amount

</td>

<td>

₹ <%=String.format("%.2f",totalAmount)%>

</td>

</tr>

</table>

</div>

<input
type="hidden"
name="bid"
value="<%=booking.getBid()%>">

<br>

<button
type="submit"
class="paybtn">

<i class="fa-solid fa-lock"></i>

Pay ₹ <%=String.format("%.2f",totalAmount)%>

</button>

<br><br>

<p
style="text-align:center;
color:gray;
font-size:14px;">

<i class="fa-solid fa-shield-halved"></i>

Your payment is secured with 256-bit SSL Encryption.

</p>

</div>

</form>

</div>

</body>

</html>