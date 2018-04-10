<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>首页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${path }/js/imgtoggle.js"></script>
<script type="text/javascript">
window.onload=function(){
    var iTgl=new k_iToggle();
        iTgl.init({
            boxId:'box',
            numId:'num',
            imgId:'imgs',
            isAuto:true,
            aCls:'act',
            iCls:'imgs1',
            direct:'crt'
        });
        chg(iTgl,'chg');
        _auto(iTgl,'auto_1');
        
    //改变方向
    function chg(o,id){
        $('#'+id).click(function(){
            if(o.direct()=='crt'){
                o.direct('lvl');
                $(this).text('纵向');
            }else{
                o.direct('crt');
                $(this).text('横向');
            }
        });
    }
    
    function _auto(o,id){
        $('#'+id).click(function(){
            if(o.isAuto){
                o.isAuto=false;
                $(this).text('自动播放已停止');
            }else{
                o.isAuto=true;
                o.auto();
                $(this).text('自动播放');
            }
        });
    }
}
</script>
<script type="text/javascript"> 
    $(function(){
        var wweya_li =$("div.tab_menu ul li");
        wweya_li.click(function(){
        $(this).addClass("selected")            
         .siblings().removeClass("selected");  
            var index =  wweya_li.index(this); 
        $("div.tab_box > div")  
        .eq(index).show(100)   
            .siblings().hide(); 
                }).hover(function(){
            $(this).addClass("hover");
        },function(){
            $(this).removeClass("hover");           
        });
    });
</script>
</head>
<body>
<%@ include file="/WEB-INF/page/common/head.jsp" %>
<div class="mainNav clearfix">
		<ul class="Nav_ul">
			<li class="cur"><a href="${path }/index">首页</a><img
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
<div class="banner"><center><img src="${path }/images/banner01.jpg"></center></div>
<div class="b_wrap page_w">
  <div class="today_wrap clearfix">
    <div class="today_info">今天是 2013年7月26日　星期五　农历癸巳年 六月十九 　下月7日<b>立秋</b>  杭州 晴 39℃~29℃ </div>
    <div class="today_add"><span>最新动态</span> <a href="#">蜈支洲岛观光（往返接送+门票+船票） ￥148/位</a></div>
  </div>
    <div class="clumn_w sy_c01 clearfix">
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
                     <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    卦</div>         
            </div>
        </div>
        <div class="jx_wrap clearfix">
            <div class="jx_tit"><div class="jx_lt"><b>精选路线</b> <span>机+酒、酒+门票，个性、时尚、一应俱全！</span></div><a href="旅游路线.html">更多>></a></div>
            <div class="zb_con clearfix">
              <ul class="zb_ul">
              <li><a href="旅游路线-详情.html">游浙东大峡谷，赏小三峡风光，玩白溪漂流，住豪华宁海开元新世纪大酒店，享惬意旅途</a><span>¥710起</span></li>
              <li><a href="旅游路线-详情.html">【象山海滨游】踏浪、玩沙、游古城，住象山海洋酒店                              </a><span>¥558起</span></li>
              <li><a href="#">【暑期特惠】双人两日游宁波九龙湖，亲近自然山水风光，住挂牌五星远洲大酒店      </a><span>¥478起</span></li>
              <li><a href="#">【溪口二日游】感受人文之精华，山水之灵秀，佛教之庄严                          </a><span>¥768起</span></li>
              <li><a href="#">【凤凰山海港乐园】浪漫、刺激、梦幻，爱她就带她去双人二日游                    </a><span>¥810起</span></li>
              <li><a href="#">【暑期特惠，杭州浪漫2日自由行】★游西溪湿地非诚勿扰拍摄地，赏西溪浪漫美景！   </a><span>¥410起</span></li>
              <li><a href="#">杭州临安双人2日游，体验激情漂流，感受峡谷风景，完美旅行，超值特惠！           </a><span>¥510起</span></li>
            </ul>
            </div>
          </div>
    </div>
<div class="add_01"><center><img src="${path }/images/add00.jpg"></center></div>
    <div class="clumn_w clearfix">
        <div class="clumn_cl">
            <div class="mf_box">
          <div class="mf_tit clearfix">
            <span>免费路线</span>
          	  <div class="mf_tm">
              <a href="${path }/route/routeList">更多美景>></a>
            </div>
          </div>
          <div class="js_wrap claerdix">
          <c:forEach items="${page1.datas }" var="rou">
            <div class="js_con clearfix">
              <div class="js_l">
              <a href="${path }/route/routeDetail?id=${rou.id}">
              <img src="${path }/images/${rou.image }" style="width: 100px;height: 75px"></a></div>
              <div class="js_c">
                <p><b>  <a href="${path }/route/routeDetail?id=${rou.id}"">${rou.routeName}</a></b></p>
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
          <div class="df_wrap">
            <div class="tc_tit">
            <span>地方特产</span>
            	<a href="${path }/Specialty/SpecialtyList">更多特产>></a>
            </div>
            <div class="tc_wrap clearfix">
            <c:forEach items="${page2.datas }" var="spe">
              <dl>
                <dt><a href="${path}/Specialty/specialtyxq?id=${spe.id}"><img src="${path }/images/${spe.images}" style="width: 160px;height: 124px"></a></dt>
                <dd>
                  <p class="d01"><a href="${path}/Specialty/specialtyxq?id=${spe.id}">${spe.speName }</a></p>
                  <p><span>${spe.introduction }</span></p>
                  <p>优惠价：<span>¥${spe.preferentialPrice }</span></p>
                </dd>
              </dl>
             </c:forEach>
            </div>
          </div>
        </div>
        <div class="clumn_cr">
            <div class="clumn">
                <div class="clumn_tit t01"><span>结伴同行</span><a href="#">更多>></a></div>
                <div class="clumn_con">
                    <ul class="clu_ul page_ul">
                        <li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
                        <li><a href="#">国庆长假，温哥华维多利亚自助游找伴</a></li>
                        <li><a href="#">去NewFundland，自助游！ 肯定走！</a></li>
                        <li><a href="#">多伦多-温哥华 横跨之旅</a></li>
                        <li><a href="#">诚招一女， 已有7人定下去NewFoundland</a></li>
                        <li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
                        <li><a href="#">暑期邮轮 特价不断</a></li>
                        <li><a href="#">订机票，选银联，超值特惠</a></li>
                        <li><a href="#">诚招一女， 已有7人定下去NewFoundland</a></li>
                        <li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
                        <li><a href="#">暑期邮轮 特价不断</a></li>
                        <li><a href="#">订机票，选银联，超值特惠</a></li>
                    </ul>
                </div>
            </div>
            <div class="clumn">
                <div class="clumn_tit t02"><span>优惠促销</span><a href="#">更多>></a></div>
                <div class="clumn_con">
                    <ul class="clu_ul page_ul">
                        <li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
                        <li><a href="#">国庆长假，温哥华维多利亚自助游找伴</a></li>
                        <li><a href="#">去NewFundland，自助游！ 肯定走！</a></li>
                        <li><a href="#">多伦多-温哥华 横跨之旅</a></li>
                        <li><a href="#">诚招一女， 已有7人定下去NewFoundland</a></li>
                        <li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
                        <li><a href="#">暑期邮轮 特价不断</a></li>
                        <li><a href="#">订机票，选银联，超值特惠</a></li>
                    </ul>
                    <div class="yh_img"><center><img src="${path }/images/add01.jpg"></center></div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
</html>
