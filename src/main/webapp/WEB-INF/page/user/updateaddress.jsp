<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
                <form action="${path }/user/updateaddressS" method="post">
                 <input type="hidden" name="id" value="${address.id }">
                    	<table border="0" cellpadding="0" cellspacing="0" width="638">
                    	<tr>
                            </tr>
                        	<tr>
                            	<td width="60" align="left" height="30">收件人：</td>
                                <td width="578" align="left" height="30"><input type="text" name="username" value="${address.username }"class="finput3">&nbsp;<span class="fspan9">（必填）</span></td>
                            </tr>
                            <tr>
                            	<td width="100" align="left" height="30">配送地址：</td>
                                <td width="578" align="left" height="30"><input type="text" name="detail" value="${address.detail }" class="finput3">&nbsp;<span class="fspan9">（必填）</span></td>
                            </tr>
                            <tr>
                            	<td width="100" align="left" height="30">邮编：</td>
                                <td width="578" align="left" height="30"><input type="text" name="postcode" value="${address.postcode }" class="finput4">&nbsp;<span class="fspan9">（必填）</span></td>
                            </tr>
                            <tr>
                            	<td width="100" align="left" height="30">手机：</td>
                                <td width="578" align="left" height="30"><input type="text" name="mobilephone" value="${address.mobilephone}" class="finput3">&nbsp;<span class="fspan9">（手机固话必填一项）</span></td>
                            </tr>
                            <tr>
                            	<td width="100" align="left" height="30">固定电话：</td>
                                <td width="578" align="left" height="30"><input type="text" name="phone" value="${address.phone }" class="finput3"></td>
                            </tr>
                           
                            <tr>
                            	<td colspan="2" height="40"><input type="submit" value="确认提交"></td>
                            </tr>
                        </table>
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/foot.jsp"%>
</body>
</html>