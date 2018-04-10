<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="clumn_r">
		<div class="tc_tit">地方特产</div>

		<div class="tc_wrap clearfix">
			<c:forEach items="${page.datas }" var="specialty">
				<dl>
					<dt>
						<a href="specialtyxq?id=${specialty.id }"><img
							style="width: 160px; height: 120px"
							src="${path }/images/${specialty.images}"></a>
					</dt>
					<dd>
						<p class="d01">
							<a href="specialtyxq?id=${specialty.id }">${specialty.speName}</a>
						</p>
						<p>
							<span>${specialty.introduction}</span>
						</p>
						<p>
							优惠价：<span>￥:${specialty.preferentialPrice}</span>
						</p>
					</dd>
				</dl>
			</c:forEach>

		</div>

		<div>
			<div class="row text-center">
				<div class="col-md-12">
					<ul class="pagination">
						<li><a href="javascript:;" onclick="queryPage(1)">首页</a></li>
						<li class="${page.current eq page.first ? 'disabled':'' }"><a
							href="javascript:;" onclick="queryPage('${page.previous}')">&laquo;</a></li>
						<c:forEach begin="1" end="${page.pageNum }" var="pages">
							<li class="${page.current eq pages ? 'active':'' }"><a
								href="javascript:;" onclick="queryPage('${pages}')">${pages}</a></li>
						</c:forEach>
						<li class="${page.current eq page.last ? 'disabled':'' }"><a
							href="javascript:;" onclick="queryPage('${page.next}')">&raquo;</a></li>
						<li><a href="javascript:;" style="border: 1px solid #ddd;"
							onclick="queryPage('${page.pageNum}')">尾页</a></li>
						<li><a style="border: 0px; margin-left: 0px;">当前页${page.current }/${page.pageNum }总页</a></li>
						<li>跳转到第 <input id="page" type="text" size="1"> 页
							<button onclick="TiJiao()" class="btn btn-info btn-search">确定</button></li>
					</ul>

				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript">
		function TiJiao() {
			var regPage = /^[1-9]*$/;
			var page = $('#page').val();
			$("#filmData").load("${path }/Specialty/getFilmData",
					buildQuery(page), function() {
						layer.closeAll();
					});
		};
	</script>


</body>
</html>