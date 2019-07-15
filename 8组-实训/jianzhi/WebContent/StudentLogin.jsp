<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<title>学生登录</title>
</head>
<body>

	<div id="login_top">
		<div id="welcome">
			欢迎使用大学生兼职管理系统
		</div>
		<div id="back">
			<a href="RecruiterLogin.jsp">招聘端登录</a>&nbsp;&nbsp; | &nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/StudentRegister.jsp">学生注册</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
				<form action="student-login" method="post">
					<p style="font-size:30px">大学生兼职管理</p>
				
					<div id="login_tip">
						学生登录&nbsp;&nbsp;StudentLogin
					</div>
					<div><input type="text" class="username" name="studentLogin.username"></div>
					<div><input type="password" class="pwd" name="studentLogin.password"></div>
					<div id="btn_area">
						<input type="submit" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录">&nbsp;&nbsp;
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>