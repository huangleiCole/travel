<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="top_hw clearfix">
		<div class="top_h clearfix">
			<div class="top_hl">
				<span>欢迎来到江苏梦想游，让你的梦想全程免费自由行！</span> 预定热线：<b>0571-63322269</b>
			</div>
			<div class="top_hr">
			<c:if test="${empty user }" var="hasUser">
				<a href="${path }/user/register">会员注册</a> | <a href="${path }/user/login">登录</a>
			</c:if>
			<c:if test="${! hasUser }">
				${user.username }，您好 | <a href="${path }/user/show">会员中心</a> | <a href="${path }/user/loginout">退出登录</a>
			</c:if>
				 | <a
					href="#">梦想收藏</a> | <a href="#">设为首页</a>
			</div>
		</div>
	</div>
	<div class="head_w">
		<div class="head_t clearfix">
			<div class="logo">
				<img src="${path }/images/logo.jpg">
			</div>
			<div class="rx_line">
				<img src="${path }/images/rx.jpg">
			</div>
		</div>
	</div>
	
</body>
</html>