<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Package</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #eef5ff;
}

.card {
	border: none;
	border-radius: 20px;
}
</style>

</head>
<body>

	<div class="container mt-5">

		<div class="row justify-content-center">

			<div class="col-md-6">

				<div class="card shadow p-4">

					<h2 class="text-center text-primary">Add Tour Package</h2>

					<form action="addPackage" method="post">

						<div class="mb-3">
							<label>Package Name</label> <input type="text" name="pname"
								class="form-control" required>
						</div>
 
						<div class="mb-3">
							<label>Price</label> <input type="number" name="price"
								class="form-control" required>
						</div>

						<div class="mb-3">
							<label>No_Of_Days</label> <input type="number" name="no_of_days"
								class="form-control" required>
						</div>

						<button class="btn btn-primary w-100">Add Package</button>

					</form>
</body>
</html>