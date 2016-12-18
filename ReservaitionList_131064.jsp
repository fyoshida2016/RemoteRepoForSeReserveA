<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>
<%@ page import="model.User"%>
<%@ page import="model.Room"%>
<%@ page import="model.Reservation"%>
<%@ page import="java.util.LinkedList"%>

<%
	if (session.getAttribute("LoginUser") == null) {
		response.sendRedirect("Login.jsp");
		return;
	}
	User loginUser = (User) session.getAttribute("LoginUser");

	if (request.getAttribute("Reservation") == null) {
		response.sendRedirect("Login.jsp");
		return;
	}
	Reservation reservationInfo = (Reservation) request.getAttribute("ReservationInfo");
	User user=reservationInfo.getUser();
	Room room=reservationInfo.getRoom();

%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title id="title">予約一覧</title>
</head>
<body>

	<h1>会議室予約システム</h1>

	<center>
		<p>予約一覧</p>

		<table align="center" border="1" data-role="table">
			<thead>
				<tr bgcolor="<!--表上部色-->">
					<td>会議室場所</td>
					<td>利用開始時間</td>
					<td>利用終了時間</td>
					<td>予約者名</td>
					<td></td>
				</tr>
			</thead>

			<tbody>

				<tr>
					<td>
						<!-- 場所 -->
						<%=room.getArea() %> <%= room.getFloor() %>階 <%= room.getRoomNumber() %>室
					</td>
					<td>
						<!-- 利用開始時間 -->
						<%=reservationInfo.getStartYear() %>年 <%=reservationInfo.getStartMonth() %>月 <%=reservationInfo.getStartHour() %>時 <%=reservationInfo.getStartMinute() %>分
					</td>
					<td>
						<!-- 利用終了時間 -->
						<%=reservationInfo.getPeriodHour() %>時 <%=reservationInfo.getPeriodMinute() %>分
					</td>
					<td>
						<!-- 予約者名 -->
						<%=user.getName() %>
					</td>
					<td>
						<form method ="post" action = "ReservaitionDetailServlet">
						<input type="submit" value="詳細" />
						<input type="hidden" name="RID" value="<%= reservationInfo.getRid() %>" />
						</form>
					</td>
				</tr>
			</tbody>
		</table>