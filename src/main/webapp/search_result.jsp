<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>BusSwap</title>
	
	<link rel="icon" type="img/jpg" href="img/logo_fav.jpg">

	<link href="css/header_footer.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/search_result.css">
	<link rel="stylesheet" type="text/css" href="css/home.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
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
	        <a href="#" class="hov_border">Sign in</a>
	        <a href="#" class="hov_border">Dashboard</a>
	        <a href="#" class="hov_border">Sign Out</a>
	    </div>
	</div>
	
	
	<div id="search_container" style=" top: 64px; margin: 0 !important; background-color: #fff; position: relative;">
		
		<div id="search_background_left"></div>

		<div id="form_container">
		 <c:if test="${not empty bs_data}">
           <c:set var="bus_search" value="${bs_data[0]}" />
				
			<form action="search_result" method="POST" id="main_form" style="top: 0;">

				<div class="search_input_parts">
						
					<label for="origin">Origin</label>
					<br>
					<input id="origin" list="origins" name="origin" type="text" value="${bus_search.origin}">
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
					<input type="text" name="destination" id="destination" list="destinations" value="${bus_search.destination}">
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
		 </c:if>

		</div>
		
		<div id="search_background_right"></div>

	</div>
	
	<div id="p_m">
		<div id="p1"></div>
		<div id="p2"></div>
		<div id="p3"></div>
	</div>
	

	<div id="loop_div">
		
		<c:forEach var="bus" items="${bs_data}">
        
        <div class="bus_detail_container_main">

			<form class="bus_detail_ticket_form" action="ticket_submit" method="POST" id="ticketForm">

				<div class="bus_img_container">
					<div class="bs_img_div">
						<img src="img/bus_img.jpg" class="bs_img">
					</div>
					<br>
					<input type="hidden" name="t_id" value="0">

					
					<label for="bs_id" class="bs_id" >Bus ID</label>
					<input type="text" name="t_bs_id" value="${bus.id}" id="bs_id" class="bs_id_input" style="width: 60px;" disabled>
					
					<input type="hidden" name="t_bs_id" value="${bus.id}" id="bs_id" class="bs_id_input" style="width: 60px;">
					
				</div>

				<div class="field_container">
					<div class="field1">
						<label for="s_time" style="padding-left:17px;">Start Time</label>
						<input type="text" name="t_s_time" value="${bus.start_time}" id="s_time" class="s_time" style="margin-left:13px;" disabled>
						
						<input type="hidden" name="t_s_time" value="${bus.start_time}" id="s_time" class="s_time" style="margin-left:13px;">
						<br>
						<label for="from">Origin</label>
						<input type="text" name="t_origin" value="${bus.origin}" id="from" class="from" disabled>
						
						<input type="hidden" name="t_origin" value="${bus.origin}" id="from" class="from">
					</div>
					
					<div class="field2">
						<label for="date">Date</label>
						<input type="date" name="t_date" id="date" class="date">
						
						<div class="arrow_div">
							<img src="img/arrow_ticket.png" class="arrow_ticket">
						</div>
						
						<label for="duration">Duration</label>
						<input type="text" name="t_duration" value="${bus.duration}" id="duration" class="duration" disabled>
						
						<input type="hidden" name="t_duration" value="${bus.duration}" id="duration" class="duration">
					</div>
					
					<div class="field3">
						<label for="e_time" style="padding-left:17px;">End Time</label>
						<input type="text" name="t_e_time" value="${bus.end_time}" id="e_time" class="e_time" style="margin-left:13px;" disabled>
						
						<input type="hidden" name="t_e_time" value="${bus.end_time}" id="e_time" class="e_time" style="margin-left:13px;">
						<br>
						<label for="destination">Destination</label>
						<input type="text" name="t_destination" value="${bus.destination}" id="destination" class="destination" disabled>
						
						<input type="hidden" name="t_destination" value="${bus.destination}" id="destination" class="destination">
					</div>
				
				</div>

				<div class="button_container">
					
					<label for="seat_no">Seat Number</label>
					<input type="number" name="t_seat_no" style="width: 40px;" class="seat_no" min="1" max="${bus.seats}">
					<br>
					<label for="price">Price</label>
					<input type="text" name="t_price" value="${bus.price}" id="price" style="width: 94px;" class="price" disabled>
					
					<input type="hidden" name="t_price" value="${bus.price}" id="price" style="width: 94px;" class="price">
					<br>
					<input type="submit" name="submit" value="Book" class="submit_btn" onclick="redirect_function()">
	
				</div>
			</form>	
		</div>
		</c:forEach>
	
	</div>
	
	<!-- 
	<c:forEach var="bus" items="${bs_data}">
        <div class="bus_detail_div">
            <p>ID: ${bus.id}</p>
            <p>Origin: ${bus.origin}</p>
            <p>Destination: ${bus.destination}</p>
            <p>Start Time: ${bus.start_time}</p>
            <p>End Time: ${bus.end_time}</p>
            <p>Duration: ${bus.duration}</p>
            <p>Seats: ${bus.seats}</p>
        </div>
    </c:forEach>
    
    
     -->
     
     <form id="secondForm" action="display_ticket_control_servlet" method="GET" style="display: none;">
    	<!-- Additional form content here -->
    	<input type="hidden" name="param2" value="value2">
    	<!-- Add more hidden fields if needed -->
	</form>

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
	
	<script>
    	document.addEventListener('DOMContentLoaded', function() 
    	{
        	document.querySelector('.submit_btn').addEventListener('click', function() 
        	{
            	document.getElementById('bookForm').submit(); // Submit the first form
            	document.getElementById('secondForm').submit(); // Submit the second form
        	});
    	});
	</script>

</body>
</html> 