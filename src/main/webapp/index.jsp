<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>BusSwap</title>

	<link rel="icon" type="img/jpg" href="https://i.ibb.co/JnzLw27/logo-fav.jpg">

	<link href="css/header_footer.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/home.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
	
	<style>
		
	</style>

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
				<img src="img/icons/prof_l.png" alt="prof_icon" id="prof_icon" style="width: 40px; height: auto; margin: 10px; cursor: pointer;" onclick="showDropDown()">
			</div>
		</div>
	</div>
	
	<div id="drop_menu_nav">
	    <div id="drop_menu_content">
	        <a href="../UserDemo/Login.jsp" class="hov_border">Sign in</a>
	        <a href="../UserDemo/UserAccount.jsp" class="hov_border">Dashboard</a>
	        <a href="" class="hov_border">Sign Out</a>
	    </div>
	</div>


	<div id="section2_main_container">
		<div id="headings_container">
			
			<h1 id="main_heading_h1">
				Find your ticket to <br>
				affordable travel
			</h1>
			<h3 id="main_heading_h3">
				Discover and book budject-friendly bus with ease
			</h3>

			<div id="main_img_div">
				<img src="img/home_main3_edit.jpg" alt="home image" id="home_img">
			</div>
		</div>

		<div id="search_container">

			<div id="form_container">
				
				<form action="search_result" method="POST" id="main_form">

					<div class="search_input_parts">
						
						<label for="origin">Origin</label>
						<br>
						<input id="origin" list="origins" name="origin" type="text">
						<datalist id="origins">
							<option value="Galle">Galle</option>
							<option value="colombo">colombo</option>
							<option value="Mathara">Mathara</option>
							<option value="Hambanthota">Hambanthota</option>
							<option value="Ambalangoda">Ambalangoda</option>
							<option value="Elpitiya">Elpitiya</option>
							<option value="Kandy">Kandy</option>
						</datalist>

					</div>


					<div class="search_input_parts">
						
						<label for="destination">Destination</label>
						<br>
						<input type="text" name="destination" id="destination" list="destinations">
						<datalist id="destinations">
							<option value="Galle">Galle</option>
							<option value="colombo">colombo</option>
							<option value="Mathara">Mathara</option>
							<option value="Hambanthota">Hambanthota</option>
							<option value="Ambalangoda">Ambalangoda</option>
							<option value="Elpitiya">Elpitiya</option>
							<option value="Kandy">Kandy</option>
						</datalist>

					</div>
					<!-- 
					<div class="search_input_parts">
						
						<label for="date">Date</label>
						<br>
						<input type="date" name="date" id="date">

					</div>
					
					<div class="search_input_parts">
						
						<label for="ticket">Tickets</label>
						<br>
						<input type="number" name="Tickets" id="ticket">

					</div>
					 -->

					<div class="search_input_parts" id="main_search_div">
						<input type="submit" name="submit" value="Search">
					</div>

				</form>
				
				<p id="null_error">${errorMessage}</p>

			</div>

		</div>

		<!--
		<div id="curve_div">
			
		</div>
		-->
	</div>

	<div id="section3_main_container">

		<div id="section3_header">
			<h1 id="section3_header_h1">About Us</h1>
		</div>

		<div id="section3_divs">
			
			<div id="section3_part1" class="choose_imgs_divs">
				<div class="inner_div_section3_parts">
					<img src="img/choose1.jpg" alt="image" class="choose_imgs">
					<h3 class="section3_header_h3s">Adipiscing elit</h3>
					<p>
						Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
			</div>

			<div id="section3_part1" class="choose_imgs_divs">
				<div class="inner_div_section3_parts">
					<img src="img/choose2.jpg" alt="image" class="choose_imgs">
					<h3 class="section3_header_h3s">consectetur Sed</h3>
					<p>
						Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
			</div>

			<div id="section3_part1" class="choose_imgs_divs">
				<div class="inner_div_section3_parts">
					<img src="img/choose3.jpg" alt="image" class="choose_imgs">
					<h3 class="section3_header_h3s">consectetur elit</h3>
					<p>
						Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
			</div>

		</div>

	</div>

	<div id="section4_main_container">

		<div id="section4_header">
			<h1 id="section4_header_h1">What Our Guests Says</h1>
			
			<div>
				<a href="../OOP-SHA/feedback.jsp">
					<h3>Provide Feedback To Us</h3>
				</a>
			</div>
		</div>

		<div id="navigation_arrows_divs">
			<a href="#Reviews" class="arrow arrow-left">
				<img src="img/left_arrow.png" alt="arrow_img" class="navigation_arrow" id="left_navigation_arrow">
			</a>

	        <a href="#Reviews" class="arrow arrow-right">
	        	<img src="img/right_arrow.png" alt="arrow_img" class="navigation_arrow" id="right_navigation_arrow">
	        </a>	
		</div>

		<div id="section4_divs">
			
			<div id="section4_part1" class="review_parts">
				<div class="inner_div_section4_parts">

					<div class="review_top">
						<img src="img/p1_man.jpg" alt="image" class="review_profile">
						<div> 
							<h4 class="review_heading">Adipiscing elit amet</h4>
							<p>eiusmod tempor</p>
						</div>
					</div>

					<div class="star_ratings">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
					</div>

					<hr class="review_hr">
					
					<div id="review_bottom">
						<img src="img/quote_top.png" alt="quote" id="quote_top">
						<p class="review_content">
							Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</p>
						<img src="img/quote_bottom.png" alt="quote" id="quote_bottom">
					</div>
				</div>
			</div>	

			<div id="section4_part2" class="review_parts">
				<div class="inner_div_section4_parts">

					<div class="review_top">
						<img src="img/p2_girl.jpg" alt="image" class="review_profile">
						<div> 
							<h4 class="review_heading">Adipiscing elit amet</h4>
							<p>eiusmod tempor</p>
						</div>
					</div>

					<div class="star_ratings">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
					</div>

					<hr class="review_hr">
					
					<div id="review_bottom">
						<img src="img/quote_top.png" alt="quote" id="quote_top">
						<p class="review_content">
							Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</p>
						<img src="img/quote_bottom.png" alt="quote" id="quote_bottom">
					</div>
				</div>
			</div>	

			<div id="section4_part3" class="review_parts">
				<div class="inner_div_section4_parts">

					<div class="review_top">
						<img src="img/p1_man.jpg" alt="image" class="review_profile">
						<div> 
							<h4 class="review_heading">Adipiscing elit amet</h4>
							<p>eiusmod tempor</p>
						</div>
					</div>

					<div class="star_ratings">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
					</div>

					<hr class="review_hr">
					
					<div id="review_bottom">
						<img src="img/quote_top.png" alt="quote" id="quote_top">
						<p class="review_content">
							Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</p>
						<img src="img/quote_bottom.png" alt="quote" id="quote_bottom">
					</div>
				</div>
			</div>	

			<div id="section4_part4" class="review_parts">
				<div class="inner_div_section4_parts">

					<div class="review_top">
						<img src="img/p2_girl.jpg" alt="image" class="review_profile">
						<div> 
							<h4 class="review_heading">Adipiscing elit amet</h4>
							<p>eiusmod tempor</p>
						</div>
					</div>

					<div class="star_ratings">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
					</div>

					<hr class="review_hr">
					
					<div id="review_bottom">
						<img src="img/quote_top.png" alt="quote" id="quote_top">
						<p class="review_content">
							Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</p>
						<img src="img/quote_bottom.png" alt="quote" id="quote_bottom">
					</div>
				</div>
			</div>

			<div id="section4_part5" class="review_parts">
				<div class="inner_div_section4_parts">

					<div class="review_top">
						<img src="img/p1_man.jpg" alt="image" class="review_profile">
						<div> 
							<h4 class="review_heading">Adipiscing elit amet</h4>
							<p>eiusmod tempor</p>
						</div>
					</div>

					<div class="star_ratings">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
					</div>

					<hr class="review_hr">
					
					<div id="review_bottom">
						<img src="img/quote_top.png" alt="quote" id="quote_top">
						<p class="review_content">
							Lorem ipsum dolor sit amet, Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</p>
						<img src="img/quote_bottom.png" alt="quote" id="quote_bottom">
					</div>
				</div>
			</div>	

		</div>
		
	</div>

	<div id="div_for_moving_btn">
		<div id="back_to_top">
		 
			 <img src="img/icons/top-w.png" alt="top" id="to_top_img" onmouseenter="changeImage(true)" onmouseleave="changeImage(false)" onclick="topFunction()">
		</div>
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
				Copyright ©  BusSwap.com
			</p>
		</div>

	</div>
	<script>
		function showDropDown()
		{
			document.getElementById("drop_menu_nav").style.display = "block";
		}
		
	</script>
	
	<script>
	    document.addEventListener('click', function(event) {
	        var dropdownMenu = document.getElementById('drop_menu_nav');
	        var profileIcon = document.getElementById('prof_icon');
	        
	        if (event.target !== profileIcon && !dropdownMenu.contains(event.target)) 
	        {

	            dropdownMenu.style.display = 'none';
	        }
	    });
	</script>
	

	<script type="text/javascript">
		
		document.addEventListener("DOMContentLoaded", function() 
		{
		    const reviewParts = document.querySelectorAll(".review_parts");
		    const numCards = reviewParts.length;
		    let currentIndex = 0;

		    function showCards() 
		    {
			    reviewParts.forEach((card, index) => {
			        if (index >= currentIndex && index < currentIndex + 3) {
			            card.classList.add("active");
			        } else {
			            card.classList.remove("active");
			        }
			    });
			}


		    function goToNext() {
		        if (currentIndex + 3 < numCards) {
		            currentIndex++;
		            showCards();
		        }
		    }

		    function goToPrev() {
		        if (currentIndex > 0) {
		            currentIndex--;
		            showCards();
		        }
		    }

		    document.querySelector(".arrow-left").addEventListener("click", goToPrev);
		    document.querySelector(".arrow-right").addEventListener("click", goToNext);

		    showCards(); // Show initial set of cards
		});

	</script>

	<!-------------------------- scroll top functions------------------------->
	<script>
	     var mybutton = document.getElementById("back_to_top");

	     window.onscroll = function() {scrollFunction()};

	     function scrollFunction() {
		       if (document.body.scrollTop > 700 || document.documentElement.scrollTop > 700) 
		        {
		      		mybutton.style.display = "block";
		     	} 
		     	else 
		     	 {
		      		mybutton.style.display = "none";
		    	 }
	      }

	      function topFunction() {
		       document.body.scrollTop = 0; //safari
		       document.documentElement.scrollTop = 0; //others
	      }
   </script>

	<script type="text/javascript">

	    function changeImage(ans) 
	     {
	        let topImg = document.getElementById('to_top_img');
	        
	        if (ans) 
	         {
	            topImg.src = "img/icons/top-b.png";
	         } 
	        else 
	         {
	            topImg.src = "img/icons/top-w.png";
	         }
	     }
	</script>

</body>
</html>