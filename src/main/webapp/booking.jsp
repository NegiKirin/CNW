<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hotel Room Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            display: flow;
        }
        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
        }
        .booking-image {
            flex: 1;
            /*background: url('') no-repeat center center;*/
            background-size: cover;
            width: 300px;
            height: 100%;
        }
        .booking-container {
            flex: 1;
            padding: 20px;
            background: #fff;
            width: 400px;
        }
        h2 {
            text-align: center;
        }
        form {
            margin-top: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="date"],
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div align="right">
	<table>
		<thead>
			<tr>
				<%-- Phúc bỏ link vào đây --%>
				<th><a href=" đường link ">Thoát</a></th>
			</tr>
		</thead>
	</table>
</div>
<div class="container">
    <!-- Image placeholder -->
    <img class="booking-image" alt="" src="./room2.jpg">
    <!-- Booking form -->
    <div class="booking-container">
        <h2>Đặt chỗ</h2>
        <form action="ReservationServlet" method="post">
            <label for="checkin-date">Ngày đặt phòng:</label>
            <input type="date" id="checkin-date" name="checkinDate" required>
            
            <label for="checkout-date">Ngày trả phòng:</label>
            <input type="date" id="checkout-date" name="checkoutDate" required>
            
            <label for="adults">Số người lớn:</label>
            <input type="number" id="adults" name="adults" min="1" max="10" required>
            
            <label for="children">Số trẻ em:</label>
            <input type="number" id="children" name="children" min="0" max="10">
            
            <input type="submit" value="Đặt ngay">
        </form>
    </div>
</div>
</body>
</html>
