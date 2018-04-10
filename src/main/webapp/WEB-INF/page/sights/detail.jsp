<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>江苏梦想游--旅游景点页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var wweya_li = $("div.tab_menu ul li");
		wweya_li.click(function() {
			$(this).addClass("selected").siblings().removeClass("selected");
			var index = wweya_li.index(this);
			$("div.tab_box > div").eq(index).show(100).siblings().hide();
		}).hover(function() {
			$(this).addClass("hover");
		}, function() {
			$(this).removeClass("hover");
		});
	});
</script>
</head>
<body>
	<%@ include file="../common/head.jsp" %>
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
				href="${path }/sights/all">旅游景点</a>>> <a href="javascript:;">商品详情</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<%@ include file="../common/keyword.jsp" %>
				<div class="clumn">
					<div class="clumn_tit t02">
						<span>优惠促销</span><a href="#">更多>></a>
					</div>
					<div class="clumn_con">
						<ul class="clu_ul">
							<li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
							<li><a href="#">国庆长假，温哥华维多利亚自助游找伴</a></li>
							<li><a href="#">去NewFundland，自助游！ 肯定走！</a></li>
							<li><a href="#">多伦多-温哥华 横跨之旅</a></li>
							<li><a href="#">诚招一女， 已有7人定下去NewFoundland</a></li>
							<li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
							<li><a href="#">暑期邮轮 特价不断</a></li>
							<li><a href="#">订机票，选银联，超值特惠</a></li>
						</ul>
						<div>
							
								<img src="${path }/images/add01.jpg">
							
						</div>
					</div>
				</div>

			</div>
			<div class="clumn_r">
				<div class="tc_tit">${detail.name }</div>
				<div class="xq_wrap clearfix">
					<div class="xq_left">
						<img style="width: 200px; height: 150px;"
							src="${path }/images/sights/${detail.image }">
					</div>
					<div class="xq_right">
						<div class="xq_detail" style="margin-bottom: 20px ;word-break: break-all;word-wrap: break-word;">
							<p>产品编号：${detail.code} </p>
							<p>地点：${detail.location }</p>
							<p >门票信息：${detail.ticket }</p>
						</div>
						
						<div class="xq_button">
							<a href="${path }/sights/reorder?id=${detail.id}"><img src="${path }/images/order_button.jpg"></a>
						</div>
					</div>
				</div>
				<div class="xq_wrap">
					<div class="tab_menu xq_menu">
						<ul class="xq_ul">
							<li class="selected">产品介绍</li>
							<li>注意事项</li>

						</ul>
					</div>
					<div class="tab_box">
						<div class="tab_w">
							<div class="jd_clum" style="word-wrap: break-word;">
								<p>${detail.detail }</p>
							</div>
						</div>
						<div class="hide tab_w">${detail.tips }</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../common/foot.jsp" %>
</body>
</html>
