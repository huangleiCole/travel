<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
				<div class="js_box">
					<div class="js_tit clearfix">
						
						<div class="fy_w">
							<a href="javascript:;">${page.current }/${page.pageNum }页 </a>
							<a href="javascript:;" onclick="queryPage('${page.previous}')">上一页</a> 
							<a href="javascript:;" onclick="queryPage('${page.next}')">下一页</a>
						</div>
					</div>
					<div class="js_wrap claerdix">
						<c:forEach items="${page.datas }" var="item" varStatus="vs">
							<div class="js_con clearfix">
								<div class="js_l">
									<a href="${path }/sights/detail?id=${item.id}"><img style="width: 100px;height: 75px" src="${path }/images/sights/${item.image}"></a>
								</div>
								<div class="js_c">
									<p>
										<b><a href="${path }/sights/detail?id=${item.id}">${item.name }</a></b>
									</p>
									<p>
										${item.type}  <span style="color: deepskyblue;">${item.level} </span> <span style="color: deeporange">${item.grade }</span>
									</p>
									<p>
										<span class="js_gm"></span><span>${item.buyNum }</span>人购买
									</p>
								</div>
								<div class="js_r">
									<p>
										<span class="fn_o">￥</span><b>${item.newPrice }</b>起
									</p>
									<p class="y_price">
										￥${item.oldPrice} <span>${item.discount }折</span>
									</p>
								</div>
							</div>
						</c:forEach>
						
					</div>
				</div>
			
	</body>
</html>