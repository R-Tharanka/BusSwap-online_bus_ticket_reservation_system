<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>

		<style>
			.rotate {
				width: 70px;
				height: 70px;
				animation: rotation infinite 4s linear;
			}

			@keyframes rotation {
				from {
					transform: rotate(0deg);
				}

				to {
					transform: rotate(360deg);
				}
			}
		</style>
	</head>

	<body>
		<div style=" transform: translate(0, 200px); display: flex; flex-direction: column; align-items: center; ">
			<h2>Failed</h2>
			<p>Error with database</p>
		</div>

		<div style="display: flex; transform: translate(0, 320px); justify-content: center;">

			<img alt="gear" src="img/icons/gear.png" style="" class="rotate">

		</div>


	</body>

	</html>