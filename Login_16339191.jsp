<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.css" />
    <link rel="stylesheet" href="themes/16339191/16339191.min.css" />
    <link rel="stylesheet" href="themes/16339191/jquery.mobile.icons.min.css" />
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>
	<title id="title">Login</title>
</head>

<body>
<center>

<div data-role="page" id="top" data-theme="a">

	<div id="panel" data-role="panel" data-display="overlay" data-position="left">
		会議室を予約するシステムです。
   	</div>


	<div data-role="header" data-theme="a">
		<a href="#panel" class="ui-btn-left">Help</a>
		会議室予約システム（石谷）
		<a href="LoginAdmin.jsp" class="ui-btn-right">管理者サイト</a>
	</div>

	<div data-role="content" data-theme="a">
		<form method="POST" action="LoginServlet" >
			ログイン名
			<input type="text" name="LoginName" />
			<br />
			パスワード
			<input type="password" name="PassWord" />
			<br />
			<input type="submit" value="ログイン！" />
		</form>
	</div>

	<div data-role="footer" data-theme="a">
		<font size="4">&copy;</font>
		2016 Software Engineering All Right Reserved.
	</div>

</div>

</center>
</body>
</html>