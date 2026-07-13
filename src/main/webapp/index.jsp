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
    style="background-image:url('https://c1.wallpaperflare.com/preview/988/16/35/sunset-kerala-aleppay-boat.jpg')">

    <div class="absolute inset-0 bg-black/50"></div>

    <div class="relative max-w-7xl mx-auto h-full flex flex-col justify-center items-center text-center text-white px-6">

        <h1 class="text-6xl font-extrabold mb-6">
            Discover South India
        </h1>

        <p class="text-xl max-w-3xl">
            From misty hills to golden beaches, royal palaces to ancient ruins,
            your next unforgettable journey starts here.
        </p>

        <button1
            class="mt-8 bg-emerald-600 hover:bg-emerald-700 px-8 py-4 rounded-full font-semibold text-lg transition duration-300">
            Explore Packages
        </button1>

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

.package-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
	gap: 30px;
	padding: 40px;
}

.card {
	background: white;
	border-radius: 15px;
	overflow: hidden;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
	transition: 0.4s;
}

.card:hover {
	transform: translateY(-8px);
}

.card img {
	width: 100%;
	height: 220px;
	object-fit: cover;
}

.content {
	padding: 20px;
}

.content h2 {
	margin-bottom: 10px;
	color: #222;
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
</style>


<section class="package-container">

<div class="card">
		
		 <img src="https://i.pinimg.com/474x/19/e1/80/19e1802e028a0921fe56820927bf5844.jpg?nii=t"
                 class="h-60 w-full object-cover">
		

		<div class="content">
			<h2>MUNNAR</h2>

			 <h3 class="text-2xl font-bold mt-2">
                    Altitude Adjustment
                </h3>
                <p class="text-slate-600 mt-3">
                    Tea estates, misty mountains, waterfalls and scenic viewpoints.
                </p>
			<p>Duration : 5 Days / 4 Nights</p>

			<p class="price ">₹15,499</p>

			<div class="rating">★★★★☆ (4.8)</div>

			<form action="bookPackage.jsp" method="get">
    <input type="hidden" name="pid" value="1">
    <button type="submit">Book Now</button>
</form>
		</div>
	</div>

	<div class="card">
		 <img src="https://i.pinimg.com/736x/2a/20/d1/2a20d147aab2a7afa7ed29562fe571da.jpg"
                 class="h-60 w-full object-cover">


		<div class="content">
			<h2> GOA</h2>

			
                <h3 class="text-2xl font-bold mt-2">
                     Beach Bliss
                     
                </h3>

                <p class="text-slate-600 mt-3">
                    Relax on pristine beaches, enjoy nightlife and thrilling water sports.
                </p>
			<p>Duration : 4 Days / 3 Nights</p>

			<p class="price">₹12,999</p>

			<div class="rating">★★★★☆ (4.5)</div>

			<form action="bookPackage.jsp" method="get">
    <input type="hidden" name="pid" value="2">
    <button type="submit">Book Now</button>
</form>
		</div>
	</div>

	<div class="card">
		  <img src="https://media.istockphoto.com/id/172124032/photo/mysore-palace-at-dusk.jpg?s=612x612&w=0&k=20&c=paO74C_dVsY14IbK0RNqs0TD-lSteQy-AW5CnQFEb_4="
                 class="h-60 w-full object-cover">


		<div class="content">
			<h2>MYSORE</h2>

			<h3 class="text-2xl font-bold mt-2">
				Mysore, Karnataka
			</h3>
			<p class="text-slate-600 mt-3">
                    Explore grand palaces, gardens and Karnataka's royal heritage.
                </p>

			<p>Duration : 3 Days / 2 Nights</p>

			<p class="price">₹8,999</p>

			<div class="rating">★★★★★ (5.0)</div>

			<form action="bookPackage.jsp" method="get">
    <input type="hidden" name="pid" value="3">
    <button type="submit">Book Now</button>
</form>		</div>
	</div>

	<div class="card">
		 <img src="https://preview.redd.it/aesthetic-chayakudi-spots-around-kochi-v0-izie5oikxztg1.jpg?width=640&crop=smart&auto=webp&s=aa4bfb289092d48ba91fae45a3320d2d4c6470ab"
                 class="h-60 w-full object-cover">
		<div class="content">
			<h2>KOCHI
</h2>

			<h3 class="text-2xl font-bold">
                    Coastal Charms
                </h3>

                <p class="text-slate-600 mt-3">
                    Discover Chinese fishing nets, spice markets and backwaters.
                </p>


			<p>Duration : 5 Days / 4 Nights</p>

			<p class="price">₹10,999</p>

			<div class="rating">★★★★☆ (4.7)</div>

			<form action="bookPackage.jsp" method="get">
    <input type="hidden" name="pid" value="4">
    <button type="submit">Book Now</button>
</form>
		</div>
	</div>

	<div class="card">
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuoqRM43rL6jWNsQRiqJ0ckhnR2zEUCL_ZycmaOLruWg&s=10"
                 class="h-60 w-full object-cover">

		<div class="content">
			<h2>HAMPI</h2>

			
			 <h3 class="text-2xl font-bold mt-2">
                    Historic Heritage
                </h3>

                <p class="text-slate-600 mt-3">
                    Walk through the timeless ruins of the Vijayanagara Empire.
                </p>

			<p>Duration : 6 Days / 5 Nights</p>

			<p class="price">₹18,999</p>

			<div class="rating">★★★★★ (5.0)</div>

			<form action="bookPackage.jsp" method="get">
    <input type="hidden" name="pid" value="5">
    <button type="submit">Book Now</button>
</form>
		</div>
	</div>

	
	<div class="card">
		
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1WKSz8QtL0kLW7cVEYI3evBhmHKhdKnwl5EygB-byBQ&s=10"
                 class="h-60 w-full object-cover">


		<div class="content">
			<h2>  COORG</h2>
                <h3 class="text-2xl font-bold">
                    Coffee & Clouds
                </h3>

                <p class="text-slate-600 mt-3">
                    Escape into lush coffee plantations and mist-covered hills.
                </p>

			<p>Duration : 7 Days / 6 Nights</p>

			<p class="price">₹25,999</p>
			

			<div class="rating">★★★★★ (5.0)</div>

			<form action="bookPackage.jsp" method="get">
    <input type="hidden" name="pid" value="6">
    <button type="submit">Book Now</button>
</form>
</section>


<%@ include file="footer.jsp"%>
</body>

</body>
</html>