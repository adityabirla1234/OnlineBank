<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Bank Services</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
	<style>
		/* Background image styles */
		.bg-img {
			background-image: url('images/Bank2.jpg');
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
			height: 50vh;
		}
		.overlay {
			background-color: rgba(0, 0, 0, 0.5);
			height: 100%;
		}
	</style>
</head>
<body>
	<header class="bg-primary py-2">
		<div class="container d-flex justify-content-between align-items-center">
			  <h1 class="text-white">Bank Services</h1>
			<nav>
				<ul class="list-unstyled d-flex mb-0">
					<li><a href="./" class="text-white text-decoration-none me-3">Home</a></li>
					<!--<li><a href="#" class="text-white text-decoration-none me-3">About Us</a></li>
					<li><a href="#" class="text-white text-decoration-none me-3">Services</a></li>
					<li><a href="#" class="text-white text-decoration-none me-3">Contact Us</a></li>-->
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
							<h1>Bank Services Made Simple</h1>
							<p class="lead">Our bank offers a range of services to make your financial life easy, including depositing funds and checking your balance.</p>
							<button class="btn btn-primary">Learn More</button>
						</div>
						<div class="col-md-6"></div>
					</div>
				</div>
			</div>
		</section>

		<section class="py-5">
			<div class="container">
				<h2 class="text-center mb-4">Our Services</h2>
				<div class="row">
					<div class="col-md-4 mb-4">
						<div class="card">
							<a href="add"><img src="images/Presentation1.jpg" alt="Deposit" class="card-img-top"></a>
							<div class="card-body">
								<h3 class="card-title mb-3">Deposit Funds</h3>
								<p class="card-text">Easily deposit funds into your account using our online banking system or by visiting one of our branches.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-4">
						<div class="card">
						
							<a href="checkBalance"> <img src="images/CheckBalance.jpg" alt="Checking Balance" class="card-img-top"></a>
							
    