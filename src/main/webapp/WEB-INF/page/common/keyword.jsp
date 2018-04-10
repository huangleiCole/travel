<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="clumn">
		<input type="hidden" id="location" />
		<div class="clumn_tit t01">省内热门景点</div>
		<div class="clumn_con">
			<div class="cln_w">
				<p>主要城市</p>
				<div class="cln_c clearfix">
					<a href="javascript:;" onclick="query(null)">所有</a>
					<a href="javascript:;" onclick="query('南京')">南京</a> <a href="#">徐州</a>
					<a href="#">连云港</a> <a href="#">宿迁</a> <a href="#">淮安</a> <a
						href="#">扬州</a> <a href="#">盐城</a> <a href="#">南通</a> <a href="#">泰州</a>
					<a href="javascript:;" onclick="query('苏州')">苏州</a> <a href="#">常州</a> <a href="#">无锡</a> <a
						href="#">镇江</a>
				</div>
			</div>
			<div class="cln_w">
				<p>景点认证</p>
				<div class="cln_c clearfix">
					<a href="#">5A级</a> <a href="#">4A级</a> <a href="#">3A级</a> <a
						href="#">2A级</a>
				</div>
			</div>
			<div class="cln_w">
				<p>热门主题</p>
				<div class="cln_c clearfix">
					<a href="#">温泉</a> <a href="#">古镇</a> <a href="#">摄影</a> <a
						href="#">滑雪</a> <a href="#">海边</a> <a href="#">美食</a> <a href="#">登山</a>
					<a href="#">主题公园</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>