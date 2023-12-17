<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="frame.css" rel="stylesheet">
<style>
li {
	display: inline-block;
}

ul {
	margin-top: 0px;
	margin-bottom: 0px;
}

body {
	overflow-x: hidden;
}
</style>
</head>
<body>


	<div class="nav-bar">
		<div class="title">Booking.com</div>
		<div class="profile">
			<div class="name">Le Huu Minh Vu</div>
			<div class="thoat">
				<a style="color: #332A59; text-decoration: none;" href="#">Thoat</a>
			</div>
		</div>
	</div>
	<div class="Search-bar">
		<form action="" method="post">
			<ul>
				<li class="booking">Booking.com</li>

				<li><input type="text" name="diadiem" class="search-diadiem"
					placeholder="Dia diem"></li>
				<li><input type="date" name="date" class="search-date"
					placeholder="Ngay dat"></li>
				<li class="search"><input class="submit" type="submit"
					value="Search"></li>

			</ul>
		</form>

	</div>
	<ul class="list-bar">
		<c:forEach items="${listRooms}" var="room">
			<li class="list">
				<div class="left">
					<img src="Pizza_Hai_San_Cocktail.png"
						 style="height: 200px; width: 200px">
				</div>
				<div class="middle">
					<h2
							style="color: #00BBC9; font-family: Inter; font-size: 1.25rem; font-style: normal; font-weight: 700; line-height: normal;">${room.hotelname}</h2>
					<p>${room.address}</p>
				</div>
				<div class="right">
					<p
							style="margin-bottom: 6px; color: #000; font-family: Inter; font-size: 1.3rem; font-style: normal; font-weight: 700; line-height: normal;"> ${room.price}<span>d</span>
					</p>
					<a href="#">
						<button class="datngay">Dat ngay ></button>
					</a>
				</div>
			</li>
		</c:forEach>

<%--		<li class="list">--%>
<%--			<div class="left">--%>
<%--				<img src="Pizza_Hai_San_Cocktail.png"--%>
<%--					style="height: 200px; width: 200px">--%>
<%--			</div>--%>
<%--			<div class="middle">--%>

<%--				<h2--%>
<%--					style="color: #00BBC9; font-family: Inter; font-size: 1.25rem; font-style: normal; font-weight: 700; line-height: normal;">Hotel--%>
<%--					Hoi An</h2>--%>
<%--				<img src="location.svg" style="width: 20px; height: 20px;">--%>
<%--				<p style="display: inline-block;">27 Nguyen Chanh, Lien Chieu,--%>
<%--					Da Nang</p>--%>
<%--			</div>--%>
<%--			<div class="right">--%>
<%--				<p--%>
<%--					style="margin-bottom: 6px; color: #000; font-family: Inter; font-size: 1.3rem; font-style: normal; font-weight: 700; line-height: normal;">--%>
<%--					300000 &nbsp<span>d</span>--%>
<%--				</p>--%>
<%--				<a href="#">--%>
<%--					<button class="datngay">Dat ngay ></button>--%>
<%--				</a>--%>
<%--			</div>--%>
<%--		</li>--%>
<%--		<li class="list">--%>
<%--			<div class="left">--%>
<%--				<img src="Pizza_Hai_San_Cocktail.png"--%>
<%--					style="height: 200px; width: 200px">--%>
<%--			</div>--%>
<%--			<div class="middle">--%>
<%--				<h2--%>
<%--					style="color: #00BBC9; font-family: Inter; font-size: 1.25rem; font-style: normal; font-weight: 700; line-height: normal;">Hotel--%>
<%--					Hoi An</h2>--%>
<%--				<p>27 Nguyen Chanh, Lien Chieu, Da Nang</p>--%>
<%--			</div>--%>
<%--			<div class="right">--%>
<%--				<p--%>
<%--					style="margin-bottom: 6px; color: #000; font-family: Inter; font-size: 1.3rem; font-style: normal; font-weight: 700; line-height: normal;">--%>
<%--					300000 &nbsp<span>d</span>--%>
<%--				</p>--%>
<%--				<a href="#">--%>
<%--					<button class="datngay">Dat ngay ></button>--%>
<%--				</a>--%>
<%--			</div>--%>
<%--		</li>--%>
<%--		<li class="list">--%>
<%--			<div class="left">--%>
<%--				<img src="Pizza_Hai_San_Cocktail.png"--%>
<%--					style="height: 200px; width: 200px">--%>
<%--			</div>--%>
<%--			<div class="middle">--%>
<%--				<h2--%>
<%--					style="color: #00BBC9; font-family: Inter; font-size: 1.25rem; font-style: normal; font-weight: 700; line-height: normal;">Hotel--%>
<%--					Hoi An</h2>--%>
<%--				<p>27 Nguyen Chanh, Lien Chieu, Da Nang</p>--%>
<%--			</div>--%>
<%--			<div class="right">--%>
<%--				<p--%>
<%--					style="margin-bottom: 6px; color: #000; font-family: Inter; font-size: 1.3rem; font-style: normal; font-weight: 700; line-height: normal;">--%>
<%--					300000 &nbsp<span>d</span>--%>
<%--				</p>--%>
<%--				<a href="#">--%>
<%--					<button class="datngay">Dat ngay ></button>--%>
<%--				</a>--%>
<%--			</div>--%>
<%--		</li>--%>
	</ul>
</body>
</html>