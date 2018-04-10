<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅游路线-详情页</title>
<link href="${path }css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="/WEB-INF/page/common/head.jsp"%>
	<div class="mainNav clearfix">
		<ul class="Nav_ul">
			<li><a href="${path }/index">首页</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li class="cur"><a href="${path }/route/routeList">旅游路线</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/sights/all">旅游景点</a><img
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
				href="${path }/route/routeList">旅游路线</a> >> <a href="javascript:;">产品详情</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<div class="clumn">
					<div class="clumn_tit t01">国内热门景点</div>
					<div class="clumn_con">
						<div class="cln_w">
							<p>热门城市</p>
							<div class="cln_c clearfix">
								<a href="#">北京</a> <a href="#">上海</a> <a href="#">厦门</a> <a
									href="#">成都</a> <a href="#">西安</a> <a href="#">黄山</a> <a
									href="#">香港</a> <a href="#">青岛</a> <a href="#">桂林</a> <a
									href="#">深圳</a> <a href="#">三亚</a> <a href="#">杭州</a> <a
									href="#">丽江</a> <a href="#">南京</a> <a href="#">重庆</a> <a
									href="#">苏州</a> <a href="#">张家界</a>
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
									href="#">滑雪</a> <a href="#">海边</a> <a href="#">美食</a> <a
									href="#">登山</a> <a href="#">主题公园</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clumn_r01">
				<div class="gr_info">
					<table width="710" border="0" cellspacing="0" cellpadding="0">
						<caption>预订信息</caption>
						<tbody>
							<tr>
								<td width="80" align="right">线路名称：</td>
								<td width="630"><b>【最美千岛湖】双人两日游船千岛湖，赏最美风景，逛森林氧吧</b></td>
							</tr>
							<tr>
								<td align="right">出发日期：</td>
								<td>2013-09-12</td>
							</tr>
							<tr>
								<td align="right">成人：</td>
								<td>332.00元/位</td>
							</tr>
							<tr>
								<td align="right">游客人数：</td>
								<td>成人：2人</td>
							</tr>
							<tr>
								<td align="right">保险：</td>
								<td>2位26.00元</td>
							</tr>
							<tr>
								<td align="right">订单总价：</td>
								<td>755.00</td>
							</tr>
							<tr>
								<td align="right" valign="top">联系人姓名：</td>
								<td>小鑫</td>
							</tr>
							<tr>
								<td align="right" valign="top">备注：</td>
								<td>18368182541</td>
							</tr>
							<tr>
								<td align="right" valign="top">支付方式：</td>
								<td>招商银行（***2134）</td>
							</tr>
							<tr>
								<td align="right" valign="top"></td>
								<td><a href="行程导航 -付款.html"><img
										src="${path }/images/tjdd.jpg"></a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
</html>
