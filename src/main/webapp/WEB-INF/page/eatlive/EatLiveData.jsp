<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path }/dist/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript">
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
</script> -->
</head>
<body>

	<div class="tab_box">
		<div class="tab_ul">

			<c:forEach items="${page.datas }" var="eat">
				<div class="clearfix tab_d">
					<div class="fn-left">
						<img style="width: 260px; height: 195px" src="${path }/images/${eat.img}">
					</div>
					<div class="tab_con">
						<p>
							<b>${eat.name }</b>
						</p>
						<p>
							推荐星级：<img src="${path }/images/${eat.lv}">
						</p>
						<p>联系方式：${eat.tel }</p>
						<p>城市：${eat.city } 地址：${eat.address }</p>
						<p>
							<a href="detail?id=${eat.id }"><img
								src="${path }/images/more)).jpg"></a>
						</p>
					</div>
				</div>
				<div class="line_b"></div>
			</c:forEach>
			<!-- 分页界面开始 -->
			<div class="container">
				<div class="">
					<div class="col-md-12">
						<ul class="pagination">
							<li><a href="javascript:;" onclick="queryPage(1)">首页</a></li>
							<li class="${page.current eq page.first ? 'disabled':'' }"><a
								href="javascript:;" onclick="queryPage(${page.previous})">&laquo;</a></li>
							<c:forEach begin="1" end="${page.pageNum }" var="pages">
								<li class="${page.current eq pages ? 'active':'' }"><a
									href="javascript:;" onclick="queryPage(${pages})">${pages}</a></li>
							</c:forEach>
							<li class="${page.current eq page.last ? 'disabled':'' }"><a
								href="javascript:;" onclick="queryPage(${page.next})">&raquo;</a></li>
							<li><a href="javascript:;" style="border: 1px solid #ddd;"
								onclick="queryPage(${page.pageNum})">尾页</a></li>
							<li><a style="border: 0px; margin-left: 0px;">当前页${page.current }/${page.pageNum }总页</a></li>
							<!-- <li>
					     	<div id="search" class="input-group" style="positon:relative;">
								<input id="inPage" type="text" class="form-control" placeholder="跳转指定页" />
								<span class="input-group-btn">  
						            <button class="btn btn-info btn-search" onclick="gotoPage();">GO</button>
								</span>
							</div>
					    </li>
					    <li><a style="padding-top: 0px;border: 0px;">
					     	<label>每页显示:</label>
					     	<select id="pageSize" class="form-control" style="width: 100px;display: inline;">
					     		<option value="2">2</option>
					     		<option value="2">4</option>
					     		<option value="2">6</option>
					     		<option value="2">8</option>
					     	</select>
					     	<label>条</label>
					     </a>
					   </li> -->
						</ul>
					</div>
				</div>
			</div>
			<!-- 分页界面结束 -->
		</div>
		<%-- <div class="hide tab_ul">

			<c:forEach items="${page1.datas }" var="live">
				<div class="clearfix tab_d">
					<div class="fn-left">
						<img style="width: 260px; height: 195px"
							src="${path }/images/${live.img }">
					</div>
					<div class="tab_con">
						<p>
							<b>${live.name }</b>
						</p>
						<p>
							推荐星级：<img src="${path }/images/${live.lv}">
						</p>
						<p>联系方式：${live.tel }</p>
						<p>城市：${live.city } 地址：${live.address }</p>
						<p>
							<a href="detail?id=${live.id }"><img
								src="${path }/images/more)).jpg"></a>
						</p>
					</div>
				</div>
			</c:forEach>
		</div> --%>
	</div>
</body>
</html>