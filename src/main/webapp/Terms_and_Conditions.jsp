<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>Terms and Conditions</title>
		<link rel="icon" type="img/jpg" href="img/logo_fav.jpg">

		<link href="css/header_footer.css" type="text/css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/terms_and_conditions.css">

		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap"
			rel="stylesheet">

	</head>

	<body>

		<div id="top_nav_container_main">
			<div id="logo_container">
				<a href="index.jsp">
					<img src="img/logo.jpg" alt="logo" id="logo">
				</a>
			</div>

			<div id="nav_links_container">
				<a href="../OOP-SHA/contact-form.jsp" title="Contact Us">Help</a>
				<a href="#" class="hov_border ">Sign up</a>
				<div>
					<img src="img/icons/prof_l.png" alt="prof_icon" id="prof_icon"
						style="width: 40px; height: auto; margin: 10px; cursor: pointer;" onclick="showDropDown()">
				</div>
			</div>
		</div>

		<div id="drop_menu_nav">
			<div id="drop_menu_content">
				<a href="#" class="hov_border">Sign in</a>
				<a href="#" class="hov_border">Dashboard</a>
				<a href="#" class="hov_border">Sign Out</a>
			</div>
		</div>
		<section id="terms">
			<div class="container">
				<h2>Terms and Conditions</h2>
				<p>Welcome to BusSwap. By accessing this website, you agree to comply with and be bound by the following
					terms and conditions:</p>
				<ol>
					<li>This website is owned and operated by BusSwap.</li>
					<li>These terms and conditions govern your use of this website; by using this website, you accept
						these terms and conditions in full.</li>
					<li>Your use of this website is subject to the laws of the Sri Lanka.</li>
					<li>This website uses cookies. By using this website and agreeing to these terms and conditions,
						you consent to BusSwap's use of cookies in accordance with the terms of BusSwap's privacy
						policy.</li>

				</ol>
				<h3>Restrictions</h3>
				<p>You are expressly and emphatically restricted from all of the following:</p>
				<ul>
					<li>publishing any website material in any media;</li>
					<li>selling, sublicensing and otherwise commercializing any website material;</li>
					<li>publicly performing and showing any website material;</li>

				</ul>
				<h3>Changes to Terms and Conditions</h3>
				<p>BusSwap reserves the right to revise these terms and conditions at any time without notice. By using
					this
					website you are agreeing to be bound by the then current version of these terms and conditions.</p>
			</div>
		</section>

		<div id="footer_container_main">

			<div id="footer_top">

				<div id="footer_section1" class="footer_sections">

					<a href="../OOP-SHA/Aboutus.jsp">About</a>
					<br>
					<a href="../OOP-SHA/contact-form.jsp" title="Contact Us">Support</a>
					<br>
					<a href="Terms_and_Conditions.jsp">Terms and conditions</a>
					<br>
					<a href="privacy_policy.jsp">Privacy Policy</a>
					<br>
					<a href="../OOP-SHA/feedback.jsp">Feedback</a>
				</div>

				<div id="footer_section2" class="footer_sections">
					<a href="index.jsp">
						<img src="img/logo.jpg" alt="logo" id="logo">
					</a>
				</div>

				<div id="footer_section3" class="footer_sections">
					<a href="mailto:busswap@info.com">Busswap@info.com</a>
					<br>
					<a href="tel:+94024021258">+94 024 021 258</a>
					<br><br>

					<div id="social_container">

						<a href="">
							<img src="img/facebook.png" alt="facebook">
						</a>
						<a href="">
							<img src="img/instagram.png" alt="instagram">
						</a>
						<a href="">
							<img src="img/twitter.png" alt="twitter">
						</a>
						<a href="">
							<img src="img/whatsapp.png" alt="whatsapp">
						</a>
					</div>
				</div>

			</div>

			<div id="footer_bottom">
				<p>
					Copyright © BusSwap.com
				</p>
			</div>

		</div>

		<script>
			function showDropDown() {
				document.getElementById("drop_menu_nav").style.display = "block";
			}

		</script>

		<script>
			document.addEventListener('click', function (event) {
				var dropdownMenu = document.getElementById('drop_menu_nav');
				var profileIcon = document.getElementById('prof_icon');

				if (event.target !== profileIcon && !dropdownMenu.contains(event.target)) {

					dropdownMenu.style.display = 'none';
				}
			});
		</script>


	</body>

	</html>