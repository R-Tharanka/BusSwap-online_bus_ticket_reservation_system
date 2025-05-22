<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>BusSwap</title>
	
	<link rel="icon" type="img/jpg" href="img/logo_fav.jpg">

	<link href="css/header_footer.css" type="text/css" rel="stylesheet">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
	
	<style>
	
		body
		{
			margin: 0;
			padding: 0;
		}
		#error_div
		{
			display: flex;
	    margin-top: 200px;
	    text-align: center;
	    align-items: center;
	    flex-direction: row;
	    justify-content: center;
		}
		#err_img_div
		{
			
		}
		#err_user_img
		{
			width: 600px;
		}
		
		h3
		{
			margin-bottom: 70px;
		}
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
	        <a href="#" class="hov_border">Sign in</a>
	        <a href="#" class="hov_border">Dashboard</a>
	        <a href="#" class="hov_border">Sign Out</a>
	    </div>
	</div>

	<div id="error_div">
		<img src="img/err_user.png" id="err_user_img">
		<h3>Please select date and seat number
		</h3>
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

</body>
</html>