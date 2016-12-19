<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<head>
    <meta charset="UTF-8">
    <meta name="viewport"
              content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.css" />
    <link rel="stylesheet" href="themes/default/default.min.css" />
    <link rel="stylesheet" href="themes/default/jquery.mobile.icons.min.css" />
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>
	<title id="title">Login</title>
</head>

<body>
<center>

会議室予約システム（藤原）

<form method="POST" action="LoginServlet" >

ログイン名
<input type="text" name="LoginName" />

<br />

パスワード
<input type="password" name="PassWord" />

<br />

<input type="submit" value="ログイン！" />

</form>


<font size="4">&copy;</font> 2016 Software Engineering All Right Reserved.

</center>
</body>
</html>