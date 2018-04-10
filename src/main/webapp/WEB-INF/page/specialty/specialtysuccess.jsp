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
			<img src="${path }/images/sp_lc04.jpg">
		</div>
		<div class="sp_time">
			<%
				java.util.Date currentTime = new java.util.Date();
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String dateString = formatter.format(currentTime);
				out.println(dateString);
			%>
		</div>
		<table class="sp_tab">
			<caption>我已收到货，同意支付宝付款</caption>
			<thead>
				<tr>
					<th width="335">产品信息</th>
					<th width="64">赠送积分</th>
					<th width="158">单价（元）</th>
					<th width="63">数量</th>
					<th width="63">优惠</th>
					<th width="158">小计（元）</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<dl class="sp_dl clearfix">
							<dt>
								<img style="width: 50px; height: 40px"
									src="${path }/images/${specialty.images}">
							</dt>
							<dd>
								<p>${specialty.speName}大礼包土特产送礼</p>
							</dd>
						</dl>
					</td>
					<td>${(specialty.preferentialPrice *0.1)-3}积分</td>
					<td>${specialty.preferentialPrice+specialty.courierFees}</td>
					<td>1</td>
					<td>${specialty.shopPrice-specialty.preferentialPrice}元</td>
					<td rowspan="3" class="fn_o"><b>${specialty.preferentialPrice+specialty.courierFees+1}</b><br>(快递)</td>
				</tr>

			</tbody>
		</table>
		<div class="qr_info clearfix">
			<div class="qr_left">
				<p>包裹1 申通E物流 已签收,签收人是本人签收</p>
				<p class="2id">订单号:${specialtyOrder.specialtyOrderId}</p>
				<p>旅游宝交易号：2013090411001001870040601859</p>
				<p class="2id">收货信息：${address.detail }， ${user.username }，
					${address.mobilephone }， ${address.postcode }</p>
				<p class="2id">成交时间：${specialtyOrder.nopayOrderDate}</p>
			</div>
			<div class="qr_right">
				实付款：<b>￥${specialty.preferentialPrice+specialty.courierFees+1}</b>
			</div>
		</div>
		<div class="qr_wrap clearfix">
			<table>
				<caption>请收到货后，再确认收货！否则您可能钱货两空！</caption>
				<tbody>
					<tr>
						<td width="104"></td>
						<td class="self" width="846">安全设置检测成功！数字证书正在保护中。</td>
					</tr>
					<tr>
						<td>旅游宝支付密码：</td>
						<td><input type="text" name="" value="" placeholder="">
							<a href="#">忘记密码</a></td>
					</tr>
					<tr>
						<td></td>
						<td><a href="specialtyevaluation?id=${specialty.id }"><img
								src="${path }/images/qd_button.jpg"></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
</html>
