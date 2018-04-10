<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>旅游景点-详情页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${path }/layer/layer.js"></script>
</head>
<body>
	<c:if test="${empty user }">
		<script type="text/javascript">
			window.location.href = "${path}/user/login"
		</script>
	</c:if>
	<input id="sid" type="hidden" value="${orderinfo.id }" />
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

				<div class="sp_trans">
					<div class="trans_con">
						<p style="color: #28810c;">您正在使用支付宝担保交易</p>
						<p style="font-weight: bold; font-size: 14px;">${orderinfo.sights.name }</p>
						<p>
							<b>支付宝帐号</b>（fmwl@163.com） 可支付余额：<b style="color: #f60;">200.00元</b>
						</p>
						<p>
							<span class="fk_s">您的账户没有可支付余额，请使用以下其他方式付款，或<a
								style="color: #006eb4;" href="#">充值</a>后付
							</span><span class="price_s">¥${orderinfo.account }</span>
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
									<img src="${path }/images/bank_zs.jpg"><span>**2171</span>
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
								</tbody>
							</table>
						</div>
						<div class="next_b">
							<a href="javascript:;" onclick="paySuccess()"><img
								src="${path }/images/next.jpg"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../common/foot.jsp"%>
</body>
<script type="text/javascript">
	function paySuccess() {
		var data = $("#sid").val();
		$.ajax({
			url : "${path}/sights/pay",
			data : {
				"sid" : data
			},
			type : "post",
			success : function(msg) {
				if (msg == "1") {
					layer.msg('支付成功', {
						anim : 1,
						offset : '100px',
						area : '100px',
						icon : 1,
						time : 1000
					}, function(index) {
						window.location.href = "${path}/sights/all";
						layer.close(index);
					});
				}
			}
		})
	}
</script>
</html>
