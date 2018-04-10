<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		 <div class="js_box">
          <div class="js_tit clearfix">
            <div class="fy_w"><a href="javascript:;">${page.current}/${page.pageNum }页 </a>
            <%-- <c:if test="${currentPage}>1"> --%>
            	<a href="javascript:;" onclick="queryPage('${page.previous}')">上一页</a>
            <%-- </c:if> --%>
            <%-- <c:if test="${currentPage}&lt;${pageNum}"> --%>
            	<a href="javascript:;" onclick="queryPage('${page.next}')">下一页</a> 
            <%-- </c:if> --%>
            </div>
          </div>
		 <div class="js_wrap claerdix">
          	<c:forEach items="${page.datas}" var="rou">
            <div class="js_con clearfix">
               <div class="js_l"><a href="${path }/route/routeDetail?id=${rou.id}"><img src="${path }/images/${rou.image }" style="width: 100px;height: 75px"></a></div>
              <div class="js_c">
                <p><b><a href="${path }/route/routeDetail?id=${rou.id}">${rou.routeName}</a></b></p>
                <p><a class="js_pl" href="#"><span>${rou.comments }</span>条评论</a> <a class="js_gm" href="#"><span>${rou.purchasePeople}</span>人购买</a></p>
              </div>
              <div class="js_r">
                <p><span class="fn_o">￥</span><b>${rou.newPrice }</b>起</p>
                <p class="y_price">￥${rou.oldPrice } <span>${rou.discount }折</span></p>
              </div>
            </div>
           </c:forEach> 
          </div>
          </div>
	</body>
</html>