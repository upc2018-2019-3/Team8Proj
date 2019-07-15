<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/colResizable-1.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>

<script type="text/javascript">
	$(function() {
		$(".list_table").colResizable({
			liveDrag : true,
			gripInnerHtml : "<div class='grip'></div>",
			draggingClass : "dragging",
			minWidth : 30
		});

	});
</script>

<title>Document</title>
</head>
<body>
	<div class="container">
		<div id="button" class="mt10">
			<a href="${pageContext.request.contextPath}/student/getMine"><input type="button"
				name="button" class="btn btn82 btn_config" value="我的"></a> 
			<a href="${pageContext.request.contextPath}/student/list"><input
				type="button" name="button" class="btn btn82 btn_search" value="查询"></a>
		</div>

		<div id="forms" class="mt10">
			<div class="box">
				<div class="box_border">
					<div class="box_top">
						<b class="pl15">我的个人信息</b>
					</div>
					<div class="box_center">
					
						<table class="form_table pt15 pb15" width="100%" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td class="td_right">用户名：</td>
								<td class="td_value"><s:property
										value="#request.stu.username" /></td>
							</tr>

							<tr>
								<td class="td_right">所属学校：</td>
								<td class="td_value"><s:property
										value="#request.stu.school.schoolName" /></td>
							</tr>

							<tr>
								<td class="td_right">手机号：</td>
								<td class="td_value"><s:property
										value="#request.stu.telphone" /></td>
							</tr>

							<tr>
								<td class="td_right">邮箱地址：</td>
								<td class="td_value"><s:property
										value="#request.stu.email" /></td>
							</tr>
						</table>
						 <button id="correct">修改</button>
						
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<script type="text/javascript">
var td_value=document.getElementsByClassName('td_value');
var btn1=document.getElementById('correct');
btn1.addEventListener('click',function(){
	if(this.innerHTML === "修改") {
		this.innerHTML = "保存"
		for(var i=0;i<td_value.length;i++){
			td_value[i].innerHTML = "<input value = '"+td_value[i].innerHTML+"' >"
		}
	} else {
		this.innerHTML = "修改";
		var postData = {};
		for(var i=0;i<td_value.length;i++){
			td_value[i].innerHTML =td_value[i].children[0].value;
		}
		postData.username = td_value[0].innerHTML;
		postData.school = td_value[1].innerHTML;
		postData.telephone = td_value[2].innerHTML;
		postData.mail = td_value[3].innerHTML;
		$.ajax({
			type:"post",
			url:"jdbc:mysql://localhost:3306/db_jianzhi?useUnicode=true&characterEncoding=utf-8",
			data:postData,
			dataType:"json",
			contentType:"application/json;charset=utf-8",
			success:function(data){
				alert("修改成功")
			},
			error:function(error){
				alert("修改成功")
				window.localStorage.setItem('userData',JSON.stringify(postData));
			}
		})
	}
})
	
</script>

</body>
</html>