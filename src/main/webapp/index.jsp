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

        <button
            class="mt-8 bg-emerald-600 hover:bg-emerald-700 px-8 py-4 rounded-full font-semibold text-lg transition duration-300">
            Explore Packages
        </button>

    </div>

</section>

<!-- Packages -->
<section class="max-w-7xl mx-auto py-16 px-6">

    <div class="text-center mb-12">

        <h2 class="text-4xl font-bold text-slate-800">
            Popular Tour Packages
        </h2>

        <p class="text-slate-500 mt-3">
            Handpicked destinations for every traveler.
        </p>

    </div>

    <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">

        <!-- Card -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg hover:shadow-2xl hover:-translate-y-2 transition duration-300">

            <img src="https://i.pinimg.com/474x/19/e1/80/19e1802e028a0921fe56820927bf5844.jpg?nii=t"
                 class="h-60 w-full object-cover">

            <div class="p-6">

                <span class="text-sm text-emerald-600 font-semibold uppercase">
                    Munnar
                </span>

                <h3 class="text-2xl font-bold mt-2">
                    Altitude Adjustment
                </h3>

                <p class="text-slate-600 mt-3">
                    Tea estates, misty mountains, waterfalls and scenic viewpoints.
                </p>

                <button class="mt-6 bg-emerald-600 hover:bg-emerald-700 text-white px-5 py-3 rounded-lg">
                    View Package
                </button>

            </div>

        </div>

        <!-- Goa -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg hover:shadow-2xl hover:-translate-y-2 transition">

            <img src="https://i.pinimg.com/736x/2a/20/d1/2a20d147aab2a7afa7ed29562fe571da.jpg"
                 class="h-60 w-full object-cover">

            <div class="p-6">

                <span class="text-sm text-blue-600 font-semibold uppercase">
                    Goa
                </span>

                <h3 class="text-2xl font-bold mt-2">
                    Beach Bliss
                </h3>

                <p class="text-slate-600 mt-3">
                    Relax on pristine beaches, enjoy nightlife and thrilling water sports.
                </p>

                <button class="mt-6 bg-blue-600 hover:bg-blue-700 text-white px-5 py-3 rounded-lg">
                    View Package
                </button>

            </div>

        </div>

        <!-- Hampi -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg hover:shadow-2xl hover:-translate-y-2 transition">

            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRGXYPXzWW7QkISzY5rSS3E8vSnPCc_MwO4VKZfx2loP8urdgPfDR7-as&s=10"
                 class="h-60 w-full object-cover">

            <div class="p-6">

                <span class="text-sm text-amber-600 font-semibold uppercase">
                    Hampi
                </span>

                <h3 class="text-2xl font-bold mt-2">
                    Historic Heritage
                </h3>

                <p class="text-slate-600 mt-3">
                    Walk through the timeless ruins of the Vijayanagara Empire.
                </p>

                <button class="mt-6 bg-amber-600 hover:bg-amber-700 text-white px-5 py-3 rounded-lg">
                    View Package
                </button>

            </div>

        </div>

        <!-- Mysore -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg hover:shadow-2xl hover:-translate-y-2 transition">

            <img src="https://static.toiimg.com/photo/51010213.cms"
                 class="h-60 w-full object-cover">

            <div class="p-6">

                <span class="text-sm text-purple-600 font-semibold uppercase">
                    Mysore
                </span>

                <h3 class="text-2xl font-bold">
                    Royal Reverie
                </h3>

                <p class="text-slate-600 mt-3">
                    Explore grand palaces, gardens and Karnataka's royal heritage.
                </p>

                <button class="mt-6 bg-purple-600 hover:bg-purple-700 text-white px-5 py-3 rounded-lg">
                    View Package
                </button>

            </div>

        </div>

        <!-- Kochi -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg hover:shadow-2xl hover:-translate-y-2 transition">

            <img src="https://preview.redd.it/aesthetic-chayakudi-spots-around-kochi-v0-izie5oikxztg1.jpg?width=640&crop=smart&auto=webp&s=aa4bfb289092d48ba91fae45a3320d2d4c6470ab"
                 class="h-60 w-full object-cover">

            <div class="p-6">

                <span class="text-sm text-cyan-600 font-semibold uppercase">
                    Kochi
                </span>

                <h3 class="text-2xl font-bold">
                    Coastal Charms
                </h3>

                <p class="text-slate-600 mt-3">
                    Discover Chinese fishing nets, spice markets and backwaters.
                </p>

                <button class="mt-6 bg-cyan-600 hover:bg-cyan-700 text-white px-5 py-3 rounded-lg">
                    View Package
                </button>

            </div>

        </div>

        <!-- Coorg -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg hover:shadow-2xl hover:-translate-y-2 transition">

            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1WKSz8QtL0kLW7cVEYI3evBhmHKhdKnwl5EygB-byBQ&s=10"
                 class="h-60 w-full object-cover">

            <div class="p-6">

                <span class="text-sm text-green-600 font-semibold uppercase">
                    Coorg
                </span>

                <h3 class="text-2xl font-bold">
                    Coffee & Clouds
                </h3>

                <p class="text-slate-600 mt-3">
                    Escape into lush coffee plantations and mist-covered hills.
                </p>

                <button class="mt-6 bg-green-600 hover:bg-green-700 text-white px-5 py-3 rounded-lg">
                    View Package
                </button>

            </div>

        </div>

    </div>

</section>

<%@ include file="footer.jsp" %>
</body>

</body>
</html>