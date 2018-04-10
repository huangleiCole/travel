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
			<img src="${path}/images/sp_lc03.jpg">
		</div>
		<div class="sp_time">
			<%
				java.util.Date currentTime = new java.util.Date();
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String dateString = formatter.format(currentTime);
				out.println(dateString);
			%>
		</div>
		<div class="sp_trans">
			<div class="trans_con">
				<p style="color: #28810c;">您正在使用旅游宝宝担保交易</p>
				<p style="font-weight: bold; font-size: 14px;">${specialty.speName}大礼包土特产送礼</p>
				<p>
					<b>旅游宝帐号</b>（fmwl@163.com） 可支付余额：<b style="color: #f60;">${specialty.preferentialPrice+specialty.courierFees}元</b>
				</p>
				<p>
					<span class="fk_s">您的账户没有可支付余额，请使用以下其他方式付款，或<a
						style="color: #006eb4;" href="#">充值</a>后付
					</span><span class="price_s">¥${specialty.preferentialPrice+specialty.courierFees}</span>
				</p>
			</div>
			<div class="sp_bz">
				<img src="${path}/images/baoz.jpg">
			</div>
		</div>
		<div class="fk_wrap">
			<div class="fk_tit">您可以使用以下或其他方式付款：</div>
			<div class="fk_con">
				<div class="fk_bank">
					<div class="fk_tw clearfix">
						<div class="fn-left">
							<img src="${path}/images/kj_zf.jpg">
						</div>
						<div class="hd_b fn-left">
							<ul>
								<li><img src="${path}/images/hui.jpg">每天都有银行优惠</li>
								<li><img src="${path}/images/ji.jpg">银行积分当钱花</li>
								<li><img src="${path}/images/fan.jpg">每10元反一个集分宝</li>
							</ul>
							<i><img src="${path}/images/z_row.jpg"></i>
						</div>
					</div>
					<div class="xz_wrap clearfix">
						<input name="" type="radio" value="">
						<div class="xz_bank">
							<img src="${path}/images/bank_zs.jpg"><span>**2171</span>
						</div>
					</div>
					<table class="tj_bank">
						<caption>推荐银行：</caption>
						<tbody>
							<tr>
								<td><label><input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_0"></label></td>
								<td><label><input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_3"></label></td>
								<td><label><input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_2"></label></td>
								<td><label><input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_1"></label></td>
							</tr>
							<tr>
								<td><label><input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1"></label></td>
								<td><label><input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup3"></label></td>
								<td align="center" valign="top"><a class="other" href="#">选择其他</a></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="web_bank">
					网上银行：<a href="#">选择其他</a>
				</div>
				<div class="next_b">
					<a href="specialtysuccess?id=${specialty.id}"><img
						src="${path}/images/next.jpg"></a>
				</div>
			</div>
		</div>
		<div class="wt_wrap">
			<p>
				<b>付款遇到问题：</b>
			</p>
			<p>
				<b>1.什么是快捷支付(含卡通)？</b>
			</p>
			<p>答：快捷支付是支付宝联合各大银行推出的全新的支付方式。只要您有银行卡，就可以在支付宝付款。付款时无需登录网上银行，凭支付宝支付密码和手机校验码即可完成付款。（原卡通用户自动升级成为快捷支付用户）。</p>
			<p>
				<b>2.使用信用卡快捷支付才能进行分期付款么？</b>
			</p>
			<p>答：是的，而且您的交易金额必须在600元及以上，并选择支持分期的信用卡快捷支付银行。目前已支持招行、中行、农行、建行、民生、光大、平安、中信、广发和兴业银行，
				其他银行即将推出。</p>
			<p>
				<b>3.如何关闭信用卡快捷支付服务？</b>
			</p>
			<p>答：您可以登录“账户管理”，在“银行卡”频道下关闭，或拨打支付宝24小时客服热线，客服会在核实您的信息后为您关闭。查看详情</p>
			<p>
				<b>4.如何修改预存手机号码？</b>
			</p>
			<p>答：拨打银行信用卡服务热线，进入人工服务后，通知银行客服人员修改手机号。修改生效后，需登录支付宝，进入“账户管理-银行卡”频道，修改成新手机号码。</p>
			<p>
				<a href="#">更多帮助 进入我的支付宝</a>
			</p>
		</div>
	</div>
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
</html>
