<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>江苏梦想游-地方特产页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path}/js/jquery-latest.js"></script>
<script>
	$(function() {
		$('div.pic').hover(function() {
			$(this).find('div.edit').show();
		}, function() {
			$(this).find('div.edit').hide();
		})
	})
</script>
</head>
<body>
<c:if test="${empty user }" var="noUser">
		<script type="text/javascript">
			window.location.href = "${path}/user/login";
		</script>
	</c:if>
	<%@ include file="../common/head.jsp"%>
	<div class="mainNav clearfix">
		<ul class="Nav_ul">
			<li><a href="${path }/index">首页</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/route/routeList">旅游路线</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/sights/all">旅游景点</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/eatLive/list">餐饮住宿</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li class="cur"><a href="${path }/Specialty/SpecialtyList">地方特产</a><img
				src="${path }/images/nav_line.jpg"></li>
		</ul>
	</div>
	<div class="b_wrap">
		<div class="current">
			<span>当前所在地：</span><a href="${path }/index">首页</a> >> <a
				href="${path }/Specialty/SpecialtyList">地方特产</a> >> <a href="javascript:;">商品详情</a>
		</div>
		<div class="sp_lc">
			<img src="${path }/images/sp_lc05.jpg">
		</div>
		<div class="sp_time">
			<%
				java.util.Date currentTime = new java.util.Date();
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String dateString = formatter.format(currentTime);
				out.println(dateString);
			%>
		</div>
		<div class="judge_wrap">
			<p class="judge_tit">交易已成功，卖家将收到您的货款。</p>
			<p class="judge_t">认真填写商品评价，就有机会获得20点旅游劵！</p>
			<div class="judge clearfix">
				<div class="pic">
					<div class="edit">
						<a href="specialtyevaluation2?id=${specialty.id }">立即评价</a>
					</div>
				</div>
			</div>
			<p class="judge_t">交易成功后将获得：
			<p class="j_look">
				旅游劵：20点 <a href="#">查看详情</a>
			</p>
		</div>
	</div>
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
</html>
