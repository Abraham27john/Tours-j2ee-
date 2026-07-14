<%@page import="com.dcl.tours.dto.User"%>
<%@page import="com.dcl.tours.dto.Payment"%>
<%@page import="com.dcl.tours.dto.Package"%>
<%@page import="com.dcl.tours.dto.Booking"%>
<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%

User user = (User)session.getAttribute("user");

Booking booking = (Booking)request.getAttribute("booking");

Package pack = (Package)request.getAttribute("package");

Payment payment = (Payment)request.getAttribute("payment");

String success = (String)request.getAttribute("success");

if(user==null || booking==null || pack==null || payment==null){

    response.sendRedirect("UserDashboard");
    return;

}

Double gst = payment.getTotal_amount() - payment.getAmount();

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>DCL TOURS - Invoice</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{

background:#f2f4f8;

padding:40px;

}

.invoice{

width:900px;

margin:auto;

background:white;

border-radius:12px;

padding:35px;

box-shadow:0 0 15px rgba(0,0,0,.15);

}

.header{

display:flex;

justify-content:space-between;

align-items:center;

border-bottom:3px solid #0d6efd;

padding-bottom:20px;

margin-bottom:30px;

}

.company h1{

color:#0d6efd;

font-size:34px;

}

.company p{

margin-top:8px;

color:#555;

}

.invoiceNo{

text-align:right;

}

.invoiceNo h2{

color:#0d6efd;

font-size:30px;

}

.invoiceNo h3{

margin-top:10px;

}

.section{

display:flex;

justify-content:space-between;

margin-top:30px;

}

.box{

width:46%;

}

.box h3{

color:#0d6efd;

margin-bottom:15px;

border-bottom:2px solid #0d6efd;

padding-bottom:8px;

}

.box p{

margin:10px 0;

font-size:15px;

}

table{

width:100%;

border-collapse:collapse;

margin-top:35px;

}

table th{

background:#0d6efd;

color:white;

padding:14px;

}

table td{

padding:14px;

text-align:center;

border:1px solid #ddd;

}

.total{

font-size:22px;

font-weight:bold;

color:#0d6efd;

}

.success{

margin-top:30px;

padding:15px;

background:#d1e7dd;

color:#0f5132;

border-radius:6px;

font-weight:bold;

text-align:center;

}

button{

padding:12px 25px;

background:#0d6efd;

color:white;

border:none;

border-radius:5px;

cursor:pointer;

font-size:16px;

}

button:hover{

background:#084298;

}

@media print{

button{

display:none;

}

body{

background:white;

padding:0;

}

.invoice{

box-shadow:none;

width:100%;

}

}

</style>

</head>

<body>

<div class="invoice">

<div class="header">

<div class="company">

<h1>DCL TOURS</h1>

<p>Bangalore, Karnataka</p>

<p>Email : support@dcltours.com</p>

<p>Phone : +91 9876543210</p>

</div>

<div class="invoiceNo">

<h2>INVOICE</h2>

<h3>#INV-<%=payment.getPay_id()%></h3>

<p>Status : <b>PAID</b></p>

</div>

</div>
<div class="section">

<div class="box">

<h3>Customer Details</h3>

<p><b>Name :</b> <%=user.getUname()%></p>

<p><b>Email :</b> <%=user.getEmail()%></p>

<p><b>Phone :</b> <%=user.getPhno()%></p>

<p><b>User ID :</b> <%=user.getUid()%></p>

</div>

<div class="box">

<h3>Package Details</h3>

<p><b>Package :</b> <%=pack.getPname()%></p>

<p><b>Package ID :</b> <%=pack.getPid()%></p>

<p><b>Duration :</b> <%=pack.getNo_of_days()%> Days</p>

<p><b>Booking ID :</b> <%=booking.getBid()%></p>

<p><b>Start Date :</b> <%=booking.getStart_date()%></p>

<p><b>End Date :</b> <%=booking.getEnd_date()%></p>

</div>

</div>

<table>

<tr>

<th>Package</th>

<th>Payment Mode</th>

<th>Amount</th>

<th>GST (18%)</th>

<th>Total</th>

</tr>

<tr>

<td><%=pack.getPname()%></td>

<td><%=payment.getPay_mode()%></td>

<td>₹ <%=String.format("%.2f",payment.getAmount())%></td>

<td>₹ <%=String.format("%.2f",gst)%></td>

<td><b>₹ <%=String.format("%.2f",payment.getTotal_amount())%></b></td>

</tr>

</table>

<br><br>

<table>

<tr>

<td style="text-align:right;"><b>Package Amount</b></td>

<td style="text-align:right;">

₹ <%=String.format("%.2f",payment.getAmount())%>

</td>

</tr>

<tr>

<td style="text-align:right;"><b>GST (18%)</b></td>

<td style="text-align:right;">

₹ <%=String.format("%.2f",gst)%>

</td>

</tr>

<tr>

<td style="text-align:right;font-size:20px;">

<b>Total Paid</b>

</td>

<td class="total" style="text-align:right;">

₹ <%=String.format("%.2f",payment.getTotal_amount())%>

</td>

</tr>

</table>

<%
if(success!=null){
%>

<div class="success">

<%=success%>

</div>

<%
}
%>

<br>

<h3 style="color:#0d6efd;">Payment Information</h3>

<p><b>Transaction ID :</b>
TXN<%=payment.getPay_id()%></p>

<p><b>Payment ID :</b>
<%=payment.getPay_id()%></p>

<p><b>Payment Mode :</b>
<%=payment.getPay_mode()%></p>

<p><b>Booking ID :</b>
<%=booking.getBid()%></p>

<p><b>Package ID :</b>
<%=pack.getPid()%></p>

<br>
<div style="display:flex;
justify-content:space-between;
margin-top:30px;">

<a href="UserDashboard">

<button type="button">

<i class="fa-solid fa-house"></i>

Back To Dashboard

</button>

</a>

<button
type="button"
onclick="window.print();">

🖨 Print Invoice

</button>

</div>

<hr style="margin-top:40px;">

<div
style="text-align:center;
margin-top:25px;
color:#666;">

<h2 style="color:#0d6efd;">

Thank You For Choosing DCL TOURS

</h2>

<br>

<p>

We sincerely appreciate your trust in DCL Tours.

</p>

<p>

We hope you enjoy your journey and create wonderful memories.

</p>

<br>

<p>

Have a Safe Journey! ✈️

</p>

<br>

<p>

Visit Again ❤️

</p>

</div>

</div>

</body>

</html>