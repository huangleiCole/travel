<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅游路线页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
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
				href="javascript:;">旅游路线</a>
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
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
						</ul>
					</div>
					<div class="cons">
						<ul id="num" class="num">
							<li class="act"><a href="#">夏阳湖皇冠假日酒店</a></li>
							<li><a href="#">黄金水岸开业酬宾</a></li>
							<li><a href="#"> 首尔公寓酒店</a></li>
							<li style="width: 140px"><a href="#"> 新加坡文化酒店</a></li>
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
			<div class="clumn_r01">
				<div id="RouteData"></div>
				<div class="zb_wrap clearfix">
					<div class="zb_tit">
						<b>杭州周边热门景点</b><a href="#">更多>></a>
					</div>
					<div class="zb_con clearfix">
						<ul class="zb_ul">
							<li><a href="#">游浙东大峡谷，赏小三峡风光，玩白溪漂流，住豪华宁海开元新世纪大酒店，享惬意旅途</a><span>¥710起</span></li>
							<li><a href="#">【象山海滨游】踏浪、玩沙、游古城，住象山海洋酒店 </a><span>¥558起</span></li>
							<li><a href="#">【暑期特惠】双人两日游宁波九龙湖，亲近自然山水风光，住挂牌五星远洲大酒店 </a><span>¥478起</span></li>
							<li><a href="#">【溪口二日游】感受人文之精华，山水之灵秀，佛教之庄严 </a><span>¥768起</span></li>
							<li><a href="#">【凤凰山海港乐园】浪漫、刺激、梦幻，爱她就带她去双人二日游 </a><span>¥810起</span></li>
							<li><a href="#">【暑期特惠，杭州浪漫2日自由行】★游西溪湿地非诚勿扰拍摄地，赏西溪浪漫美景！ </a><span>¥410起</span></li>
							<li><a href="#">杭州临安双人2日游，体验激情漂流，感受峡谷风景，完美旅行，超值特惠！ </a><span>¥510起</span></li>
							<li><a href="#">【凤凰山海港乐园】浪漫、刺激、梦幻，爱她就带她去双人二日游 </a><span>¥810起</span></li>
							<li><a href="#">【暑期特惠，杭州浪漫2日自由行】★游西溪湿地非诚勿扰拍摄地，赏西溪浪漫美景！ </a><span>¥410起</span></li>
							<li><a href="#">杭州临安双人2日游，体验激情漂流，感受峡谷风景，完美旅行，超值特惠！ </a><span>¥510起</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/page/common/foot.jsp"%>

	<script type="text/javascript">
		//加载数据 
		$(function() {
			$("#RouteData").load("${path }/route/getRouteData");
		})

		function queryPage(page) {
			/* var index = layer.load(1, {shade: false}); */
			$("#RouteData").load("${path }/route/getRouteData",
					buildQuery(page), function() {
						layer.closeAll();
					});
		}

		function buildQuery(page) {
			var query = {};
			query.page = typeof (page) == "undefined" ? 1 : page;
			return query;
		}

		function query(val) {
			$("#region").val(val);
			queryPage();
		}
	</script>
</body>
</html>
