<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>江苏梦想游--地方特产页</title>
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
				href="${path }/Specialty/SpecialtyList">地方特产</a>>> <a href="javascript:;">商品详情</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<div class="clumn_l">
					<div class="clumn">
						<div class="clumn_tit t01">餐饮住宿</div>
						<div style="height: 760.6px" class="clumn_con">
							<form action="${path }/Specialty/getFilmData"
								class="bs-example bs-example-form" role="form" method="post">
								<input type="hidden" id="region">
								<div class="cln_w">
									<p>常州市</p>
									<div class="cln_c clearfix">
										<a href="javascript:;" onclick="query(0)">钟楼特产</a> <a href="javascript:;"
											onclick="query(1)">武进特产</a> <a href="javascript:;" onclick="query(2)">新北特产</a>
										<a href="javascript:;" onclick="query(3)">溧阳特产</a> <a href="javascript:;"
											onclick="query(4)">金坛特产</a> <a href="javascript:;" onclick="query(5)">天宁特产</a>
									</div>
								</div>
								<div class="cln_w">
									<p>徐州市</p>
									<div class="cln_c clearfix">
										<a href="javascript:;" onclick="query(6)">泉山特产</a> <a href="javascript:;"
											onclick="query(7)">丰县特产</a> <a href="javascript:;" onclick="query(8)">沛县特产</a>
										<a href="javascript:;" onclick="query(9)">铜山特产</a> <a href="javascript:;"
											onclick="query(10)">鼓楼特产</a>
									</div>
								</div>
								<div class="cln_w">
									<p>南京市</p>
									<div class="cln_c clearfix">

										<a onclick="query(11)">玄武特产</a> <a href="javascript:;"
											onclick="query(12)">栖霞特产</a> <a href="javascript:;" onclick="query(13)">雨花台特产</a>
										<a href="javascript:;" onclick="query(14)">江宁特产</a>
									</div>
								</div>
								<div class="cln_w">
									<p>连云港</p>
									<div class="cln_c clearfix">
										<a href="javascript:;" onclick="query(15)">灌云特产</a> <a href="javascript:;"
											onclick="query(16)">灌南特产</a> <a href="javascript:;" onclick="query(17)">连云特产</a>
										<a href="javascript:;" onclick="query(18)">海州特产</a> <a href="javascript:;"
											onclick="query(19)">东海特产</a>
									</div>
								</div>
								<div class="cln_w">
									<p>南通市</p>
									<div class="cln_c clearfix">
										<a href="javascript:;" onclick="query(20)">崇川特产</a> <a href="javascript:;"
											onclick="query(21)">海安特产</a> <a href="javascript:;" onclick="query(22)">如东特产</a>
										<a href="javascript:;" onclick="query(23)">启东特产</a> <a href="javascript:;"
											onclick="query(24)">海门特产</a>
									</div>
								</div>
								<div class="cln_w">
									<p>无锡市</p>
									<div class="cln_c clearfix">
										<a href="javascript:;" onclick="query(25)">江阴特产</a> <a href="javascript:;"
											onclick="query(26)">宜兴特产</a> <a href="javascript:;" onclick="query(27)">锡山特产</a>
										<a href="javascript:;" onclick="query(28)">惠山特产</a> <a href="javascript:;"
											onclick="query(29)">滨湖特产</a>
									</div>
								</div>
								<div class="cln_w">
									<p>扬州市</p>
									<div class="cln_c clearfix">
										<a href="javascript:;" onclick="query(30)">宝应特产</a> <a href="javascript:;"
											onclick="query(31)">仪征特产</a> <a href="#" onclick="query(32)">高邮特产</a>
										<a href="javascript:;" onclick="query(33)">广陵特产</a> <a href="javascript:;"
											onclick="query(34)">江都特产</a>
									</div>
								</div>
								<div class="cln_w">
									<p>苏州市</p>
									<div class="cln_c clearfix">
										<a href="javascript:;" onclick="query(35)">太仓特产</a> <a href="javascript:;"
											onclick="query(36)">昆山特产</a> <a href="javascript:;" onclick="query(37)">吴江特产</a>
										<a href="javascript:;" onclick="query(38)">姑苏特产</a> <a href="javascript:;"
											onclick="query(39)">虎丘特产</a> <a href="javascript:;" onclick="query(40)">吴中特产</a>
										<a href="javascript:;" onclick="query(41)">相城特产</a>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
			<div class="clumn_r">
				<div class="tc_tit">商品详情</div>
				<div class="xq_wrap clearfix">
					<div class="xq_left">
						<img style="width: 370px; height: 330px"
							src="${path }/images/${specialty.images}">
					</div>
					<div class="xq_right">
						<div class="xq_detail">
							<p class="xq_t">
								<b>${specialty.speName}</b>
							</p>
							<p class="xq_xs">
								<span>${specialty.introduction}</span>
							</p>
							<p>
								<b>优惠价:<span>¥${specialty.preferentialPrice}</span></b>
							</p>
							<p class="zg_price">专柜价格 ¥${specialty.shopPrice}</p>
							<p>净含量:${specialty.weight}</p>
							<p>配送:${specialty.distribution}</p>
							<p>快递:${specialty.courierFees}</p>
							<p>月销量:${specialty.monthlySales}</p>
							<p>评价:${specialty.evaluation}</p>
						</div>

						<div class="xq_button">
							<a href="specialtyOrder?id=${specialty.id}"><img
								src="${path }/images/buy_button.jpg"></a>
						</div>
					</div>
				</div>
				<div class="xq_wrap">
					<div class="tab_menu xq_menu">
						<ul class="xq_ul">
							<li class="selected">商品详情</li>
							<li>用户评论</li>
						</ul>
					</div>
					<div class="tab_box">
						<div class="tab_w">
							<table class="tab_con">
								<caption>品牌名称：${specialty.speName}</caption>
								<tbody>
									<tr>
										<td>产品参数：生产许可证编号：${specialty.productParamenters}</td>
										<td>产品标准号：${specialty.productCode}</td>
									</tr>
									<tr>
										<td>厂名：${specialty.factoryName}</td>
										<td>厂址：${specialty.factoryAddress}</td>
									</tr>
									<tr>
										<td>厂家联系方式：${specialty.factoryPhone}</td>
										<td>配料表：${specialty.brdenSheet}</td>
									</tr>
									<tr>
										<td>储藏方法：${specialty.stroageMetod}</td>
										<td>保质期：${specialty.expirationDate}</td>
									</tr>
									<tr>
										<td>食品添加剂：${specialty.foodAdditives}</td>
										<td>包装方式: ${specialty.paching}</td>
									</tr>
									<tr>
										<td>系列:${specialty.series}</td>
										<td>商品条形码: ${specialty.barCode}</td>
									</tr>
									<tr>
										<td>重量(g):${specialty.weight}</td>
										<td>是否为有机食品: ${specialty.organism}</td>
									</tr>
									<tr>
										<td>等级: ${specialty.rank}</td>
										<td>产地: ${specialty.numberNo}</td>
									</tr>
									<tr>
										<td>生产日期:<fmt:formatDate value="${specialty.productDate}"
												pattern="yyyy-MM-dd" /></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="hide">

							<div class="container">
								<table class="table table-hover" border=1
									style="width: 686px; font-size: 16px" bgcolor=yellow>
									<thead>
										<tr class="active" style="color: bule">

											<th>用户</th>
											<th>评价等级</th>
											<th>评价内容</th>

										</tr>
									</thead>
									<tbody>

										<c:forEach items="${specialty.assesslist }" var="assess">
											<tr style="height: 60px">
												<td>${assess.user.username }</td>
												<td>${assess.levell }</td>
												<td>${assess.content }</td>
											</tr>
											<!-- <tr style="height: 60px">
												<td>Bob</td>
												<td>还好</td>
												<td>客服态度不错，下次还会继续光临！</td>
											</tr>
											<tr style="height: 60px">
												<td>john</td>
												<td>较好</td>
												<td>客服态度不错，下次还会继续光临！</td>
											</tr>
											<tr style="height: 60px">
												<td>祝常青</td>
												<td>很好</td>
												<td>客服态度不错，下次还会继续光临！</td>
											</tr>
											<tr style="height: 60px">
												<td>黄磊</td>
												<td>非常好</td>
												<td>客服态度不错，下次还会继续光临！</td>
											</tr> -->
										</c:forEach>
									</tbody>
								</table>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
</html>
