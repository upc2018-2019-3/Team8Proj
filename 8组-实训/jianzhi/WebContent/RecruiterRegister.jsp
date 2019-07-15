<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>招聘人员注册</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style2.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyform.js"></script>

</head>
<body>
	<br>
	<div class="form-div">
		<form id="reg-form" action="${pageContext.request.contextPath}/recruiter-register" method="post">
			<table>
				<tr>
						<td colspan="2" align="center"><h1>招聘人员注册</h1></td>
					</tr>
				<tr>
					<td>用户名</td>
					<td><input name="recruiterRegister.username" id="username" type="text" message="请输入用户名" easytip="disappear:lost-focus;theme:red;" />
					</td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input name="recruiterRegister.password" id="password" message="请输入密码" easytip="disappear:lost-focus;theme:red;"  type="password"/></td>
				</tr>
				<tr>
					<td>email</td>
					<td><input name="recruiterRegister.email" id="email" easyform="email;real-time;"  message="Email格式要正确" easytip="disappear:lost-focus;theme:red;" type="text"/></td>
				</tr>
				<tr>
					<td>手机号</td>
					<td><input name="recruiterRegister.telphone" id="phone" type="text" easyform="length:11" message="手机号必须为11位" easytip="disappear:lost-focus;theme:red;" /></td>
				</tr>
				<tr>
					<td>所在市</td>
					<td><input name="recruiterRegister.city" id="city" type="text" message="请输入城市" easytip="disappear:lost-focus;theme:red;"/></td>
				</tr>
				<tr>
					<td>所在区</td>
					<td><input name="recruiterRegister.district" id="district" type="text" message="请输入所在区" easytip="disappear:lost-focus;theme:red;"/></td>
				</tr>
				<tr>
					<td>所在公司</td>
					<td><input name="recruiterRegister.companyName" id="schoolName" type="text" message="请输入公司名" easytip="disappear:lost-focus;theme:red;"/></td>
				</tr>
			</table>

			<div class="buttons">
				<input value="注 册" type="submit"
					style="margin-right: 20px; margin-top: 20px;" id="submit-btn"/>
				<a href="${pageContext.request.contextPath}/RecruiterLogin.jsp"><input value="我有账号，我要登录" type="button"
					style="margin-right: 45px; margin-top: 20px;" /></a>
			</div>

			<br class="clear" />
		</form>
	</div>
</body>
<script>

    $(document).ready(function ()
    {
      	var v = $('#reg-form').easyform();

      	$("#submit-btn").click(function(){
      		if(v.is_submit){
      			$('#reg-form').submit();
      		}
      	});
      	
    });



</script>
</html>
