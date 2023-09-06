<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!--   <%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<h1 style="color:red;text-align:center">DEPOSIT MONEY</h1>
<frm:form modelAttribute="dpst">
<table border="0" align="center" bgcolor="cyan">
<tr>
<td>Name:</td>
<td><frm:input path="name"/></td>
</tr>
<tr>
<td>Branch:</td>
<td><frm:input path="branch"/></td>
</tr>
<tr>
<td>Amount:</td>
<td><frm:input path="amount"/></td>
</tr>
<tr>
<td>Account No:</td>
<td><frm:input path="accNo"/></td>
</tr>
<tr>
<td>Email:</td>
<td><frm:input path="email"/></td>
</tr>
<tr>
<td><input type="submit" value="deposit"></td>
</tr>
</table>
</frm:form>-->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Deposit Money</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
	<style>
		/* Background image styles */
		.bg-img {
			background-image: url('https://t3.ftcdn.net/jpg/02/13/65/88/240_F_213658817_OqIeNN9V84obya20HyZWlVirM6lk362I.jpg');
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
			height: 30vh;
		}
		.overlay {
			background-color: rgba(0, 0, 0, 0.5);
			height: 100%;
		}
		/* Form styles */
		form {
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
			padding: 20px;
			max-width: 500px;
			margin: 0 auto;
		}
		form label {
			font-weight: bold;
		}
	</style>
</head>
<body>
	<header class="bg-primary py-2">
		<div class="container d-flex justify-content-between align-items-center">
			<h1 class="text-white">Deposit Money</h1>
			<nav>
				<ul class="list-unstyled d-flex mb-0">
					<li><a href="./" class="text-white text-decoration-none me-3">Home</a></li>
					
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
							<h1>Deposit Money</h1>
							<p class="lead">Use the form below to deposit money into your account.</p>
						</div>
						<div class="col-md-6"></div>
					</div>
				</div>
			</div>
		</section>

		<section class="py-5">
			<div class="container">
		
			<frm:form modelAttribute="dpst">
				<div class="mb-3">
						<label for="name" class="form-label">Name</label>
						<input type="text" class="form-control" id="name" name="name" required>
					</div>
					<div class="mb-3">
						<label for="branch" class="form-label">Branch</label>
						<input type="text" class="form-control" id="branch" name="branch" required>
					</div>
					<div class="mb-3">
						<label for="amount" class="form-label">Amount</label>
						<input type="number" class="form-control" id="amount" name="amount" required>
					</div>
					<div class="mb-3">
						<label for="accNo" class="form-label">Account No</label>
						<input type="number" class="form-control" id="accNo" name="accNo" required>
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email</label>
						<input type="email" class="form-control" id="email" name="email" required>
					</div>
					<button type="submit" class="btn btn-primary">Deposit</button>
						</frm:form>
						</div>
						</section>
						</main>
						</body>
						</html>
					