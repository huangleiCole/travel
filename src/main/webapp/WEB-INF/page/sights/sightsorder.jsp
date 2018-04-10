<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>旅游景点-详情页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${path }/layer/layer.js"></script>
<script type="text/javascript"
	src="${path }/js/My97DatePicker/WdatePicker.js"></script>
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
			<li class="cur"><a href="${path }/sights/all">旅游景点</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/eatLive/list">餐饮住宿</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/Specialty/SpecialtyList">地方特产</a><img
				src="${path }/images/nav_line.jpg"></li>
		</ul>
	</div>
	<div class="b_wrap">
		<div class="current">
			<span>当前所在地：</span> <a href="${path }/index">首页</a> >> <a
				href="${path }/sights/all">旅游景点</a> >> <a href="javascript:;">产品详情</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<%@ include file="../common/keyword.jsp"%>
			</div>
			<div class="clumn_r01">
				<div class="gr_info">
					<div class="fxc">
						<form action="${path }/sights/order?sightsid=${order.id}"
							id="myForm" method="post">
							<input name="id" type="hidden" value="${newid }" />
							<div style="margin-bottom: 20px;">
								<span>产品名称：</span> <span style="margin-left: 15px;"
									class="fxcspan1">${order.name }</span>
							</div>
							<div style="margin-bottom: 20px;">
								<span>目标城市：</span> <span style="margin-left: 15px;">${order.location }</span>
							</div>
							<div style="margin-bottom: 20px;">
								<span>使用日期：</span> <input id="usetime" name="usetime"
									style="margin-left: 15px;"
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:false})"
									placeholder="使用日期" />
							</div>
							<div style="margin-bottom: 20px;">
								<span>人数：</span> <select style="margin-left: 40px;" id="adults"
									name="adults">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								</select>&nbsp;成人&nbsp; <select name="children" id="children">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>&nbsp;儿童&nbsp; <select name="students" id="students">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								</select>&nbsp;学生&nbsp;
							</div>
							<div class="fxc1">购买须知</div>
							<p>${order.notes }</p>
							<div class="fxc1">
								<a id="btnA" href="#"> <img
									src="${path }/images/fxcbtn1.png" /></a>
							</div>
						</form>
					</div>
				</div>
			</div>
			<br style="clear: both">
		</div>
	</div>
	<%@ include file="../common/foot.jsp"%>
</body>
<script type="text/javascript">
	$(function() {
		$("#btnA").click(function() {
			$("#myForm").submit();
		});
	});
</script>

</html>