<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>江苏梦想游-地方特产页</title>
<link href="${path}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path}/css/common.css" rel="stylesheet" type="text/css" />
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
			<img src="${path}/images/sp_lc02.jpg">
		</div>
		<%
			java.util.Date currentTime = new java.util.Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			String dateString = formatter.format(currentTime);
			out.println(dateString);
		%>
		<form action="${path}/Specialty/saveSpecialty?id=${specialty.id}"
			method="post" role="form">
			<div class="sp_address clearfix">
				<div class="add_tit clearfix">
					<b>确认收货地址</b> <a href="${path }/user/addaddress">管理收货地址</a>
				</div>
				<div class="add_con">
					<div class="add_clu clearfix">
						<div class="sp_js">寄送至</div>
						<div class="sp_dz">
							<label><input type="radio" name="radio" id="radio"
								value="radio"></label> ${address.detail }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							(${user.username} 收)
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话:${address.mobilephone }
						</div>
						<div class="mx_add">
							<a class="alter"
								href="${path }/user/updateaddress?id=${address.id}">修改本地址</a>
						</div>
					</div>
					<div class="qt_add clearfix">
						<a href="${path }/user/address">使用其它地址</a>
					</div>
				</div>
			</div>
			<div>
				<table class="sp_tab">

					<caption>确认订单信息</caption>

					<thead>
						<tr>
							<th width="335">产品信息</th>
							<th width="64">赠送积分</th>
							<th width="158">单价（元）</th>
							<th width="63">数量</th>
							<th width="63">原价</th>
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
							<td>${specialty.preferentialPrice}元</td>
							<td>1</td>
							<td>${specialty.shopPrice}元</td>
							<td>${specialty.shopPrice-specialty.preferentialPrice}元</td>
							<td class="fn_o"><b>${specialty.preferentialPrice}</b></td>
						</tr>

					</tbody>
				</table>
				<table class="sp_info">
					<tr>
						<td class="ly_td" width="555" rowspan="2">给卖家留言：<input
							type="text" value="" placeholder=""></td>
						<td class="ys_td" width="423">&nbsp;&nbsp;运送地址:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>${specialty.distribution}</b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 运送费:<b>${specialty.courierFees}元</b>
						</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;运费险：<span style="margin: 0 30px;">购买退货运费险，退货可赔付9元
						</span> <b style="color: #666;">1.00</b></td>
					</tr>
					<tr>
						<td class="hj_td" colspan="2" align="right">店铺合计（含运费）：<b
							style="font-size: 16px;">${specialty.preferentialPrice+specialty.courierFees}</b></td>
					</tr>
				</table>
				<div class="sp_pay_wrap clearfix">
					<div class="sp_pay">
						<div class="pay_con">
							<p>
								可获天猫积分：${(specialty.preferentialPrice *0.1)-3}积分点 <b>实付款：</b><span>${specialty.preferentialPrice+specialty.courierFees+1}</span>
							</p>
							<p>
								<b>寄送至:</b>浙江省 杭州市 西湖区 杭州市西湖区教工路316号华门自由21世纪A座2407
							</p>
							<p>
								<b>收货人:</b>柳金梅 18268801820
							</p>
						</div>
						<div class="sp_button">
							<a class="pay_order" href="specialtypay?id=${specialty.id}">提交订单</a>
						</div>
					</div>
				</div>

			</div>
		</form>
	</div>
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>

</html>
