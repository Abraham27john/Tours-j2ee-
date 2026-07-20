<%@page import="com.dcl.tours.dto.Location"%>
<%@page import="com.dcl.tours.daoImplClasses.LocationDAOImpl"%>
<%@page import="com.dcl.tours.daoInterfaces.LocationDAO"%>
<%@page import="com.dcl.tours.dto.Package"%>
<%@page import="java.util.List"%>
<%@page import="com.dcl.tours.daoImplClasses.PackageDAOImpl"%>
<%@page import="com.dcl.tours.daoInterfaces.PackageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Explore South India</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-slate-50">


<%@ include file="navbar.jsp" %>

<!-- Hero Section -->
<section class="relative h-[550px] bg-cover bg-center"
    style="background-image:url(https://t4.ftcdn.net/jpg/06/45/81/21/360_F_645812112_FnMyfr9UHbUrddvOtgHZiBuFLJ4tjpEx.jpg)">

    <div class="absolute inset-0 bg-black/50"></div>

    <div class="relative max-w-7xl mx-auto h-full flex flex-col justify-center items-center text-center text-white px-6">

        <h1 class="text-6xl font-extrabold mb-6">
            Discover South India
        </h1>

        <p class="text-xl max-w-3xl">
            From misty hills to golden beaches, royal palaces to ancient ruins,
            your next unforgettable journey starts here.
        </p>

       
    </div>




	<!-- Packages -->
	<section class="max-w-7xl mx-auto py-16 px-6">

		<div class="text-center mb-12">

			<h2 class="text-4xl font-bold text-slate-800">Popular Tour
				Packages</h2>

			<p class="text-slate-500 mt-3">Handpicked destinations for every
				traveler.</p>

		</div>


<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, Helvetica, sans-serif;
}

body {
	background: #f4f6f9;
}

header {
	background: #0077b6;
	color: white;
	padding: 35px;
	text-align: center;
}

header p {
	margin-top: 10px;
	font-size: 18px;
}

.package-container{
    display:grid;
    grid-template-columns:repeat(3, 1fr);
    gap:30px;
    padding:40px;
}

.card{
    background:#fff;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 5px 15px rgba(0,0,0,.2);
    transition: 0.4s;
}
.card:hover{
transform: translateY(-8px);
}

.card img{
    width:100%;
    height:220px;
    object-fit:cover;
    display:block;
}

.content{
    padding:20px;
}

.content h2 {
	margin-bottom: 10px;
	color: #222;
	font-weight:bold;
}
.content h3{
font-size:25px;
font-weight:bold;
}
.content p {
	margin: 8px 0;
	color: #555;
}

.price {
	font-size: 24px;
	font-weight: bold;
	color: #000000;
}

.rating {
	color: orange;
	margin: 15px 0;
}

button {
	width: 60%;
	padding: 12px;
	border: none;
	background: #0077b6;
	color: white;
	font-size: 17px;
	border-radius: 8px;
	cursor: pointer;
	transition: 0.3s;
}

button1{
width:20%;}

button:hover {
	background: green;
}
.btn{
/*border:2px solid red;*/
padding:10px 30px;
border-radius:30px;
margin-left:85px;
background-color:orange;
}
.btn:hover{
background-color: red;
}
</style>

<section class="package-container">
<% PackageDAO pdao=new PackageDAOImpl();
List<Package> packages=pdao.getAllPackage();

LocationDAO ldao=new LocationDAOImpl();
List<Location> location=ldao.getAllLocation();

Location floc=null;

for(Package p:packages){
	for(Location l:location){
	if(p.getPid()==l.getPid()){
		floc=l;
		break;
	}
	}
	if(floc !=null){
%>

<div class="card">
		
		 <img src="<%=request.getContextPath() %>/<%=floc.getImage_path() %>">
		

		<div class="content">
			<h2>
			<%=floc.getCity_name() %></h2>

			 <h3>
                    <%=p.getPname() %>
                </h3>
                <p>
                    <%=floc.getDescription() %>
                </p>
			<p>Duration : <%=p.getNo_of_days() %> Days</p>

			<p class="price "><%=p.getPrice() %></p>

			<div class="rating">★★★★☆ (4.8)</div>

			<form action="location.jsp" method="post">
			<input type="hidden" name="package_id" value="<%=floc.getPid()%>">
			<input type="submit" value="View Details" class="btn">
			</form>
		</div>
	</div>
<%} }%>
</section>


<%@ include file="footer.jsp"%>

</body>
</html>