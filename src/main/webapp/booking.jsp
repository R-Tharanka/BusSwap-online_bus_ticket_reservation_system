<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Booking Details</title>

			<link rel="icon" type="img/jpg" href="img/logo_fav.jpg">

			<link href="css/header_footer.css" type="text/css" rel="stylesheet">

			<link rel="stylesheet" type="text/css" href="css/booking.css">

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

			<!-- 
    <p>Success</p>
     -->

			<div class="bus_detail_top_container">
				<c:forEach var="ticket" items="${ticket_details}">
					<div class="bus_detail_second_container">
						<div class="bus_detail_third_container">

							<div class="part_top_tid">
								<div class="t_id_div">
									<p>Ticket ID:</p>
									<p class="v_t_value">${ticket.t_id}</p>
								</div>

								<div class="action_btns">
									<button class="updt_btn" onclick="view_update()">Change</button>
									<button class="cncl_btn" onclick="view_delete_confirm()">Cancel</button>
								</div>
							</div>

							<div class="bus_detail_fourth_container">

								<div class="bus_img_container">
									<div class="bs_img_div">
										<img src="img/bus_img.jpg" class="bs_img">
									</div>
									<br>
									<p class="p_label">Bus ID</p>
									<p class="p_data">${ticket.bs_id}</p>
								</div>

								<div class="field_container">
									<div class="field1">
										<p class="p_label">Start Time</p>
										<p class="p_data">${ticket.start_time}</p>

										<p class="p_label">Origin</p>
										<p class="p_data">${ticket.origin}</p>
									</div>

									<div class="field2">
										<p class="p_label">Date</p>
										<p class="p_data">${ticket.date}</p>

										<div class="arrow_div">
											<img src="img/arrow_ticket.png" class="arrow_ticket">
										</div>

										<p class="p_label">Duration</p>
										<p class="p_data">${ticket.duration}</p>

									</div>

									<div class="field3">
										<p class="p_label">End Time</p>
										<p class="p_data">${ticket.end_time}</p>

										<p class="p_label">Destination</p>
										<p class="p_data">${ticket.destination}</p>
									</div>
								</div>

								<div class="button_container">
									<p class="p_label">Seat Number</p>
									<p class="p_data">${ticket.seat_no}</p>

									<p class="p_label">Price</p>
									<p class="p_data">${ticket.price}</p>
								</div>

							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- ////////////////////////////////	update form ///////////////////////////////////////// -->
			<div id="form_main_container">
				<div id="form_container_inner2">
					<div id="form_container_inner3">

						<c:forEach var="ticket_up_form" items="${ticket_details}">

							<div class="part_top_tid_form">
								<div class="tid_div">
									<p>Ticket ID</p>
									<p class="f_t_value">${ticket_up_form.t_id}</p>
								</div>

								<button onclick="hide_update()" class="cncl_btn">Cancel</button>
							</div>

							<form class="bus_detail_ticket_form" action="update_ticket_control_servlet" method="POST"
								id="ticketForm">

								<div class="bus_img_container">
									<div class="bs_img_div">
										<img src="img/bus_img.jpg" class="bs_img">
									</div>
									<br>

									<input type="hidden" name="up_t_id" value="${ticket_up_form.t_id}">

									<label for="bs_id" class="bs_id">Bus ID</label>
									<input type="text" name="" value="${ticket_up_form.bs_id}" id="bs_id"
										class="bs_id_input" style="width: 60px;" disabled>
									<input type="hidden" name="up_t_bs_id" value="${ticket_up_form.bs_id}" id="bs_id"
										class="bs_id_input" style="width: 60px;">

								</div>

								<div class="field_container">
									<div class="field1">
										<label for="s_time" style="padding-left:17px;">Start Time</label>
										<input type="text" name="up_t_s_time" value="${ticket_up_form.start_time}"
											id="s_time" class="s_time" style="margin-left:13px;">

										<br>
										<label for="from">Origin</label>
										<input type="text" name="up_t_origin" value="${ticket_up_form.origin}" id="from"
											class="from">

									</div>

									<div class="field2">
										<label for="date">Date</label>
										<input type="date" name="up_t_date" id="date" class="date"
											value="${ticket_up_form.date}" min="<%= java.time.LocalDate.now() %>">

										<div class="arrow_div">
											<img src="img/arrow_ticket.png" class="arrow_ticket">
										</div>

										<label for="duration">Duration</label>
										<input type="text" name="up_t_duration" value="${ticket_up_form.duration}"
											id="duration" class="duration">

									</div>

									<div class="field3">
										<label for="e_time" style="padding-left:17px;">End Time</label>
										<input type="text" name="up_t_e_time" value="${ticket_up_form.end_time}"
											id="e_time" class="e_time" style="margin-left:13px;">

										<br>
										<label for="destination">Destination</label>
										<input type="text" name="up_t_destination" value="${ticket_up_form.destination}"
											id="destination" class="destination">

									</div>

								</div>

								<div class="button_container">

									<label for="seat_no">Seat Number</label>
									<input type="number" name="up_t_seat_no" style="width: 40px;" class="seat_no"
										min="1" value="${ticket_up_form.seat_no}">
									<br>
									<label for="price">Price</label>
									<input type="text" name="up_t_price" value="${ticket_up_form.price}" id="price"
										style="width: 94px;" class="price">

									<br>
									<input type="submit" name="submit" value="Book" class="submit_btn"
										onclick="hide_update()" style=" width: 60px; height: 25px;">

								</div>
							</form>
						</c:forEach>

					</div>
				</div>
			</div>


			<div id="alert_main_container">
				<div id="alert_inner_div1">
					<div id="alert_inner_div2">

						<div id="delete_confirm_div">

							<p id="confirm_msg">Are you sure you want to cancel booking?</p>

							<div id="confirm_btns">
								<button id="keep" class="con_btn" onclick="hide_delete_confirm()">No, Keep</button>

								<c:forEach var="ticket_de_form" items="${ticket_details}">

									<form action="delete_ticket_control_servlet" method="POST" id="delete_confirm_form">
										<input type="hidden" name="de_t_id" value="${ticket_de_form.t_id}">
										<input type="submit" value="Yes, Cancel" name="submit" id="cancel"
											class="con_btn">
									</form>

								</c:forEach>

							</div>
						</div>

					</div>
				</div>
			</div>

			<div id="payment_all_container">

				<h3 class="step3_heading">PAYMENT DETAILS</h3>

				<br>

				<div id="payment_div">
					<br><br>

					<div>
						<p class="para_align">Select a payment method.</p>

						<div id="payment_method">
							<img class="payment_images" src="img/icons/visa.png" alt="visa card">
							<img class="payment_images" src="img/icons/american-express.png" alt="american express">
							<img class="payment_images" src="img/icons/card.png" alt="master card">
						</div>

						<div id="payment_form_div">
							<!------- form ----------->
							<form action="index.jsp" method="POST" style="padding-top:25px" id="form4">

								<label for="crd_name" id="align_name_icons">
									<img src="img/icons/person.png" class="payment_icons">
								</label>
								<input type="text" name="holder_name" id="crd_name" placeholder=" ">

								<br>

								<!----- js part pattern type will be change according to selected card type of user ------->
								<label for="card_number" id="align_numbr_icons">
									<img src="img/icons/credit-card.png" class="payment_icons"
										style="width:20px; top: -2px;">
								</label>
								<input type="text" name="card_number" id="card_number" placeholder="Card Number"
									pattern="^\d{15,16}$">

								<div id="expire_and_cvv">
									<div>
										<label for="expire">
											<p style="display: inline; font-size: 12px;">CARD EXPIRY:</p>
										</label>
										<br>
										<input type="month" id="expire" name="expire_date" placeholder="mm/yyyy"
											size="13">
									</div>

									<div>
										<label for="cvv">
											<p style="display: inline; font-size: 12px;">CVV:</p>
										</label>
										<br>
										<div id="div_for_lock_cvv">
											<img src="img/icons/credit-card.png" id="lock_for_cvv">
										</div>
										<input type="text" id="cvv" name="cvv" placeholder="***" pattern="^[0-9]{3}$"
											size="13">
									</div>
								</div>
								<br>

								<div style=" text-align: center;">

									<input type="checkbox" name="agreed" style="position: relative; left: -5px;"
										id="check_box">

									<label for="check_box"
										style="top: -2px; font-size: 11px; color: black; display: inline; position: relative;">
										I have read and agree to the BusSwap
										<a href="#"> terms and conditions</a>
										<br>
										&emsp;and the
										<a href="#">privacy policy</a>.
									</label>
								</div>

								<div id="div_pay_btn">
									<input type="submit" name="payment" value="Proceed to Pay" id="pay_btn" required
										onclick="success()">
								</div>

								<br><br>
							</form>

						</div>
					</div>
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

			<script>
				function view_update() {
					document.getElementById("form_main_container").style.display = "flex";
				}

				function hide_update() {
					document.getElementById("form_main_container").style.display = "none";
				}

				function view_delete_confirm() {
					document.getElementById("alert_main_container").style.display = "block";
				}

				function hide_delete_confirm() {
					document.getElementById("alert_main_container").style.display = "none";
				}

				function success() {
					alert("Payment successful!");
				}
			</script>
		</body>

		</html>