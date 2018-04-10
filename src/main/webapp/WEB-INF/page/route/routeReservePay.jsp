<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅游路线-详情页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
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
								<img src="images/add01.jpg">
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
			<div class="clumn_r01">
				<div class="gr_info">
					<table width="710" border="0" cellspacing="0" cellpadding="0">
						<caption>填写个人信息</caption>
						<tbody>
							<tr>
								<td width="80" align="right">姓名：</td>
								<td width="630"><input class="it_p" type="text" name=""
									value="" placeholder=""></td>
							</tr>
							<tr>
								<td align="right">身份证号：</td>
								<td><input class="it_p" type="text" name="" value=""
									placeholder=""></td>
							</tr>
							<tr>
								<td align="right">姓名：</td>
								<td><input class="it_p" type="text" name="" value=""
									placeholder=""> <label> <input type="radio"
										name="RadioGroup1" value="单选" id="RadioGroup1_0"> 男
								</label> <label> <input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_1"> 女
								</label></td>
							</tr>
							<tr>
								<td align="right">身份证号：</td>
								<td><input class="it_p" type="text" name="" value=""
									placeholder=""></td>
							</tr>
							<tr>
								<td align="right">联系人：</td>
								<td><input class="it_p" type="text" name="" value=""
									placeholder=""> <label> <input type="radio"
										name="RadioGroup2" value="单选" id="RadioGroup2_0"> 男
								</label> <label> <input type="radio" name="RadioGroup2"
										value="单选" id="RadioGroup2_1"> 女
								</label></td>
							</tr>
							<tr>
								<td align="right">联系人电话：</td>
								<td><input class="it_p" type="text" name="" value=""
									placeholder=""></td>
							</tr>
							<tr>
								<td align="right" valign="top">备注：</td>
								<td><textarea name="" cols="" rows=""></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="sp_trans">
					<div class="trans_con">
						<p style="color: #28810c;">您正在使用支付宝担保交易</p>
						<p style="font-weight: bold; font-size: 14px;">中秋节礼品
							大山合百菇园秋月款A菌菇礼盒 干货大礼包土特产送礼</p>
						<p>
							<b>支付宝帐号</b>（fmwl@163.com） 可支付余额：<b style="color: #f60;">200.00元</b>
						</p>
						<p>
							<span class="fk_s">您的账户没有可支付余额，请使用以下其他方式付款，或<a
								style="color: #006eb4;" href="#">充值</a>后付
							</span><span class="price_s">¥455.10</span>
						</p>
					</div>
					<div class="sp_bz">
						<img src="${path }/images/baoz.jpg">
					</div>
				</div>
				<div class="fk_wrap">
					<div class="fk_tit">您可以使用以下或其他方式付款：</div>
					<div class="fk_con">
						<div class="fk_bank">
							<div class="fk_tw clearfix">
								<div class="fn-left">
									<img src="${path }/images/kj_zf.jpg">
								</div>
								<div class="hd_b fn-left">
									<ul>
										<li><img src="${path }/images/hui.jpg" align="absmiddle">每天都有银行优惠</li>
										<li><img src="${path }/images/ji.jpg" align="absmiddle">银行积分当钱花</li>
										<li><img src="${path }/images/fan.jpg" align="absmiddle">每10元反一个集分宝</li>
									</ul>
									<i><img src="${path }/images/z_row.jpg"></i>
								</div>
							</div>
							<div class="xz_wrap clearfix">
								<input name="" type="radio" value="">
								<div class="xz_bank">
									<img src="images/bank_zs.jpg"><span>**2171</span>
								</div>
							</div>
							<table class="tj_bank" width="660" border="0" cellspacing="0"
								cellpadding="0">
								<caption>推荐银行：</caption>
								<tbody>
									<tr>
										<td><label><input type="radio" name="RadioGroup1"
												value="单选" id="RadioGroup1_0"></label>
											<div class="xz_yx">
												<div class="yh_zp">
													<img src="${path }/images/bank01.jpg">
												</div>
												<div class="yh_xc">
													<span>惠</span>100减10
												</div>
												<div></div>
											</div></td>
										<td><label><input type="radio" name="RadioGroup1"
												value="单选" id="RadioGroup1_3"></label>
											<div class="xz_yx">
												<div class="yh_zp">
													<img src="${path }/images/bank02.jpg">
												</div>
												<div class="yh_xc">
													<span>惠</span>100减10
												</div>
												<div></div>
											</div></td>
									</tr>
									<tr>
										<td><label><input type="radio" name="RadioGroup1"
												value="单选" id="RadioGroup1_2"></label>
											<div class="xz_yx">
												<div class="yh_zp">
													<img src="${path }/images/bank01.jpg">
												</div>
												<div class="yh_xc">
													<span>惠</span>100减10
												</div>
												<div></div>
											</div></td>
										<td><label><input type="radio" name="RadioGroup1"
												value="单选" id="RadioGroup1_1"></label>
											<div class="xz_yx">
												<div class="yh_zp">
													<img src="${path }/images/bank01.jpg">
												</div>
												<div class="yh_xc">
													<span>返</span>2倍
												</div>
												<div></div>
											</div></td>
									</tr>
									<tr>
										<td><label><input type="radio" name="RadioGroup1"
												value="单选" id="RadioGroup1"></label>
											<div class="xz_yx">
												<div class="yh_zp">
													<img src="${path }/images/bank05.jpg">
												</div>
												<div class="yh_xc">
													<span>惠</span>100减10
												</div>
												<div></div>
											</div></td>
										<td><label><input type="radio" name="RadioGroup1"
												value="单选" id="RadioGroup3"></label>
											<div class="xz_yx">
												<div class="yh_zp">
													<img src="${path }/images/bank06.jpg">
												</div>
												<div class="yh_xc">
													<span>惠</span>100减10
												</div>
												<div></div>
											</div></td>
									</tr>
									<tr>
										<td align="left" valign="top"><a class="other01" href="#">选择其他</a></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="web_bank">
							网上银行：<a href="#">选择其他</a>
						</div>
						<div class="next_b">
							<a href="#"><img src="${path }/images/next.jpg"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
</html>
