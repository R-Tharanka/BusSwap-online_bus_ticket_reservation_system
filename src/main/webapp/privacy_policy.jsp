<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Privacy Policy</title>

		<link rel="icon" type="img/jpg" href="img/logo_fav.jpg">

		<link href="css/header_footer.css" type="text/css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/privacy_policy.css">

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

		<div id="privacy_main_container">

			<header>
				<h1>Privacy Policy</h1>
			</header>

			<main>
				<section id="introduction">
					<h2>Introduction</h2>
					<p>Welcome to BusSwap's Privacy Policy. This policy outlines how we collect, use, and protect your
						personal information when you use our website.</p>
				</section>
				<section id="information-collected">
					<h2>Information We Collect</h2>
					<p>We may collect the following types of personal information:</p>
					<ul>
						<li>Information you provide voluntarily, such as when you create an account or make a
							reservation.</li>
						<li>Information collected automatically, including your IP address, browser type, and browsing
							behavior.</li>
						<li>Information collected from third-party sources, such as social media platforms if you choose
							to link your account.</li>
					</ul>
				</section>
				<section id="use-of-information">
					<h2>How We Use Your Information</h2>
					<p>We may use your personal information for the following purposes:</p>
					<ul>
						<li>To provide and personalize our services.</li>
						<li>To communicate with you about your reservations and account.</li>
						<li>To improve our website and services.</li>
						<li>To comply with legal obligations.</li>
					</ul>
				</section>
				<section id="data-security">
					<h2>Data Security</h2>
					<p>We take appropriate measures to protect your personal information from unauthorized access,
						alteration, or disclosure.</p>
				</section>
				<section id="third-party-links">
					<h2>Third-Party Links</h2>
					<p>Our website may contain links to third-party websites. We are not responsible for the privacy
						practices or content of these websites.</p>
				</section>
				<section id="changes-to-policy">
					<h2>Changes to This Privacy Policy</h2>
					<p>We may update this Privacy Policy from time to time. Any changes will be posted on this page.</p>
				</section>
			</main>

		</div>

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