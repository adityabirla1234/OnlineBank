<%@ page isELIgnored="false"%>

<!--  <h1 style="color:red;text-align:center">WELCOME TO BANK SERVICES</h1>

<a href="add">Deposit</a> &nbsp; &nbsp;
<a href="withdraw">Withdraw</a> &nbsp; &nbsp;
<a href="checkBalance">CheckBalance</a>-->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Online Bank</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
	<style>
		/* Background image styles */
		.bg-img {
			background-image: url('images/bankFront.jpg');
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
			height: 100vh;
		}
		.overlay {
			background-color: rgba(1, 1, 1, 0.5);
			height: 100%;
		}
	</style>
</head>
<body>
	<header class="bg-primary py-2">
		<div class="container d-flex justify-content-between align-items-center">
			<h1 class="text-white">Digital Bank </h1>
			<nav>
				<ul class="list-unstyled d-flex mb-0">
					<li><a href="#" class="text-white text-decoration-none me-3">Home</a></li>
					<li><a href="#" class="text-white text-decoration-none me-3">About Us</a></li>
					<li><a href="services" class="text-white text-decoration-none me-3">Services</a></li>
					<li><a href="#" class="text-white text-decoration-none me-3">Contact Us</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<main>
		<section class="bg-img">
			<div class="overlay">
				<div class="container py-5">
					<div class="row">
						<div class="col-md-6 text-white">
							<h1>Banking for Everyone</h1>
							<p class="lead">We offer a range of banking services to meet your needs, whether you're saving for a rainy day or planning your retirement.</p>
							<button class="btn btn-primary">Learn More</button>
						</div>
						<div class="col-md-6"></div>
					</div>
				</div>
			</div>
		</section>

		