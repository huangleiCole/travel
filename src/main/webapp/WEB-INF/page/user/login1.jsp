<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>会员登录页面</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${path }/layer/layer.js"></script>
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
    <div class="current"><span>当前所在地：</span><a href="${path }/index">首页</a>  >> <a href="javascript:;">会员登录</a></div>
    <div class="login_w clearfix">
        <div class="login">
            <div class="login_t">会员登录</div>
            <div class="login_con">
            <form id="loginForm" action="#" method="post">
                <table class="login_tab" width="270" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>登录名：</td>
                    <td><input type="text" name="username" value=""  ></td>
                  </tr>
                  <tr>
                    <td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                    <td><input type="password" name="password" value="" ></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td><input  type="checkbox" name="cookies" value="0"> 30天内自动登录</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><input type="button"  onclick="loginHandler()" value="登录"></input><input type="reset" value="重置"></td>
                  </tr>
                </table>
               </form>
            </div>
            <div class="login_b">
                <p>还不是梦想游会员？  <a class="free_zc" href="${path }/user/register">免费注册</a> </p>
                <p>使用合作网站帐号登录 </p>
                <p><a class="log_a01" href="#">新浪微博</a> <a class="log_a02" href="#">支付宝</a> <a class="log_a03" href="#">QQ帐号</a></p>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/foot.jsp"%>
</body>
<script type="text/javascript">
		function loginHandler() {
			var data = $("#loginForm").serialize();
			$.ajax({
				url:"${path }/user/loginHandler",
				data:data,
				type:"post",
				success:function(msg){
					//判断是否登陆成功
					if(msg == "101"){
						layer.msg('登录成功,欢迎回来',{anim:1,offset:'100px', icon:6, time:1000},function (index){
							window.location.href = "${path}/user/show";
							layer.close(index);
						});
						return;
					}else if(msg == "102"){
						layer.alert("用户名或密码错误");
						return false;
					}else{
						layer.alert(msg);
						return false;
					}
				}
			});
		}
	</script>	
</html>