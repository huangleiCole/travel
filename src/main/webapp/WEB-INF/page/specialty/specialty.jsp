<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>江苏梦想游--地方特产页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${path }/js/imgtoggle.js"></script>
<link rel="stylesheet" href="${path }/dist/css/bootstrap.min.css" />
<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js" ></script>
<script type="text/javascript" src="${path }/dist/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="${path }/layer/layer.js"></script>
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
			<li><a href="${path }/sights/all">旅游景点</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/eatLive/list">餐饮住宿</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li  class="cur"><a href="${path }/Specialty/SpecialtyList">地方特产</a><img
				src="${path }/images/nav_line.jpg"></li>
		</ul>
	</div>
	<div class="b_wrap">
	
		<div class="current">
			<span>当前所在地：</span><a href="${path }/index">首页</a> >> <a
				href="javascript:;">地方特产</a>
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
						<table class="t_tab">
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
						<table class="t_tab">
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
						<table class="t_tab">
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
						<table class="t_tab">
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
						<table class="t_tab">
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
						<table class="t_tab">
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
					<div class="clumn_tit t01">地方特产</div>
					<div style="height: 760.6px" class="clumn_con">
					<form action="${path }/Specialty/getFilmData" class="bs-example bs-example-form" role="form" method="post" >
						<input type="hidden" id="region">
						<div class="cln_w">
							<h5 class="cln_c clearfix"><a href="javascript:;" onclick="query()">所有特产</a></h5>
							<p>常州市</p>
							<div class="cln_c clearfix">
								<a href="javascript:;" onclick="query(0)">钟楼特产</a> <a href="javascript:;" onclick="query(1)">武进特产</a> <a href="javascript:;" onclick="query(2)">新北特产</a> <a
									href="javascript:;" onclick="query(3)">溧阳特产</a> <a href="javascript:;"onclick="query(4)">金坛特产</a> <a href="javascript:;" onclick="query(5)">天宁特产</a>
							</div>
						</div>
						<div class="cln_w">
							<p>徐州市</p>
							<div class="cln_c clearfix">
								<a href="javascript:;" onclick="query(6)">泉山特产</a> <a href="javascript:;" onclick="query(7)">丰县特产</a> <a href="javascript:;" onclick="query(8)">沛县特产</a> <a
									href="javascript:;" onclick="query(9)">铜山特产</a> <a href="javascript:;" onclick="query(10)">鼓楼特产</a>
							</div>
						</div>
						<div class="cln_w">
							<p>南京市</p>
							<div class="cln_c clearfix">
						
								   <a href="javascript:;" onclick="query(11)">玄武特产</a> <a href="javascript:;" onclick="query(12)">栖霞特产</a> <a
									href="javascript:;" onclick="query(13)">雨花台特产</a> <a href="javascript:;" onclick="query(14)">江宁特产</a>
							</div>
						</div>
						<div class="cln_w">
							<p>连云港</p>
							<div class="cln_c clearfix">
								<a href="javascript:;" onclick="query(15)">灌云特产</a> <a href="javascript:;" onclick="query(16)">灌南特产</a> <a href="javascript:;" onclick="query(17)">连云特产</a> <a
									href="javascript:;" onclick="query(18)">海州特产</a> <a href="javascript:;" onclick="query(19)">东海特产</a>
							</div>
						</div>
						<div class="cln_w">
							<p>南通市</p>
							<div class="cln_c clearfix">
								<a href="javascript:;" onclick="query(20)">崇川特产</a> <a href="javascript:;" onclick="query(21)">海安特产</a> <a href="javascript:;" onclick="query(22)">如东特产</a> <a
									href="javascript:;" onclick="query(23)">启东特产</a> <a href="javascript:;" onclick="query(24)">海门特产</a>
							</div>
						</div>
						<div class="cln_w">
							<p>无锡市</p>
							<div class="cln_c clearfix">
								<a href="javascript:;" onclick="query(25)">江阴特产</a> <a href="javascript:;" onclick="query(26)">宜兴特产</a> <a href="javascript:;" onclick="query(27)">锡山特产</a> <a
									href="javascript:;" onclick="query(28)">惠山特产</a> <a href="javascript:;" onclick="query(29)">滨湖特产</a>
							</div>
						</div>
						<div class="cln_w">
							<p>扬州市</p>
							<div class="cln_c clearfix">
								<a href="javascript:;" onclick="query(30)" >宝应特产</a> <a href="javascript:;"onclick="query(31)">仪征特产</a> <a href="javascript:;" onclick="query(32)">高邮特产</a> <a
									href="javascript:;" onclick="query(33)">广陵特产</a> <a href="javascript:;" onclick="query(34)">江都特产</a>
							</div>
						</div>
						<div class="cln_w">
							<p>苏州市</p>
							<div class="cln_c clearfix">
								<a href="javascript:;" onclick="query(35)">太仓特产</a> <a href="javascript:;" onclick="query(36)">昆山特产</a> <a href="javascript:;" onclick="query(37)">吴江特产</a> <a
									href="javascript:;" onclick="query(38)">姑苏特产</a> <a href="javascript:;" onclick="query(39)">虎丘特产</a> <a href="javascript:;" onclick="query(40)">吴中特产</a> <a
									href="javascript:;" onclick="query(41)">相城特产</a>
							</div>
						</div>
						</form>
					</div>
					
				</div>
			</div>
			<div id="filmData"></div>
			</div>
			
	</div>
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>
	<script type="text/javascript">
//加载数据 
		$(function(){
			$("#filmData").load("${path }/Specialty/getFilmData");
		})
		
		function queryPage(page){
			var index = layer.load(1, {shade: false});
			$("#filmData").load("${path }/Specialty/getFilmData",buildQuery(page),function(){
				layer.closeAll();
			});
		}
		
		function buildQuery(page){
			var query = {};
			query.page = typeof(page) == "undefined"?1:page;
			query.Origin = $("#region").val();
			
			return query;
		}
		
		function query(val) {
			$("#region").val(val);
			queryPage();
		}
		
		
		
		</script>
</body>
</html>
