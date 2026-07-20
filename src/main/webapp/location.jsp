<%@page import="com.dcl.tours.dto.Package"%>
<%@page import="com.dcl.tours.daoImplClasses.PackageDAOImpl"%>
<%@page import="com.dcl.tours.daoInterfaces.PackageDAO"%>
<%@page import="com.dcl.tours.dto.Location"%>
<%@page import="java.util.List"%>
<%@page import="com.dcl.tours.daoImplClasses.LocationDAOImpl"%>
<%@page import="com.dcl.tours.daoInterfaces.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Goa Beach Tour</title>

<link rel="stylesheet" href="goaTour.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
<style>
/* ==========================
   GOOGLE FONT
========================== */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap')
	;

/* ==========================
   RESET
========================== */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

html {
	scroll-behavior: smooth;
}

body {
	background: #f4f7fb;
	color: white;
}

/* ==========================
   HERO SECTION
========================== */
.hero {
	height: 70vh;
	
	justify-content: center;
	align-items: center;
	position: relative;
	
}

.hero::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .55);
}

.overlay {
    width: 100%;
    height: 500px;
    background-image: url("images/banner.jpg");
    background-size: contain;
    background-position: center;
    background-repeat: no-repeat;
    background-color: #000;
   
}
.overlay img {
    width: 100%;
    height: 300px;
    object-fit: contain;    /* or contain */
}
.overlay h1 {
	font-size: 50px;
	margin-bottom: 15px;
	letter-spacing: 2px;
	margin-left: 280px;
	margin-bottom: 15px;
	 color:white;
}

.overlay p {
	font-size: 20px;
	margin-bottom: 15px;
	 color:white;
	
}

.subtitle {
	font-size: 17px;
	max-width: 750px;
	margin: auto;
	line-height: 1.8;
}

/* ==========================
   PACKAGE INFO
========================== */
.package-info {
	width: 90%;
	margin: -60px auto 60px;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
	gap: 25px;
	position: relative;
	z-index: 100;
}

.info-box {
	background: #fff;
	border-radius: 15px;
	text-align: center;
	padding: 30px 20px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, .12);
	transition: .4s;
}

.info-box:hover {
	transform: translateY(-10px);
}

.info-box i {
	font-size: 38px;
	color: #0b78b5;
	margin-bottom: 15px;
}

.info-box h3 {
	color: #0b78b5;
	margin-bottom: 10px;
}

.info-box p {
	color: #666;
}

/* ==========================
   DAY SECTION
========================== */
.day-section {
	width: 92%;
	margin: 60px auto;
}

.day-section h2 {
	color: #0b78b5;
	margin-bottom: 35px;
	border-left: 7px solid #0b78b5;
	padding-left: 15px;
	font-size: 32px;
}

/* ==========================
   PLACE GRID
========================== */
.places {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
	gap: 30px;
}

/* ==========================
   PLACE CARD
========================== */
.place-card {
	background: #fff;
	border-radius: 18px;
	overflow: hidden;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .12);
	transition: .4s;
}

.place-card:hover {
	transform: translateY(-12px);
}

/* ==========================
   CARD IMAGE
========================== */
.place-card img {
	width: 100%;
	height: 230px;
	object-fit: cover;
	transition: .5s;
}

.place-card:hover img {
	transform: scale(1.08);
}

/* ==========================
   CARD CONTENT
========================== */
.content {
	padding: 22px;
}

.content h3 {
	color: #0b78b5;
	margin-bottom: 12px;
	font-size: 24px;
}

.time {
	color: #444;
	margin-bottom: 10px;
	font-size: 15px;
}

.time i {
	color: #ff9800;
	margin-right: 8px;
}

.rating {
	color: #f4b400;
	font-weight: 600;
	margin-bottom: 15px;
}

.description {
	color: #666;
	line-height: 1.8;
	text-align: justify;
	margin-bottom: 20px;
}
/*=====================================
    VIEW LOCATION BUTTON
======================================*/
.place-card button {
	width: 100%;
	padding: 14px;
	border: none;
	border-radius: 10px;
	background: #0b78b5;
	color: #fff;
	font-size: 16px;
	font-weight: 600;
	cursor: pointer;
	transition: .4s;
}

.place-card button:hover {
	background: #085a87;
	transform: translateY(-3px);
	box-shadow: 0 10px 18px rgba(0, 0, 0, .2);
}

/*=====================================
        FOOTER
======================================*/
footer {
	background: #0b78b5;
	color: #fff;
	margin-top: 70px;
	padding: 60px 20px;
	text-align: center;
}

footer h2 {
	font-size: 34px;
	margin-bottom: 20px;
}

footer p {
	max-width: 850px;
	margin: auto;
	line-height: 1.8;
	font-size: 17px;
}

/*=====================================
    BACK BUTTON
======================================*/
.back-btn {
	margin-top: 35px;
	padding: 14px 35px;
	border: none;
	border-radius: 30px;
	background: #fff;
	color: #0b78b5;
	font-size: 17px;
	font-weight: bold;
	cursor: pointer;
	transition: .4s;
}

.back-btn:hover {
	background: #ffd54f;
	transform: translateY(-4px);
}

/*=====================================
        SCROLL BAR
======================================*/
::-webkit-scrollbar {
	width: 10px;
}

::-webkit-scrollbar-track {
	background: #ececec;
}

::-webkit-scrollbar-thumb {
	background: #0b78b5;
	border-radius: 10px;
}

::-webkit-scrollbar-thumb:hover {
	background: #074e72;
}

/*=====================================
      CARD ANIMATION
======================================*/
.place-card {
	animation: fadeUp .8s ease;
}

@
keyframes fadeUp {from { opacity:0;
	transform: translateY(40px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/*=====================================
        IMAGE HOVER
======================================*/
.place-card {
	overflow: hidden;
}

.place-card img {
	transition: .6s;
}

.place-card:hover img {
	transform: scale(1.12);
}

/*=====================================
    INFO BOX EFFECT
======================================*/
.info-box {
	position: relative;
	overflow: hidden;
}

.info-box::before {
	content: "";
	position: absolute;
	left: -100%;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(11, 120, 181, .08);
	transition: .5s;
}

.info-box:hover::before {
	left: 0;
}

/*=====================================
      DAY TITLE
======================================*/
.day-section h2 {
	position: relative;
}

.day-section h2::after {
	content: "";
	position: absolute;
	left: 0;
	bottom: -10px;
	width: 90px;
	height: 4px;
	background: #ff9800;
	border-radius: 20px;
}

/*=====================================
      RESPONSIVE
======================================*/
@media ( max-width :992px) {
	.hero {
		height: 60vh;
	}
	.overlay h1 {
		font-size: 45px;
	}
	.overlay p {
		font-size: 20px;
	}
	.package-info {
		grid-template-columns: repeat(2, 1fr);
	}
}

@media ( max-width :768px) {
	.hero {
		height: 55vh;
	}
	.overlay {
		width: 90%;
	}
	.overlay h1 {
		font-size: 35px;
	}
	.subtitle {
		font-size: 15px;
	}
	.package-info {
		grid-template-columns: 1fr;
		margin-top: -40px;
	}
	.day-section {
		width: 95%;
	}
	.day-section h2 {
		font-size: 28px;
	}
	.places {
		grid-template-columns: 1fr;
	}
	.place-card img {
		height: 220px;
	}
	footer h2 {
		font-size: 28px;
	}
}

@media ( max-width :480px) {
	.hero {
		height: 50vh;
	}
	.overlay h1 {
		font-size: 28px;
	}
	.overlay p {
		font-size: 16px;
	}
	.subtitle {
		font-size: 14px;
	}
	.content {
		padding: 18px;
	}
	.content h3 {
		font-size: 22px;
	}
	.description {
		font-size: 14px;
	}
	.place-card button {
		font-size: 15px;
	}
	.back-btn {
		width: 100%;
	}
}
</style>
</head>

<body>

	<!-- ================= HERO SECTION ================= -->
	<button class="back-btn">
		<i class="fa-solid fa-arrow-left"></i> Back To Packages
	</button>
	<section class="hero">


		
<div class="overlay">
     <section class="relative h-[550px] bg-cover bg-center"
   style="background-image: url('https://img.magnific.com/premium-photo/old-fishing-boats-beach-india_771380-2453.jpg?semt=ais_hybrid&w=740&q=80');
            background-size: cover;
            background-position: center;
            height: 550px;
            width: 100%;">



<h1>RPVJ TOURISM MANAGEMENT</h1>


<p class="subtitle">“One’s destination is never a place, but rather a new way of seeing things.”</p>

</div>

</section>

	<!-- ================= PACKAGE INFO ================= -->

	<section class="package-info">

		<div class="info-box">
			<i class="fa-solid fa-location-dot"></i>
			<h3>Destination</h3>
			<p>Goa</p>
		</div>

		<div class="info-box">
			<i class="fa-solid fa-calendar-days"></i>
			<h3>Duration</h3>
			<p>5 Days / 4 Nights</p>
		</div>

		<div class="info-box">
			<i class="fa-solid fa-hotel"></i>
			<h3>Hotel</h3>
			<p>4 Star Hotel</p>
		</div>

		<div class="info-box">
			<i class="fa-solid fa-utensils"></i>
			<h3>Meals</h3>
			<p>Breakfast & Dinner</p>
		</div>

	</section>

	<!-- ================= DAY 1 ================= -->
	<section class="day-section">

		<h2>PLACES
		</h2>
		<div class="places">
		<%
	int lid = Integer.parseInt(request.getParameter("package_id"));
	LocationDAO ldao = new LocationDAOImpl();
	List<Location> location = ldao.getAllLocation();
	
	PackageDAO pdao=new PackageDAOImpl();
	List<Package> packages=pdao.getAllPackage();
	
	Location loc = null;
	for (Location l : location) {
		if (l.getPid() == lid) {
			loc = l;
	%>


			<!-- Card 1 -->

			<div class="place-card">

				<img src="<%=request.getContextPath()%>/<%=loc.getImage_path()%>">

				<div class="content">

					<h3><%=loc.getLname()%></h3>

					<p class="time">
						<i class="fa-solid fa-clock"></i> 9:00 AM - 11:30 AM
					</p>

					<p class="rating">★★★★★ (4.8)</p>

					<p class="description"><%=loc.getDescription()%></p>

					<button>View Location</button>

				</div>

			</div>
			<%
			}
			}
			%>

			<!-- Card 2 -->
	</section>


	<!-- ================= FOOTER ================= -->

	<footer>

		<h2>Thank You For Choosing Our Goa Tour</h2>

		<p>We hope you enjoyed this amazing 5 Days / 4 Nights journey. We
			look forward to welcoming you again on your next adventure.</p>

		<button class="back-btn">
			<i></i> Book Package
		</button>

	</footer>
	<script>
    /* ===========================
   GOA TOUR PAGE SCRIPT
=========================== */

// Welcome Message
/*window.onload = function () {
    setTimeout(() => {
        alert("🌴 Welcome to the Goa Beach Tour!\nEnjoy your 5 Days / 4 Nights journey.");
    }, 500);
};

/* ===========================
   GOOGLE MAP LOCATIONS
=========================== */

const locations = {
			    // Munnar
			    "Eravikulam National Park":
			        "https://maps.google.com/?q=Eravikulam+National+Park+Munnar",

			    "Mattupetty Dam":
			        "https://maps.google.com/?q=Mattupetty+Dam+Munnar",

			    "Tea Museum":
			        "https://maps.google.com/?q=KDHP+Tea+Museum+Munnar",

			    "Top Station":
			        "https://maps.google.com/?q=Top+Station+Munnar",

			    "Attukad Waterfalls":
			        "https://maps.google.com/?q=Attukad+Waterfalls+Munnar",


			    // Goa
			    "Dudhsagar Falls":
			        "https://maps.google.com/?q=Dudhsagar+Falls+Goa",

			    "Candolim Beach":
			        "https://maps.google.com/?q=Candolim+Beach+Goa",

			    "Baga Beach":
			        "https://maps.google.com/?q=Baga+Beach+Goa",

			    "Basilica of Bom Jesus":
			        "https://maps.google.com/?q=Basilica+of+Bom+Jesus+Goa",

			    "Arambol Sweet Water Lake":
			        "https://maps.google.com/?q=Arambol+Sweet+Water+Lake+Goa",


			    // Coorg
			    "Abbey Falls":
			        "https://maps.google.com/?q=Abbey+Falls+Coorg",

			    "Raja's Seat":
			        "https://maps.google.com/?q=Raja's+Seat+Madikeri",

			    "Nagarhole National Park":
			        "https://maps.google.com/?q=Nagarhole+National+Park",

			    "Mandalpatti View Point":
			        "https://maps.google.com/?q=Mandalpatti+View+Point+Coorg",

			    "Madikeri Fort":
			        "https://maps.google.com/?q=Madikeri+Fort",


			    // Kochi
			    "Fort Kochi":
			        "https://maps.google.com/?q=Fort+Kochi",

			    "Mattancherry Palace":
			        "https://maps.google.com/?q=Mattancherry+Palace",

			    "Marine Drive":
			        "https://maps.google.com/?q=Marine+Drive+Kochi",

			    "Jew Town and Paradesi Synagogue":
			        "https://maps.google.com/?q=Paradesi+Synagogue+Kochi",

			    "Cherai Beach":
			        "https://maps.google.com/?q=Cherai+Beach",


			    // Hampi
			    "Stone Chariot":
			        "https://maps.google.com/?q=Stone+Chariot+Hampi",

			    "Lotus Mahal":
			        "https://maps.google.com/?q=Lotus+Mahal+Hampi",

			    "Elephant Stables":
			        "https://maps.google.com/?q=Elephant+Stables+Hampi",

			    "Royal Enclosure":
			        "https://maps.google.com/?q=Royal+Enclosure+Hampi",

			    "Tungabhadra River":
			        "https://maps.google.com/?q=Tungabhadra+River+Hampi",


			    // Mysore
			    "Mysore Palace":
			        "https://maps.google.com/?q=Mysore+Palace",

			    "Chamundi Temple":
			        "https://maps.google.com/?q=Chamundeshwari+Temple+Mysore",

			    "Lalitha Mahal":
			        "https://maps.google.com/?q=Lalitha+Mahal+Palace+Mysore",

			    "Brindavan Gardens":
			        "https://maps.google.com/?q=Brindavan+Gardens+Mysore",

			    "Karanji Lake":
			        "https://maps.google.com/?q=Karanji+Lake+Mysore"
};

/* ===========================
   VIEW LOCATION BUTTON
=========================== */

const buttons = document.querySelectorAll(".place-card button");

buttons.forEach((button) => {

    button.addEventListener("click", function () {

        const place =
            this.parentElement.querySelector("h3").innerText;

        window.open(locations[place], "_blank");

    });

});

/* ===========================
   BACK BUTTON
=========================== */

const backBtn = document.querySelector(".back-btn");

if(backBtn){

backBtn.addEventListener("click",function(){

window.location.href="index.jsp";

});

}

/* ===========================
   SCROLL ANIMATION
=========================== */

const cards=document.querySelectorAll(".place-card");

const observer=new IntersectionObserver((entries)=>{

entries.forEach((entry)=>{

if(entry.isIntersecting){

entry.target.style.opacity="1";

entry.target.style.transform="translateY(0px)";

}

});

},{threshold:0.2});

cards.forEach((card)=>{

card.style.opacity="0";

card.style.transform="translateY(60px)";

card.style.transition="0.7s";

observer.observe(card);

});

/* ===========================
   HERO TEXT ANIMATION
=========================== */

const hero=document.querySelector(".overlay");

hero.animate(

[
{opacity:0,transform:"translateY(-40px)"},
{opacity:1,transform:"translateY(0px)"}
],

{
duration:1200
}

);

/* ===========================
   CARD HOVER EFFECT
=========================== */

cards.forEach((card)=>{

card.addEventListener("mouseenter",()=>{

card.style.boxShadow="0 18px 35px rgba(0,0,0,.25)";

});

card.addEventListener("mouseleave",()=>{

card.style.boxShadow="0 8px 20px rgba(0,0,0,.15)";

});

});


</script>

</body>
</html>