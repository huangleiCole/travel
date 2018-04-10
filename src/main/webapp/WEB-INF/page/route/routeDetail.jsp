<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中国梦想游--旅游路线页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
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
				href="${path }/route/routeList">旅游路线</a> <a href="javascript:;">商品详情</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<div class="clumn">
					<div class="clumn_tit t01">餐饮住宿</div>
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
							<center>
								<img src="${path }/images/add01.jpg">
							</center>
						</div>
					</div>
				</div>
				<div class="clumn">
					<div class="clumn_tit t03">
						<span>游览历史记录</span><a href="#">更多>></a>
					</div>
					<div class="clumn_con">
						<ul class="clu_ul s_ul">
							<li><a href="#">日本航空·大阪自由行5日 </a><span>¥3152</span></li>
							<li><a href="#">日本航空·名古屋自由行4日 </a><span>¥3129</span></li>
							<li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
							<li><a href="#">日本航空·大阪自由行5日 </a><span>¥3152</span></li>
							<li><a href="#">日本航空·名古屋自由行4日 </a><span>¥3129</span></li>
							<li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
							<li><a href="#">日本航空·大阪自由行5日 </a><span>¥3152</span></li>
							<li><a href="#">日本航空·名古屋自由行4日 </a><span>¥3129</span></li>
							<li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clumn_r">
				<div class="tc_tit">${route.routeName }</div>
				<div class="xq_wrap clearfix">
					<div class="xq_left">
						<img src="${path }/images/${route.image}"
							style="width: 370px; height: 330px">
					</div>
					<div class="xq_right">
						<div class="xq_detail">
							<p>产品编号：${route.routeNumber }</p>
							<p>出发地点：${route.startPlace }</p>
							<p>结束地点：${route.endPlace }</p>
							<p>旅游价格：￥${route.newPrice }</p>
							<p>
								出团日期：
								<fmt:formatDate value="${route.startTime }" pattern="yyyy-MM-DD" />
								-
								<fmt:formatDate value="${route.endTime }" pattern="yyyy-MM-DD" />
							</p>
							<p>持续时间：${route.betweenTime }天</p>
							<p>
								出团日期：
								<fmt:formatDate value="${route.startTime }" pattern="yyyy-MM-DD" />
							</p>
						</div>
						<div class="share">
							<img src="${path }/images/sh01.jpg" align="absmiddle">
							分享给朋友： <a href="#"><img src="${path }/images/sh02.jpg"
								align="absmiddle"></a> <a href="#"><img
								src="${path }/images/sh03.jpg" align="absmiddle"></a> <a
								href="#"><img src="${path }/images/sh04.jpg"
								align="absmiddle"></a> <a href="#"><img
								src="${path }/images/sh05.jpg" align="absmiddle"></a>
						</div>
						<div class="xq_button">
							<a href="${path }/route/routeReserve?id=${route.id}"><img
								src="${path }/images/order_button.jpg"></a>
						</div>
					</div>
				</div>
				<div class="xq_wrap">
					<div class="tab_menu xq_menu">
						<ul class="xq_ul">
							<li class="selected">产品介绍</li>
							<li>注意事项</li>
							<li>重要说明</li>
							<li>用户评论</li>
						</ul>
					</div>
					<div class="tab_box">
						<div class="tab_w">
							<div class="jdap">
								<p>本产品为出发地成团。</p>
							</div>
							<c:forEach items="${routeDays }" var="routeD">
								<div class="jd_clum">
									<div class="jd_tit">第${routeD.day }天 ${routeD.startPlace }
										— ${routeD.endPlace }</div>
									<div class="jd_con">
										<p>${routeD.introduce }</p>
									</div>
									<div class="jd_t">景点介绍：${routeD.spotName}</div>

									<div class="jd_dl clearfix">

										<dl class="mr16">
											<dt>
												<img src="${path }/images/${routeD.image}"
													style="width: 670px; height: 657px">
											</dt>
											<dd>${routeD.spotName}</dd>
										</dl>
										<%--  <dl>
                           <dt><img src="${path }/images/jd_img02.jpg"></dt>
                           <dd>森林氧吧</dd>
                         </dl> --%>

									</div>
								</div>
							</c:forEach>
							<div class="jd_con01">

								<p>
									<span>结束愉快行程，返回${route.endPlace }。</span>
								</p>
								<p>
									<span>* 以上行程仅供参考，最终行程可能会根据实际情况进行微调，敬请以出团通知为准。</span>
								</p>
							</div>

						</div>
						<div class="hide tab_w">dhgjfd</div>
						<div class="hide tab_w">dhgjfd</div>
						<div class="hide tab_w">dhgjfd</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
</html>
