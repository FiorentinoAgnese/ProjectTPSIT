<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sign In FAMA</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/fonts/font-awesome-5.15.3/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="login/css/util.css">
<link rel="stylesheet" type="text/css" href="login/css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('login/images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="post"
					action="Registr">
					<span class="login100-form-logo"> <i
						class="zmdi zmdi-landscape"></i>
					</span> <span class="login100-form-title p-b-34 p-t-27"> Sign In </span>

					<div class="wrap-input100 validate-input"
						data-validate="Enter name">
						<input class="input100" type="text" name="name" placeholder="Name">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter Surname">
						<input class="input100" type="text" name="surname"
							placeholder="Surname"> <span class="focus-input100"
							data-placeholder="&#xf207;"></span>
					</div>

					<!-- <div class="wrap-input100 validate-input" data-validate = "Enter Address">
						<input class="input100" type="address" name="address" placeholder="Address">
						<span class="focus-input100" data-placeholder="&#xf175;"></span>
					</div> -->

					<!-- <div class="wrap-input100 validate-input" data-validate = "Enter Fiscal Code">
						<input class="input100" type="text" name="fiscalcode" placeholder="Fiscal Code"
						pattern="^[a-zA-Z]{6}[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{3}[a-zA-Z]$"
						required="required">
						<span class="focus-input100" data-placeholder="&#xf129;"></span>
					</div> -->

					<div class="wrap-input100 validate-input"
						data-validate="Enter date of birthday">
						<input class="input100" type="date" name="dateofbirthday"
							placeholder="Date of birthday"> <span
							class="focus-input100" data-placeholder="&#xf109;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter email">
						<input class="input100" type="email" name="email"
							placeholder="Email"> <span class="focus-input100"
							data-placeholder="&#xf15a;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter telephone Number">
						<input class="input100" type="tel" name="tel"
							placeholder="Telephone Number"> <span
							class="focus-input100" data-placeholder="&#xf2b6;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter username">
						<input class="input100" type="text" name="username"
							placeholder="Username"> <span class="focus-input100"
							data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<input class="input100" type="password" name="pass"
							placeholder="Password"> <span class="focus-input100"
							data-placeholder="&#xf191;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Confirm password">
						<input class="input100" type="password" name="pass1"
							placeholder="Confirm Password"> <span
							class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox"
							name="remember-me"> <label class="label-checkbox100"
							for="ckb1"> Remember me </label>
					</div>

					<div class="container-login100-form-btn">
						<!--  <button class="login100-form-btn">
							Sign In
						</button>-->
						<input type="submit" value="Invia">
					</div>
			</div>
			</form>
		</div>
	</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/daterangepicker/moment.min.js"></script>
	<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="login/js/main.js"></script>
	<!--commit-->
</body>
</html>