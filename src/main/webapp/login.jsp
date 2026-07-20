<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tourism Management System</title>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<link rel="stylesheet" href="style.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background: #edf3fb;
	min-height: 100vh;
	padding: 40px;
}

/* Header */
header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 35px;
}

.logo {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 28px;
	font-weight: 700;
	color: #1565c0;
}

.logo i {
	font-size: 38px;
}

.adminBtn {
	padding: 14px 30px;
	background: #1565c0;
	color: white;
	border: none;
	border-radius: 35px;
	font-size: 16px;
	font-weight: 600;
	cursor: pointer;
	transition: .3s;
}

.adminBtn:hover {
	background: #0d47a1;
	transform: translateY(-2px);
}

/* Main Container */
.container {
	display: grid;
	grid-template-columns: 1fr 1fr;
	background: white;
	border-radius: 30px;
	overflow: hidden;
	box-shadow: 0 15px 40px rgba(0, 0, 0, .08);
}

/* Left */
.loginBox {
	padding: 60px;
	border-right: 1px solid #e8e8e8;
}

.loginBox h1 {
	font-size: 46px;
	font-weight: 700;
	margin-bottom: 8px;
	color: #111;
}

.loginBox p {
	font-size: 17px;
	color: #666;
	margin-bottom: 35px;
}

/* Right */
.registerBox {
	padding: 60px;
}

.registerBox h1 {
	font-size: 46px;
	font-weight: 700;
	margin-bottom: 8px;
	color: #111;
}

.registerBox p {
	font-size: 17px;
	color: #666;
	margin-bottom: 35px;
}

/* Inputs */
.inputBox {
	margin-bottom: 20px;
}

.inputBox label {
	display: block;
	font-weight: 600;
	margin-bottom: 8px;
	color: #333;
}

.inputBox input {
	width: 100%;
	padding: 18px 22px;
	font-size: 16px;
	border: 2px solid #2f80ed;
	border-radius: 18px;
	outline: none;
	transition: .3s;
	background: white;
}

.inputBox input:focus {
	border-color: #1565c0;
	box-shadow: 0 0 8px rgba(21, 101, 192, .25);
}

/* Remember */
.row {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin: 18px 0 28px;
	font-size: 15px;
}

.row a {
	text-decoration: none;
	color: #1565c0;
	font-weight: 500;
}

/* Buttons */
.login, .register {
	width: 100%;
	padding: 18px;
	border: none;
	border-radius: 40px;
	font-size: 22px;
	font-weight: 600;
	cursor: pointer;
	transition: .3s;
	color: white;
}

.login {
	background: #1565c0;
}

.login:hover {
	background: #0d47a1;
	transform: translateY(-3px);
}

.register {
	background: #0ea56d;
}

.register:hover {
	background: #0b8458;
	transform: translateY(-3px);
}

/* Modal */
.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .45);
	display: none;
	justify-content: center;
	align-items: center;
	z-index: 100;
}

.modalBox {
	width: 380px;
	background: white;
	padding: 35px;
	border-radius: 25px;
	box-shadow: 0 20px 45px rgba(0, 0, 0, .2);
}

.modalBox h2 {
	text-align: center;
	margin-bottom: 25px;
	font-size: 30px;
	color: #1565c0;
}

.modalBox input {
	width: 100%;
	padding: 16px;
	margin-bottom: 18px;
	border: 2px solid #2f80ed;
	border-radius: 15px;
	outline: none;
	font-size: 16px;
}

.modalBox button {
	width: 100%;
	padding: 16px;
	background: #1565c0;
	color: white;
	font-size: 18px;
	font-weight: 600;
	border: none;
	border-radius: 30px;
	cursor: pointer;
	transition: .3s;
}

.modalBox button:hover {
	background: #0d47a1;
}

/* Responsive */
@media ( max-width :900px) {
	.container {
		grid-template-columns: 1fr;
	}
	.loginBox {
		border-right: none;
		border-bottom: 1px solid #e8e8e8;
	}
	header {
		flex-direction: column;
		gap: 20px;
	}
	.loginBox, .registerBox {
		padding: 35px;
	}
	.loginBox h1, .registerBox h1 {
		font-size: 34px;
	}
}
</style>

</head>

<body>

	<header>

		<div class="logo">

			<i class="fa-solid fa-earth-asia"></i> <span>Tourism
				Management</span>

		</div>

		<button class="adminBtn">Admin Login</button>

	</header>

	<section class="container">

		<div class="loginBox">

			<h1>Welcome Back</h1>

			<p>Login to continue your journey.</p>

			<form action="login" method="post">

				<div class="inputBox">
					<label>Email Address *</label> <input type="email" name="email"
						placeholder="Enter Email">
				</div>

				<div class="inputBox">
					<label>Password *</label> <input type="password" name="password"
						placeholder="Enter Password">
				</div>

				<div class="row">


					<a href="#">Forgot Password?</a>

				</div>
				<div class="row">
					<a href="forgotPassword.jsp">Forgot Password?</a>
				</div>
				<button type="submit" class="login">Login</button>

			</form>

		</div>

		<div class="registerBox">

			<h1>Create Account</h1>

			<p>Create your tourism account.</p>

			<form action="signup" method="post">

				<div class="inputBox">
					<label>Full Name *</label> <input type="text" name="name"
						placeholder="Full Name">
				</div>

				<div class="inputBox">
					<label>Phone Number *</label> <input type="text" name="phone"
						placeholder="Phone Number">
				</div>

				<div class="inputBox">
					<label>Email Address *</label> <input type="email" name="email"
						placeholder="Email">
				</div>

				<div class="inputBox">
					<label>Password *</label> <input type="password" name="password"
						placeholder="Password">
				</div>

				<div class="inputBox">
					<label>Confirm Password *</label> <input type="password"
						name="confirm" placeholder="Confirm Password">
				</div>

				<button type="submit" class="register">Create Account</button>

			</form>
		</div>

	</section>

	<div class="modal">

		<div class="modalBox">

			<h2>Admin Login</h2>

			<input type="text" placeholder="Admin ID"> <input
				type="password" placeholder="Password">

			<button>Login</button>

		</div>

	</div>

	<script src="script.js"></script>

</body>

</html>