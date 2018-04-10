<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>会员注册</title>

<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-3.1.1.min.js"></script>

<script type="text/javascript" src="${path }/layer/layer.js"></script>
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
			<li><a href="${path }/Specialty/SpecialtyList">地方特产</a><img
				src="${path }/images/nav_line.jpg"></li>
		</ul>
	</div>
	<div class="b_wrap">
		<div class="current">
			<span>当前所在地：</span><a href="${path }/index">首页</a> >> <a
				href="javascript:;">会员注册</a>
		</div>
		<div class="regin_w clearfix">
			<div class="regin_con">
				<div class="regin">
					<div class="tab_menu regin_menu">
						<ul class="regin_ul">
							<li class="selected">手机注册</li>
							<li>邮箱注册</li>
						</ul>
					</div>
					<div class="tab_box">
						<div class="regin_tw">
							<form id="form1" action="${path }/user/registers">
							
								<table width="650" border="0" cellspacing="0" cellpadding="0">


									
									<tr class="form-group">
										<td width="62">用户名：</td>
										<td width="588"><input class="rg_in" type="text"
											name="user1name" value=""></td>
									</tr>
									<tr>
										<td>手机号码：</td>
										<td><input class="rg_in" type="text" name="phone"
											value=""></td>
									</tr>
									<tr>
										<td>登录密码：</td>
										<td><input class="rg_in" type="password" name="password"
											value=""></td>
									</tr>
									<tr>
										<td>确认密码：</td>
										<td><input class="rg_in" type="password"
											name="repassword" value=""></td>
									</tr>
									<tr>
										<td>验 证 码：</td>
										<td><input class="rg_yzm" type="text"
											name="identifiyingcode" value=""> <img
											src="${path }/images/yzm_zc.jpg"> <a href="#">看不清换一张</a></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><select name="type">
												<option value="同意">同意</option>
												<option value="不同意">不同意</option>
										</select> 愿意接受旅游资讯免费信息</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input type="submit" value="同意协议并注册" /></td>
									</tr>
								</table>
							</form>
							<div class="pdv_class" title="内容标题"
								style="width: 650px; height: 160px; z-index: 12; overflow-y: auto; overflow-x: hidden;">
								<div class="pdv_content" style="overflow: visible; width: 100%;">
									<div class="pdv_border"
										style="margin: 0; padding: 0px; height: 100%;">
										<div
											style="height: 25px; margin: 1px; display: none; background:;">

										</div>
										<div class="contentDetail">
											<div class="step0" style="display: block;">
												<p class="st_tit">江苏梦想游会员协议</p>
												<div class="stp01">
													<p>一、服务条款
														江苏梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
														称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p>
												</div>
												<div class="stp01">
													<p>一、服务条款
														江苏梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
														称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p>
												</div>
												<div class="stp01">
													<p>一、服务条款
														江苏梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
														称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p>
												</div>
												<div class="stp01">
													<p>一、服务条款
														江苏梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
														称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p>
												</div>
												<div class="stp01">
													<p>一、服务条款
														江苏梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
														称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p>
												</div>
												<div class="stp01">
													<p>一、服务条款
														江苏梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
														称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p>
												</div>
												<div class="stp01">
													<p>一、服务条款
														江苏梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
														称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="hide regin_tw">抱歉啦还没有开通</div>
					</div>
				</div>
			</div>
			<div class="regin_info">
				<p class="if_t">
					<b>为什么选择江苏梦想游</b>
				</p>
				<div>
					<div class="if_tit">
						<img src="${path }/images/dj_01.jpg"> 低价、放心
					</div>
					<p>低价保证、无零负团费、无特殊附加 费、9大出游保障。</p>
				</div>
				<div>
					<div class="if_tit">
						<img src="${path }/images/ff_01.jpg"> 产品丰富
					</div>
					<p>8万+旅游产品，涵盖跟团、自助、自 驾、邮轮、公司游等，总有一款适合您。</p>
				</div>
				<div>
					<div class="if_tit">
						<img src="${path }/images/xx_01.jpg"> 300万游客的选择
					</div>
					<p>累计服务300万人次，60万真实点评， 2万原创游记。</p>
				</div>
				<div>
					<div class="if_tit">
						<img src="${path }/images/fw_01.jpg"> 更多服务
					</div>
					<p>全省13个出发城市，7X24小时服务</p>
				</div>
				<center>
					<img src="${path }/images/zc_img0.jpg">
				</center>
			</div>
		</div>
	</div>
	<%@ include file="../common/foot.jsp"%>
</body>

</html>