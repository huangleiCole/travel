<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>旅游景点-详情页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<c:if test="${empty user }">
		<script type="text/javascript">
			window.location.href = "${path}/user/login"
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
			<span>当前所在地：</span><a href="${path }/index">首页</a> >> <a
				href="${path }/sights/all">旅游景点</a> >> <a href="javascript:;">产品详情</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<%@ include file="../common/keyword.jsp" %>
			</div>
			<div class="clumn_r01">
				<div class="gr_info">
					<table width="710" border="0" cellspacing="0" cellpadding="0">
						<caption>预订信息</caption>
						<tbody>
							<tr>
								<td width="80" align="right">景点名称：</td>
								<td width="630"><b>${orderinfo.sights.name }</b></td>
							</tr>
							<tr>
								<td align="right">使用日期：</td>
								<td><fmt:formatDate value="${orderinfo.usetime }"
										pattern="yyyy-MM-dd" /></td>
							</tr>

							<tr>
								<td align="right">游客人数：</td>
								<td><c:if test="${orderinfo.adults gt '0' }">成人：${orderinfo.adults }人</c:if>&nbsp;&nbsp;
									<c:if test="${orderinfo.children gt '0' }">儿童：${orderinfo.children }人</c:if>&nbsp;&nbsp;
									<c:if test="${orderinfo.students gt '0' }">学生：${orderinfo.students }人</c:if>
								</td>
							</tr>
							<tr>
								<td align="right">订单总价：</td>
								<td>${orderinfo.account }元</td>
							</tr>
							<tr>
								<td align="right" valign="top">联系人姓名：</td>
								<td>${user.username }</td>
							</tr>

							<tr>
								<td align="right" valign="top"></td>
								<td><a href="${path }/sights/repay"><img
										src="${path }/images/tjdd.jpg"></a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../common/foot.jsp"%>
</body>

</html>
