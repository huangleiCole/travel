<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餐饮预订</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
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
			<span>当前所在地：</span><a href="${path }/index">首页</a> >> <a
				href="${path }/eatLive/list">餐饮住宿</a> >> <a href="detail?id=${eat.id }">${eat.name }</a> >> <a href="javascript:;">餐饮预定</a>
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
							<p>房价</p>
							<div class="cln_c clearfix">
								<a href="#">600元以上</a> <a href="#">300-600元</a> <a href="#">150-300元</a>
								<a href="#">150元以下</a>
							</div>
						</div>
						<div class="cln_w">
							<p>酒店星级</p>
							<div class="cln_c clearfix">
								<a href="#">五星/豪华</a> <a href="#">四星/高档</a> <a href="#">三星/舒适</a>
								<a href="#">经济/客栈</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clumn_r">
			<form id="saveForm" action="" method="post"
				class="form-horizontal" role="form">
				<fieldset>
				<table class="cr_table" width="680" border="0" cellspacing="0"
					cellpadding="0">
					<tbody>
						<tr>
							<td class="td01">餐厅名称：</td>
							<!-- <td><select class="t_st" name="select" id="select">
							</select></td> -->
							<td><label> <input type="text" name="eatname"
									id="textfield" value="${eat.name }">
							</label></td>
						</tr>
						<tr>
							<td class="td01">客户姓名：</td>
							<td><label> <input type="text" name="username"
									id="textfield">
							</label></td>
						</tr>
						<tr>
							<td class="td01">手机号码：</td>
							<td><label> <input type="text" name="tel"
									id="textfield2">
							</label></td>
						</tr>
						<tr>
							<td class="td01">身份证号：</td>
							<td><label> <input type="text" name="idcard"
									id="textfield3">
							</label></td>
						</tr>
						<tr>
							<td class="td01">就餐人数：</td>
							<td><label> <input type="text" name="eatnum"
									id="textfield4">
							</label></td>
						</tr>
						<tr>
							<td class="td01">就餐时间：</td>
							<td><label> <input type="text" name="eattime"
									id="datetimepicker" class="Wdate" onclick="WdatePicker()">
							</label></td>
						</tr>
						<tr>
							<td class="td01">特殊要求：</td>
							<td><textarea name="require" id="textarea" cols="45"
									rows="5"></textarea></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><a href="#"><img src="${path }/images/qxgg.jpg"></a>
								&nbsp;&nbsp;<a href="#" onclick="saveEatOrder()"><img src="${path }/images/tjbd.jpg"></a></td>
						</tr>
					</tbody>
				</table>
				</fieldset>
			</form>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/page/common/foot.jsp"%></body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${path }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${path }/layer/layer.js"></script>
<script type="text/javascript">
		function saveEatOrder() {
			var data = $("#saveForm").serialize();
			$.ajax({
				url : "${path }/order/saveEatOrder",
				data : data,
				type : "post",
				success : function(msg) {
					//判断是否登录成功
					if (msg == "true") {
						layer.alert('保存成功！', {
							icon : 1
						}, function(list) {
							window.location.href = "${path }/eatLive/list";
							layer.close(list);
						});
						//return;
					} else {
						layer.alert('保存失败，请重新操作！', {
							icon : 2
						});
						//return false;
					} 
				}
			});
		}
	</script>
</html>