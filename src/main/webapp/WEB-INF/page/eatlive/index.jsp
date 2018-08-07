<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餐饮住宿</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />


<%-- <script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${path }/js/bootstrap.min.js"></script> --%>

<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${path }/js/imgtoggle.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var iTgl = new k_iToggle();
		iTgl.init({
			boxId : 'box',
			numId : 'num',
			imgId : 'imgs',
			isAuto : true,
			aCls : 'act',
			iCls : 'imgs1',
			direct : 'crt'
		});
		chg(iTgl, 'chg');
		_auto(iTgl, 'auto_1');

		//改变方向
		function chg(o, id) {
			$('#' + id).click(function() {
				if (o.direct() == 'crt') {
					o.direct('lvl');
					$(this).text('纵向');
				} else {
					o.direct('crt');
					$(this).text('横向');
				}
			});
		}

		function _auto(o, id) {
			$('#' + id).click(function() {
				if (o.isAuto) {
					o.isAuto = false;
					$(this).text('自动播放已停止');
				} else {
					o.isAuto = true;
					o.auto();
					$(this).text('自动播放');
				}
			});
		}
	}
</script>

</head>
<body>
	<%@ include file="/WEB-INF/page/common/head.jsp"%>
	<div class="mainNav clearfix">
		<ul class="Nav_ul">
			<li><a href="${path }/index">首页</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/route/routeList">旅游路线</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/sights/all">旅游景点</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li class="cur"><a href="${path }/eatLive/list">餐饮住宿</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/Specialty/SpecialtyList">地方特产</a><img
				src="${path }/images/nav_line.jpg"></li>
		</ul>
	</div>
	<div class="b_wrap">
		<div class="current">
			<span>当前所在地：</span><a href="${path }/index">首页</a> >> <a href="javascript:;">餐饮住宿</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clu_zb">
				<div class="tab_menu mul_w">
					<ul class="tab_mul">
						<li class="selected">全自助游</li>
						<li>途径城市设定</li>
						<li>入住酒店设定</li>
						<li>交通设定</li>
						<li>线路设定</li>
						<li>特殊需求线路</li>
					</ul>
				</div>
				<div class="tab_box tw_tab">
					<div>
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
						卦
					</div>
				</div>
			</div>
			<div class="in">
				<div class="pbox">
					<div id="box" class="box">
						<ul id="imgs">
							<li><a href="#"><img src="${path }/images/周庄.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/夫子庙.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/瘦西湖.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/苏州东方之门.jpg"
									width="570" height="280"></a></li>
						</ul>
					</div>
					<div class="cons">
						<ul id="num" class="num">
							<li class="act"><a href="#">周庄</a></li>
							<li><a href="#">夫子庙</a></li>
							<li><a href="#">瘦西湖</a></li>
							<li style="width: 140px"><a href="#">苏州东方之门</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<div class="clumn">
					<div class="clumn_tit t01">餐饮住宿</div>
					<div class="clumn_con">
						<div class="cln_w">
							<p style="margin-left: 20px">城市</p>
							<div class="cln_c clearfix" id="city">
								<!-- <a style="margin-left: 20px" href="#">南京</a> 
								<a style="margin-left: 20px" href="#">无锡</a> 
								<a style="margin-left: 20px" href="#">徐州</a>
								<a style="margin-left: 20px" href="#">常州</a> 
								<a style="margin-left: 20px" href="#">苏州</a> 
								<a style="margin-left: 20px" href="#">南通</a>
								<a style="margin-left: 20px" href="#">淮安</a> 
								<a style="margin-left: 20px" href="#">盐城</a>
								<a style="margin-left: 20px" href="#">宿迁</a>
								<a style="margin-left: 20px" href="#">扬州</a> 
								<a style="margin-left: 20px" href="#">镇江</a> 
								<a style="margin-left: 20px" href="#">泰州</a>
								<a style="margin-left: 20px" href="#">连云港</a> -->
								<input type="hidden" id="city" value="">
								<c:forEach items="${citys }" var="city">
									<a style="margin-left: 20px" href="#" onclick="queryCity('${city.citynum}')">${city.cityname }</a>
								</c:forEach>
							</div>
						</div>
						<!-- <div class="cln_w">
							<p>房价</p>
							<div class="cln_c clearfix">
								<a href="#">600元以上</a> <a href="#">300-600元</a> <a href="#">150-300元</a>
								<a href="#">150元以下</a>
							</div>
						</div> -->
						<!-- <div class="cln_w">
							<p>酒店星级</p>
							<div class="cln_c clearfix">
								<a href="#">五星/豪华</a> <a href="#">四星/高档</a> <a href="#">三星/舒适</a>
								<a href="#">经济/客栈</a>
							</div>
						</div> -->
					</div>
				</div>
				
				<input type="hidden" id="lv" value=""> 
				<div class="clumn" style="margin-top: 40px">
					<div class="clumn_tit t02">
						<span>酒店</span>
					</div>
					<div class="cln_w">
						<p  style="text-align: left;">酒店星级</p>
						<div class="cln_c clearfix">
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('05,1')">五星/豪华</a> 
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('04,1')">四星/高档</a> 
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('03,1')">三星/舒适</a>
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('02,1')">两星/客栈</a>
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('01,1')">一星/经济</a>
						</div>
					</div>
				</div>
				<div class="clumn" style="margin-top: 40px">
					<div class="clumn_tit t03">
						<span>餐饮</span>
					</div>
					<div class="cln_w">
						<p  style="text-align: left;">饭店星级</p>
						<div class="cln_c clearfix">
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('05,0')">五星饭店</a> 
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('04,0')">四星饭店</a> 
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('03,0')">三星饭店</a>
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('02,0')">两星饭店</a>
							<a style="margin-left: 30px" href="javascript:;" onclick="queryLv('01,0')">一星饭店</a>
						</div>
					</div>
				</div>
				<%-- <div class="clumn">
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
				</div> --%>
				<!-- <div class="clumn">
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
				</div> -->
			</div>
			<div class="clumn_r">
				<div class="tab_menu b_border clearfix">
					<input type="hidden" id="type" value="0">
					<ul class="m_ul">
						<li id="colorBack1" onclick="query(0)">餐饮</li>
						<li id="colorBack2" onclick="query(1)">酒店</li>
					</ul>
					<!-- <a href="#">餐饮预定</a> -->
				</div>

				<div id="eatLiveData"></div>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
</body>
<script type="text/javascript">
	//加载数据(实现异步刷新)
	$(function() {
		$("#eatLiveData").load("${path }/eatLive/getData");
	});

	function queryPage(page) {
		/* var index = layer.load(1, {
			shade : false
		});  */
		$("#eatLiveData").load("${path }/eatLive/getData", buildQuery(page),
				function() {
					layer.closeAll();
				});
	}

	function buildQuery(page) {
		var query = {};
		query.page = typeof (page) == "undefined" ? 1 : page;
		//query.filmName = $("#filmname").val();
		query.type = $("#type").val();
		query.city = $("#city").val();
		query.lv = $("#lv").val();
		return query;
	}
	function query(type){
		clear();
		$("#type").val(type);
		if(type == 0){
			$("#colorBack1").css("background","green");
			$("#colorBack2").css("background","blue");
		}else {
			$("#colorBack2").css("background","green");
			$("#colorBack1").css("background","blue");
		}
		queryPage();
	}
	function queryCity(city){
		clear();
		$("#city").val(city);
		queryPage();
	}
	function queryLv(lv){
		clear();
		$("#lv").val(lv);
		queryPage();
	}
	function clear(){
		var type = "";
		$("#type").val(type);
		var city = "";
		$("#city").val(city);
		var lv = "";
		$("#lv").val(lv);
	}
</script>
</html>