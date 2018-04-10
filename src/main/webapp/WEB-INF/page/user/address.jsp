<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的配送地址</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="../common/head.jsp"%>
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
			<li><a href="${path }/Specialty/SpecialtyList">地方特产</a><img
				src="${path }/images/nav_line.jpg"></li>
		</ul>
	</div>
<div class="b_wrap">
    <div class="current"><span>当前所在地：</span><a href="${path }/index">首页</a> >> <a href="javascript:;">会员中心</a></div>
    <div class="fmember">
    	<div class="fmleft">
        	<div class="fmleft_top"><img src="${path }/images/fmbt1.png" border="0"></div>
            <div class="fmlist">
            	<ul>
                	<li class="f1">订单中心</li>
                	<li> >><a href="${path }/user/order">我的订单</a> </li>
                    
                </ul>
              
                <ul>
                	<li class="f1">账户信息</li>
                	
                    <li> >><a href="${path }/user/updatepassword?id=${user.id}">修改密码</a> </li>
                    <li class="f2"> >><a href="${path }/user/address">配送地址</a> </li>
                </ul>
            </div>
        </div>
        <div class="fmright">
        	<div class="fmr1">
            	<div class="fmr1_top">配送地址</div>
                <div class="fmr1_m">
					<table border="1" cellpadding="0" cellspacing="0" bordercolor="#ddd" width="678" >
                    	<tr height="29" style="background:url(images/forbg1.png) repeat-x;">
                        	<td width="100" align="center" >收件人</td>
                            <td width="188" align="center">配送地址</td>
                            <td width="100" align="center">邮编</td>
                            <td width="100" align="center">座机/手机</td>
                            <td width="188" align="center">操作</td>
                        </tr>
                        <c:forEach items="${address }" var="address">
                        <tr height="29" >
                        
                        	<td width="100" align="center" >${address.username }</td>
                            <td width="188" align="center">${address.detail }</td>
                            <td width="100" align="center">${address.postcode }</td>
                            <td width="100" align="center">${address.mobilephone }</td>
                            <td width="188" align="center"><span class="fspan10"><a href="${path }/user/updateaddress?id=${address.id}">编辑</a> | <a href="${path }/user/deleteaddress?id=${address.id}">删除</a> | <a href="#">默认</a></span></td>
                        </tr>
                        </c:forEach>
                        <tr height="55">
                        	<td colspan="5" align="center" valign="middle"><a href="${path }/user/addaddress">添加新的配送地址</a></td>
                        </tr>
                    </table>                  
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/foot.jsp"%>
</body>
</html>