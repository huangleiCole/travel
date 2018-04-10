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
			<form action="${path }/Specialty/saveLiveOrder?id=${specialty.id}"
				method="post" class="form-horizontal" enctype="multipart/form-data"
				role="form">
				<table class="pj_tab">


					<tbody>
						<tr>
							<td>评价等级 :</td>
							<td><select style="width: 150px;" name="levell">
									<option value="一般">一般</option>
									<option value="还好">还好</option>
									<option value="较好">较好</option>
									<option value="很好">很好</option>
									<option value="非常">非常好</option></td>

						</tr>

						<tr>
							<td align="right" valign="top">评论内容：</td>
							<td><label> <textarea name="content" id="textarea"
										cols="45" rows="5"></textarea>
							</label></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="submit" value="保存" /></td>
						</tr>
					</tbody>

				</table>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${path }/layer/layer.js"></script>


</body>
</html>
