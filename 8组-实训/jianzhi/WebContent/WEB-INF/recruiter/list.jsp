<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/colResizable-1.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/common.js"></script>

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
			<a href="${pageContext.request.contextPath}/recruiter/publish-recruitment"><input type="button" name="button" class="btn btn82 btn_add"
				value="新增"></a> 
			<a href="${pageContext.request.contextPath}/recruiter/getMine"><input type="button"
				name="button" class="btn btn82 btn_config" value="我的"></a> 
			<a href="${pageContext.request.contextPath}/recruiter/list"><input
				type="button" name="button" class="btn btn82 btn_search" value="查询"></a>
		</div>
		<!--  -->
		<div id="table" class="mt10">
			<div class="box span10 oh">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="list_table">
					
					<tr>
						<th width="10">用户名</th>
						<th width="40">手机号</th>
						<th width="40">邮箱</th>
							
					</tr>
					<s:iterator var="recruitment" value="#request.cityList">
						<tr class="tr">
							<td><s:property value="#recruitment.username" />dsd</td>
							<td><s:property value="#recruitment.telphone" /></td>
							<td><s:property value="#recruitment.email" /></td>
						
						</tr>
					</s:iterator>
				</table>

			</div>
		</div>
	</div>
</body>
</html>
