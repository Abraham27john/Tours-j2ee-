<%@page import="java.util.List"%>
<%@page import="com.dcl.tours.dto.Package"%>
<%@page import="com.dcl.tours.dto.User"%>

<%
User user = (User) request.getAttribute("user");
List<Package> packages = (List<Package>) request.getAttribute("packages");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f5f7fa;
font-family:'Segoe UI',sans-serif;
}

.navbar{
background:linear-gradient(90deg,#0d6efd,#4f46e5);
}

.navbar-brand{
font-size:28px;
font-weight:bold;
color:white !important;
}

.nav-link{
color:white !important;
font-weight:500;
margin-left:20px;
}

.hero{
height:300px;
background:linear-gradient(rgba(0,0,0,.5),rgba(0,0,0,.5)),
url("https://images.unsplash.com/photo-1507525428034-b723cf961d3e");
background-size:cover;
background-position:center;
display:flex;
justify-content:center;
align-items:center;
flex-direction:column;
color:white;
}

.hero h1{
font-size:48px;
font-weight:bold;
}

.hero p{
font-size:20px;
}

.welcome{
background:white;
padding:25px;
border-radius:15px;
box-shadow:0px 5px 20px rgba(0,0,0,.1);
margin-top:-50px;
position:relative;
z-index:2;
}

.card{
border:none;
border-radius:18px;
overflow:hidden;
transition:.4s;
box-shadow:0 10px 25px rgba(0,0,0,.08);
}

.card:hover{
transform:translateY(-10px);
box-shadow:0 20px 40px rgba(0,0,0,.18);
}

.card img{
height:220px;
object-fit:cover;
}

.price{
font-size:24px;
font-weight:bold;
color:#0d6efd;
}

.days{
color:#6c757d;
font-weight:500;
}

.btn-book{
background:#0d6efd;
color:white;
width:100%;
font-weight:bold;
border-radius:30px;
}

.btn-book:hover{
background:#084298;
color:white;
}

footer{
margin-top:80px;
padding:20px;
background:#212529;
color:white;
text-align:center;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg">

<div class="container">

<a class="navbar-brand" href="#">Tourism</a>

<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">
<a class="nav-link" href="#">Home</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">My Bookings</a>
</li>

<li class="nav-item">
<a class="nav-link" href="logout">Logout</a>
</li>

</ul>

</div>

</div>

</nav>

<div class="hero">

<h1>Explore Your Next Adventure</h1>

<p>Mountains | Beaches | Heritage | Nature</p>

</div>

<div class="container">

<div class="welcome">

<h2>
Welcome,

</h2>

<p class="text-muted">
Choose your favourite tour package and start your journey today.
</p>

</div>

<h2 class="text-center mt-5 mb-4">
Available Tour Packages
</h2>

<div class="row">

<%
String[] images={
"https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
"https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
"https://images.unsplash.com/photo-1464822759023-fed622ff2c3b",
"https://images.unsplash.com/photo-1501785888041-af3ef285b470",
"https://images.unsplash.com/photo-1470770841072-f978cf4d019e",
"https://images.unsplash.com/photo-1483683804023-6ccdb62f86ef"
};

int i=0;

for(Package p:packages){
%>

<div class="col-lg-4 col-md-6 mb-4">

<div class="card">

<img src="<%=images[i%images.length]%>">

<div class="card-body">

<h4 class="card-title">
<%=p.getPname()%>
</h4>

<p class="price">
₹ <%=p.getPrice()%>
</p>

<p class="days">
Duration : <%=p.getNo_of_days()%> Days
</p>

<a href="bookPackage.jsp?pid=<%=p.getPid()%>"
class="btn btn-book">

Book Now

</a>

</div>

</div>

</div>

<%
i++;
}
%>

</div>

</div>

<footer>

<h5>Tourism Management System</h5>

<p>
Discover Beautiful Destinations Across India
</p>

<p>
© 2026 All Rights Reserved
</p>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>