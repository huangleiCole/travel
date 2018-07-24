drop table if exists `travel_user`;

drop table if exists `travel_address`;

drop table if exists `travel_route`;

drop table if exists `travel_routeday`;

drop table if exists `travel_routeorder`;

drop table if exists `travel_sights`;

drop table if exists `travel_sights_autoid`;

drop table if exists `travel_sights_orders`;

drop table if exists `tbl_specialty`;

drop table if exists `tbl_specialtyorder`;

drop table if exists `tbl_assess`;

drop table if exists `travel_city`;

drop table if exists `travle_accommodation`;

drop table if exists `eat_order`;

drop table if exists `live_order`;
-- 用户表

-- ----------------------------
-- table structure for travel_user
-- ----------------------------

create table if not exists `travel_user` (
`id` int(22) not null ,
`username` varchar(200) null ,
`password` varchar(200) null ,
`repassword` varchar(200) null ,
`identifiyingcode` varchar(200) null ,
`type` int(22) null 
)


;

-- ----------------------------
-- records of travel_user
-- ----------------------------
insert into `travel_user` values ('12', 'jack', '12345', '12345', '22121', '0');
insert into `travel_user` values ('13', 'admin', '54321', '54321', 'askd', '1');

-- ----------------------------
-- indexes structure for table travel_user
-- ----------------------------

-- ----------------------------
-- uniques structure for table travel_user
-- ----------------------------
alter table `travel_user` add unique (`username`);

-- ----------------------------
-- checks structure for table travel_user
-- ----------------------------
alter table `travel_user` add check (`id` is not null);

-- ----------------------------
-- primary key structure for table travel_user
-- ----------------------------
alter table `travel_user` add primary key (`id`);


-- 地址表


-- ----------------------------
-- table structure for travel_address
-- ----------------------------

create table if not exists `travel_address` (
`id` int(23) not null ,
`username` varchar(233) null ,
`postcode` varchar(233) null ,
`mobilephone` varchar(233) null ,
`phone` varchar(233) null ,
`detail` varchar(233) null ,
`user_id` int(23) null 
)
;

-- ----------------------------
-- records of travel_address
-- ----------------------------
insert into `travel_address` values ('13', 're g', 'g rtrwr', 'g r ', ' ', ' grt', '1');
insert into `travel_address` values ('15', 'wrw', 'rw', 'rw', null, 'r r', '1');
insert into `travel_address` values ('16', 'adminrw', 'er', 'r ', null, 'r r', '1');
insert into `travel_address` values ('17', 'rwr', 'rwr', 'wr', 'wr', 'wr342', '2');
insert into `travel_address` values ('18', 'jack', '233', '24', null, 'sdadsdadadda', '1');
insert into `travel_address` values ('19', 'jack', '233', '24', null, 'sdadsdadadda', '1');
insert into `travel_address` values ('20', 'jack', '233', '24', null, 'sdadsdadadda', '1');
insert into `travel_address` values ('21', 'jack', '233', '24', null, 'sdadsdadadda', '1');
insert into `travel_address` values ('22', 'jack', '233', '24', null, 'sdadsdadadda', '1');
insert into `travel_address` values ('23', 'jack', '233', '24', null, 'sdadsdadadda', '1');

-- ----------------------------
-- indexes structure for table travel_address
-- ----------------------------

-- ----------------------------
-- checks structure for table travel_address
-- ----------------------------
alter table `travel_address` add check (`id` is not null);

-- ----------------------------
-- primary key structure for table travel_address
-- ----------------------------
alter table `travel_address` add primary key (`id`);


-- 旅游路线表

-- ----------------------------
-- table structure for travel_route
-- ----------------------------

create table if not exists `travel_route` (
`id` int(11) not null ,
`image` varchar(25) null ,
`routeint` varchar(25) not null ,
`routename` varchar(128) not null ,
`startplace` varchar(128) null ,
`endplace` varchar(128) null ,
`oldprice` int(11,2) null ,
`discount` int(11,2) null ,
`newprice` int(11,2) null ,
`starttime` date null ,
`endtime` date null ,
`betweentime` int(6) null ,
`comments` int(6) null ,
`purchasepeople` int(6) null 
)
;

-- ----------------------------
-- records of travel_route
-- ----------------------------
insert into `travel_route` values ('1', 'route1.jpg', 'epr12456', '杭州-苏州-无锡3日游', '杭州', '无锡', '1000', '0.50', '500', to_date('2018-03-06 15:49:14', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-03-08 15:49:24', 'yyyy-mm-dd hh24:mi:ss'), '3', '34', '24');
insert into `travel_route` values ('2', 'route2.jpg', 'epr24556', '曲阜-泰山双高铁2日游', '南京', '泰山', '800', '0.75', '600', to_date('2018-03-15 15:52:11', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-03-16 15:52:17', 'yyyy-mm-dd hh24:mi:ss'), '2', '12', '2');
insert into `travel_route` values ('3', 'route3.jpg', 'epr67789', '苏州园林纯玩精品1日游', '苏州', '苏州', '400', '0.75', '300', to_date('2018-03-20 15:54:43', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-03-20 15:54:47', 'yyyy-mm-dd hh24:mi:ss'), '1', '67', '2');

-- ----------------------------
-- indexes structure for table travel_route
-- ----------------------------

-- ----------------------------
-- checks structure for table travel_route
-- ----------------------------
alter table `travel_route` add check (`id` is not null);
alter table `travel_route` add check (`routeint` is not null);
alter table `travel_route` add check (`routename` is not null);

-- ----------------------------
-- primary key structure for table travel_route
-- ----------------------------
alter table `travel_route` add primary key (`id`);


-- ----------------------------
-- table structure for travel_routeday
-- ----------------------------

create table if not exists `travel_routeday` (
`id` int(11) not null ,
`day` int(11) null ,
`startplace` varchar(128) null ,
`endplace` varchar(128) null ,
`spotname` varchar(128) not null ,
`introduce` varchar(1024) null ,
`image` varchar(128) null ,
`route_id` int(11) null 
)
;

-- ----------------------------
-- records of travel_routeday
-- ----------------------------
insert into `travel_routeday` values ('1', '1', '苏州', '苏州', '苏州园林', '苏州古典园林，简称苏州园林，是世界文化遗产、国家aaaaa级旅游景区，中国十大风景名胜之一。苏州古典园林素有“园林之城”之称，享有“江南园林甲天下，苏州园林甲江南”之美誉，誉为“咫尺之内再造乾坤”。', 'route1_1.jpg', '3');
insert into `travel_routeday` values ('2', '1', '泰安', '曲阜', '三孔', '山东曲阜的孔府、孔庙、孔林，统称曲阜“三孔”，是中国历代纪念孔子，推崇儒学的表征，以丰厚的文化积淀、悠久历史、宏大规模、丰富文物珍藏，以及科学艺术价值而著称。', 'route2_1.jpg', '2');
insert into `travel_routeday` values ('3', '2', '泰安', '泰山', '东岳泰山', '泰山被古人视为“直通帝座”的天堂，成为百姓崇拜，帝王告祭的神山，有“泰山安，四海皆安”的说法。自秦始皇开始到清代，先后有13代帝王引次亲登泰山封禅或祭祀，另外有24代帝王遣官祭祀72次。', 'route2_2.jpg', '2');

-- ----------------------------
-- indexes structure for table travel_routeday
-- ----------------------------

-- ----------------------------
-- checks structure for table travel_routeday
-- ----------------------------
alter table `travel_routeday` add check (`id` is not null);
alter table `travel_routeday` add check (`spotname` is not null);

-- ----------------------------
-- primary key structure for table travel_routeday
-- ----------------------------
alter table `travel_routeday` add primary key (`id`);

-- ----------------------------
-- foreign key structure for table `travel_routeday`
-- ----------------------------


-- 路线订单表
-- ----------------------------
-- table structure for travel_routeorder
-- ----------------------------

create table if not exists `travel_routeorder` (
`id` int(11) not null ,
`adultcount` int(11) null ,
`childcount` int(11) null ,
`insurancecount` int(11) null ,
`insuranceprice` int(11,2) null ,
`isinvoice` int(6) null ,
`sumprice` int(11,2) null ,
`route_id` int(11) null ,
`user_id` int(11) null 
)
;

-- ----------------------------
-- records of travel_routeorder
-- ----------------------------

-- ----------------------------
-- indexes structure for table travel_routeorder
-- ----------------------------

-- ----------------------------
-- checks structure for table travel_routeorder
-- ----------------------------
alter table `travel_routeorder` add check (`id` is not null);
alter table `travel_routeorder` add check (`id` is not null);

-- ----------------------------
-- primary key structure for table travel_routeorder
-- ----------------------------
alter table `travel_routeorder` add primary key (`id`);

-- 景点表


-- ----------------------------
-- table structure for travel_sights
-- ----------------------------

create table if not exists `travel_sights` (
`id` int(7) not null ,
`image` varchar(128 ) null ,
`name` varchar(255 ) null ,
`code` varchar(50 ) null ,
`detail` varchar(4000 ) null ,
`location` varchar(255 ) null ,
`time` varchar(2000 ) null ,
`oldprice` int(8,2) null ,
`discount` int(5,2) null ,
`newprice` int(8,2) null ,
`ticket` varchar(255 ) null ,
`buynum` int(7) null ,
`phone` varchar(100 ) null ,
`tips` varchar(4000 ) null ,
`type` int(5) null ,
`level1` varchar(15 ) null ,
`grade` varchar(20 ) null ,
`notes` varchar(2000 ) null ,
`delflag` int(3) null 
)
;

-- ----------------------------
-- records of travel_sights
-- ----------------------------
insert into `travel_sights` values ('1', 'zzy.jpg', '拙政园', 'tr2619863459', '拙政园是苏州最大、最著名的园林...', '苏州', '7:30-17:00(15:00截止入园)', '70', '5', '35', '门市价:70.0rmb,学生价35.0rmb', '101', '0512-68999997', '请尽量不要在周末、节假日前往，以避开拥挤人流', '3', '5a景区', '4.5分', '免费政策：身高在1.4米（含）以下儿童由成人携带免票入园（不包括学生团队春秋游）；6周岁（含）以下儿童凭有效证件，由成人携带免票入园；70周岁（不含）以上的老年人，持《高龄证》或居民身份证可免票入园；现役军人，军队离退休干部，革命伤残军人持国务院颁发的伤残军人证，全国残疾人员，凭有效证件免票入园；导游人员持有导游证和旅行社委派行程单带团实行免票。优惠政策：6周岁（不含）-18周岁（含）未成年人、本科及以下全日制在校学生（不含函授、成人教育及短期培训生、交流生和研究生），须凭本人有效学生证和身份证件享受半价优惠；60周岁（不含）-69周岁（含）的老年人凭《老年人优待证》或身份证等有效证件可半价优惠。优惠票请至景区售票窗口购买。以上信息仅供参考，具体以景区公示为准。', '0');
insert into `travel_sights` values ('2', 'tlgz.jpg', '同里古镇', 'tr2619863459', '江南水乡同里古镇位于苏州吴江，周围被湖泊围绕..', '苏州吴江', '7:30-17:15', '100', '5', '50', '门市价:100.0rmb', '2000', '0512-63333120', '凭票每个景点只可参观一次，不能重复参观', '5', '5a景区', '4.5分', '免费政策： 1、70周岁（含）以上老年人免票（凭身份证、老年证、护照等）； 2、持有本人残疾证的游客（凭残疾证免票）； 3、苏州市各级政府机关颁发的《离休证》或《苏州市老干部参观证》； 4、我国军队或武警部队颁发的《士兵证》、《警官证》、《文职干部证》、《学员证》、《革命伤残军人证》（备注：1、预备役军官不免；2、地方公安颁布的《警官证》不免）； 5、持国家出版总署或货架广电局颁发的最新版记者证、港澳台记者证的游客（备注：广电系统或者其他系统和单位颁发的记者证不免）； 6、国导证或旅行社（总）经理资格证； 7、随16人以上的团队、可免一名汽车驾驶员（a1证）； 8、身高1.4m（含）及6周岁（含）以下的儿童（身高超过1.4m但年龄不满6周岁的儿童，需出示出生年月的有效证件）； 9、苏州市总工会发动的《劳模游园证》。优惠政策： 1、60周岁（含）-69周岁（含）老年人，凭有效证件（老年证、身份证、护照等）可享受景区联票的半价优惠； 2、身高1.4m（含）-1.5m（不含）的儿童及6周岁（含）-18周岁（不含）的未成年人，凭有效证件（身份证或者学生证等）可享受景区联票的半价优惠； 3、全日制大学生本科及以下学历在校学生（不含成人院校学生），凭学生证等可享受景区联票的半价优惠。 《水墨同里》演出无优待政策。儿童低于1.2米（不含）以下且不占座位可免门票。退思园夜花园无优待政策。因夜游灯光较暗，建议70周岁以内人群游玩。注：以上所有涉及到查看证件年龄的情况，均要求实际的周岁年龄，且精确查看到年月日。以上信息仅供参考，具体以景区公示为准。', '0');
insert into `travel_sights` values ('3', 'zhouz.jpg', '周庄', 'tr2619867093', '周庄是江南最早闻名于世的水乡古镇...', '苏州昆山', '7:30-19:00(具体以景区公告为准)', '100', '7.50', '75', '门市价:100.0rmb', '5002', '0512-57211699', '从周庄镇上乘坐三轮车到古镇门口的话需要讲明路线和价格', '4', '5a景区', '4.5分', '免费政策：残疾人、70周岁（含）以上老人凭有效身份证件免收门票；现役军官证、国家导游证（随团）、记者证、驾驶员a1（随团）照免票，6周岁（含）以下或身高1.4米（含）以下的儿童免收门票。优惠政策：6周岁（不含）-18周岁（含）未成年人、全日制大学本科及以下学历在校学生、60周岁（含）-69周岁（含）的老年人凭有效证件至景区购买优惠票。 四季周庄演出票优惠政策：1.2米以下无须购买演出票（不占座位），1.2-1.4米儿童可享受半价演出座位票（75元/位），1.4米以上儿童需购买全价演出票，无其他优惠政策。周庄本地人不可享受优惠政策。以上信息仅供参考，具体以景区公示为准。', '0');
insert into `travel_sights` values ('4', 'huq.jpg', '虎丘', 'tr2619564459', '虎丘虽然只是小丘,但有悬崖峭壁和沟壑等自然景观', '苏州市', '5月1日-10月7日:7:30-17:30,10月8日-次年4月30日:7:30-17:00', '60', '9.50', '57', '门市价60.0rmb', '6535', '0512-65323488', '虎丘南门入口处有免费导游，可以带领游客游览整个景区', null, '5a景区', '4.5分', '免费政策：1.4米（不含）以下儿童免票；60（含）-69（含）周岁的老人凭《老年人优待证》、居民身份证等有效证件免票（大型园事活动除外：虎丘庙会、花会、年会，在举办大型园事活动期间实行优惠）；全国离休老干部凭离休证免票；本市劳动模范凭苏州市园林和绿化管理局与总工会发放的“苏州市游园证”免票；持有苏州市“环卫工人荣誉证”者凭证件免票；园林和绿化管理局系统内退休职工凭“园林参观证”免票；中国人民解放军、武警部队、各类军校学生、军人、离退休干部凭有效证件免票；归国华侨凭归侨证免票；残障人士凭残疾证免票；新闻记者凭国家新闻出版署颁发的记者证和采访任务单方可免票；导游人员持有导游证和旅行社委派行程单带团实行免票；每年六月一日，14周岁（不含）以下儿童免票。 优惠政策：全日制在校学生（含外国在华留学生）（不含成人院校学生）凭有效学生证购景区优惠票。以上信息仅供参考，具体以景区公示为准。', '0');
insert into `travel_sights` values ('5', 'shizl.jpg', '狮子林', 'tr2619995888', '狮子林与拙政园、留园、沧浪亭合称为`苏州四大名园`', '苏州市', '淡季(1-3月、6月、11-12月)7:30-17:00,旺季(4-5月、7-10月)7:30-17:30', '30', '8', '24', '门市价:30.0rmb', '7088', '0512-67773263', '在园内钻假山很有趣，但也很容易迷路...', '3', '4a景区', '4.6分', '免费政策：身高1.4米（含）以下儿童免票；70岁（含）以上老人凭本人相关有效证件免票；现役军人凭本人有效相关证件免票。优惠政策：60岁（含）-69岁（不含）之间的老年人凭相关有效证件，可购买老人票；本科及以下在校全日制学生凭本人有效相关证件可购买学生票。以上信息仅供参考，具体以景区公示为准', '0');
insert into `travel_sights` values ('6', 'zongtf.jpg', '总统府', 'tr2619861158', '南京总统府是中国近代建筑遗存中规模最大...', '南京市', '8:30-18:00（3月1日-10月31日），8:30-17:00（11月1日-次年2月底）；自2016年4月起，除法定节假日外，每周一全天闭馆（遇有重大活动或特殊事由，开放时间另行安排）；除夕闭馆。', '40', '8.50', '34', '门市价:40.0rmb', '5656', '025-84578888', '门票为邮资明信片，游览结束后，可在设在景区内的邮局投寄。', null, '4a景区', '4.6分', '总统府免票政策：18周岁（含18周岁生日当天）以下的未成年人（一个家长带一个未成年人，需带身份证证明未成年），70周岁（含70周岁生日当天）以上老人（凭有效身份证件），现役军人、退休军人、离休干部、残疾人（凭有效身份证件）免费。总统府优惠政策：60周岁（含60周岁生日当天）至69周岁（含69周岁生日当天）之间老人（凭有效身份证件）可享门票挂牌价五折，19周岁-22周岁全日制大专、本科在校学生凭本人学生证可享门票挂牌价五折。', '0');
insert into `travel_sights` values ('7', 'fuzm.jpg', '夫子庙', 'tr2619301285', '夫子庙始建于宋代，位于秦淮河北岸的贡院街旁，原是祀奉孔子的地方，后多次遭毁并重建。它与北京孔庙、曲阜孔庙、吉林文庙并称为中国四大文庙，也是夫子庙秦淮河风光带最主要的景点。民间艺术大观园夫子庙里有一个民间艺术大观园，你可以观看现场制作灯彩、剪纸、微雕等工艺品，听地方戏曲和南京白局。进夫子庙时可以留意一下演出时间表，演出时长约10分钟。春节灯会每年春节至元宵节期间夫子庙都会举行春节灯会（又称秦淮灯会、金陵灯会）', '南京市', '大成殿：9:00-21:00；瞻园：日场8:00-17:30，夜场17:30-20:00；报恩寺：9:00-17:30；中华门：8:30-20:30；丹罗蜡像馆：10:00-22:00；夫子庙游船：日场10:00-17:00（20人一船，人满发船，游客不满20人，则半小时一班）。 夜场18:30-22:00（游船每20分钟一班，一人一票）。', '24', '5', '12', '瞻园景区30元；大成殿30元；中华门瓮城50元；大报恩寺遗址公园80元；秦淮河画舫夜间80元，日间60元；丹罗蜡像艺术馆150元', '2560', '025-52209788', '夫子庙里有卖香火的地方，也有游客会在学宫院内的钟鼓楼敲钟，祈盼子女学业有成，需格外收费', '1', '5a景区', '4.4分', '夫子庙游船：儿童身高1.2米（不含1.2米）以下免票；儿童身高1.2（含）—1.5米（不含）购景区优惠票（上述优惠政策，需到景区自行购买）。瞻园：18周岁（不含）以下、70周岁（含）以上的老人、现役军官、残疾人士、离休干部持本人有效证件免票；重阳节当天60周岁（含）以上老人持本人有效证件免票、教师节当天教师持本人有效证件免票；60周岁（含）-69周岁（含）老人持老年证或身份证半价优惠；年满18周岁（含）全日制大专、本科学生（不含成人院校），凭学生证享受半价优惠。报恩寺：身高1.4米（不含）以下的未成年人 （儿童需有成人陪同入园）；70周岁（含70周岁生日当天）以上老人（凭有效身份证件）；现役军人、退休军人、离休干部、残疾人（凭有效身份证件）免费；60周岁（含60周岁生日当天）至69周岁（含69周岁生日当天）之间老人（凭有效身份证件）可享门票挂牌价五折；全日制大学本科及以下学历学生凭有效证件享受半价优惠。中华门：18周岁（不含）以下未成年人免票；70岁（含）以上持老年证或身份证免票；残疾人、现役军官、离休干部凭有效证件免票参观；全日制在校大学生凭有效证件购学生票；60（含）—69周岁（含）的老人凭老年证或身份证购优惠门票。丹罗蜡像：年满18周岁（含）全日制大专、本科学生（不含成人院校），凭学生证享受优惠价。以上信息仅供参考，具体信息请以景区当天披露为准。', '0');

-- ----------------------------
-- indexes structure for table travel_sights
-- ----------------------------

-- ----------------------------
-- checks structure for table travel_sights
-- ----------------------------
alter table `travel_sights` add check (`id` is not null);

-- ----------------------------
-- primary key structure for table travel_sights
-- ----------------------------
alter table `travel_sights` add primary key (`id`);



create table if not exists `travel_sights_autoid`(
	`note` varchar(12) primary key,
	`autoid` int(8)
);

insert into `travel_sights_autoid` values('唯一id',0);

-- 景点订单表

create table if not exists `travel_sights_orders`(
	`id` int(7) primary key,
	`code` varchar(50),
	`createtime` date,
	`adults` int(5),
	`children` int(3),
	`students` int(5),
	`usetime` date,
	`sights_id` int(7),
	`user_id` int(7),
	`account` int(8,2),
	`paystatus` int(3),
	`delflag` int(3)
);

-- 特产表






create  table `tbl_specialty`(
	
	`id` int(7),
	
	`spename` varchar(255) not null,
	
	`productparamenters` varchar(255)  not null,
	
	`factoryname` varchar(255)  not null,
	
	`factoryphone` varchar(255)  not null,
	
	`stroagemetod` varchar(255)  not null,
	
	`foodadditives` varchar(255)  not null,
	
	`series` varchar(255)  not null,
	
	`weight` varchar(255)  not null,
	
	`rank` varchar(255)  not null,
	
	`productdate` date  not null,
	
	`productcode` varchar(255)  not null,
	
	`factoryaddress` varchar(255)  not null,
	
	`burdensheet` varchar(255)  not null,
	
	`expirationdate` varchar(255)  not null,
	
	`paching` varchar(255)  not null,
	
	`barcode` varchar(255)  not null,
	
	`organism` varchar(255)  not null,
	
	`origin` varchar(255)  not null,
	
	`preferentialprice` int(8,2)  not null,
	
	`distribution` varchar(255)  not null,
	
	`courierfees` int(8,2)  not null,
	
	`monthlysales` varchar(255) not null,
	
	`evaluation` varchar(255)  not null,
	
	`introduction` varchar(255)  not null,
	
	`images` varchar(255)  not null,
	
	`shopprice` int(8,2)  not null,
	
	`intno` varchar(255)  not null,
	
	primary key(id)
);



insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'高油鸭蛋','650117020039','扬州高油鸭蛋有限公司加工厂','13838438','置于阴凉干燥处 ',
'无','高油鸭蛋特级500g 一捆','500g','特级',sysdate,'gb/t5835','扬州105号367院内房屋',
'鸭蛋','180天','袋装','650117020039','否','1',55.00,'江苏 苏州',
5.00,'3000捆','4.5分','油多，下饭菜','高油鸭蛋.jpg',179.00,'江苏 苏州');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'阳澄湖大闸蟹','5867020039','阳澄湖大闸蟹有限公司加工厂','54638438','置于阴凉干燥处 ',
'无','阳澄湖大闸蟹4个 一捆','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'大闸蟹','180天','袋装','650117020039','否','1',75.00,'江苏 苏州',
6.00,'9000捆','9.5分','个大，新鲜','阳澄湖大闸蟹.jpg',45.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'麦芽糖','3457020039','江苏麦芽糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','麦芽糖 一袋','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'小麦','180天','袋装','650117020039','否','1',82.00,'江苏 苏州',
3.00,'9000袋','7.5分','味道香甜','麦芽糖.jpg',220.00,'江苏 苏州');

-------------
insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'八义集豆腐乳','3457020039','江苏八义集豆腐乳有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','豆腐乳 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'佬豆腐','180天','盒装','650117020039','否','1',15.00,'江苏 南京',
8.00,'7000袋','5.5分','飘香四溢 香辣可口','八义集豆腐乳.jpg',136.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'江苏淮饺','3457020039','江苏淮饺有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','江苏淮饺 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'小麦，猪肉','180天','盒装','650117020039','否','2',65.00,'江苏 南京',
8.00,'7000袋','5.5分','飘香四溢 垂涎三尺','江苏淮饺.jpg',150.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'江苏小笼包','3457020039','江苏小笼包有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','江苏小笼包 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'小麦，猪肉','180天','盒装','650117020039','否','2',35.00,'江苏 南京',
9.00,'4000袋','5.5分','飘香四溢 晶莹剔透','江苏小笼包.jpg',410.00,'江苏 南京');




insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'毛脸凉粉','3457020039','江苏毛脸凉粉有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','毛脸凉粉 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'小麦，凉粉','180天','盒装','650117020039','否','2',58.00,'江苏 连云港',
8.00,'4000袋','5.5分','飘香四溢 旷世绝辣','连云港-毛脸凉粉.jpg',100.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'石梁湖葡萄','3457020039','江苏石梁湖葡萄有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','石梁湖葡萄 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'连云港葡萄','180天','盒装','650117020039','否','2',35.00,'江苏 连云港',
8.00,'4000袋','7.2分','飘香四溢 新鲜','连云港特产-石梁湖葡萄.jpg',459.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'南京樱桃鸭','3457020039','江苏南京樱桃鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','南京樱桃鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','3',95.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','南京樱桃鸭.jpg',456.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'南通门山羊肉','3457020039','江苏南通门山羊肉有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','南通门山羊肉 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'羊肉','180天','盒装','650117020039','否','3',795.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','南通门山羊肉.jpg',105.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','3',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','3',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','4',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','4',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'毛脸凉粉','3457020039','江苏毛脸凉粉有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','毛脸凉粉 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'小麦，凉粉','180天','盒装','650117020039','否','0',58.00,'江苏 连云港',
8.00,'4000袋','5.5分','飘香四溢 旷世绝辣','连云港-毛脸凉粉.jpg',100.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'石梁湖葡萄','3457020039','江苏石梁湖葡萄有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','石梁湖葡萄 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'连云港葡萄','180天','盒装','650117020039','否','0',35.00,'江苏 连云港',
8.00,'4000袋','7.2分','飘香四溢 新鲜','连云港特产-石梁湖葡萄.jpg',459.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'南京樱桃鸭','3457020039','江苏南京樱桃鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','南京樱桃鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','0',95.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','南京樱桃鸭.jpg',456.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'南通门山羊肉','3457020039','江苏南通门山羊肉有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','南通门山羊肉 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'羊肉','180天','盒装','650117020039','否','0',795.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','南通门山羊肉.jpg',105.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','6',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','7',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','5',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','8',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'南通门山羊肉','3457020039','江苏南通门山羊肉有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','南通门山羊肉 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'羊肉','180天','盒装','650117020039','否','9',795.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','南通门山羊肉.jpg',105.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','10',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','11',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','5',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','12',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','13',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','14',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','15',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','16',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','17',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','18',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','19',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','20',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','21',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','22',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','23',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','24',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','25',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','26',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','27',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','28',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','29',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','30',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','31',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','32',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','33',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','34',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','35',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','36',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','37',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','38',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','39',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','40',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');


insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'苏州白鱼','3457020039','江苏苏州白鱼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','苏州白鱼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'苏州白鱼','180天','盒装','650117020039','否','40',135.00,'江苏 苏州',
8.00,'4000袋','7.2分','飘香四溢 新鲜','苏州白鱼.jpg',300.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'泰兴黄桥烧饼','3457020039','江苏泰兴黄桥烧饼有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','泰兴黄桥烧饼 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'面粉，猪肉','180天','盒装','650117020039','否','41',35.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','泰兴黄桥烧饼.jpg',567.00,'江苏 苏州');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'盐水鸭','3457020039','江苏南京盐水鸭有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','盐水鸭 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'鸭','180天','盒装','650117020039','否','41',34.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','盐水鸭.jpg',230.00,'江苏 南京');

insert  into `tbl_specialty` values(`tbl_specialty`_id.nextval,'粽子糖','3457020039','江苏粽子糖有限公司加工厂','8638438','置于阴凉干燥处 ',
'无','粽子糖 一盒','1000g','特级',sysdate,'gb/t5835','苏州105号367院内房屋',
'糖浆','180天','盒装','650117020039','否','39',24.00,'江苏 南京',
8.00,'4000袋','7.2分','飘香四溢 新鲜','粽子糖.jpg',235.00,'江苏 南京');


-- 创建`tbl_specialty`order地方特产订单表




create table if not exists `tbl_specialtyorder`(
	`id`  int(8) not null,
	`spename` varchar(255) ,
	`specialtyorderid` int(16) ,
	`radio` varchar(255) ,
	`preferentialprice` int(8,2) ,
	`integral` int(8) ,
	`quantity` int(8) ,
	`preferential` int(8,2) ,
	`toal` int(8,2) ,
	`state`  varchar(255) ,
	`nopayorderdate` date,
	`user_id`  int(8) ,
	`specialty_id` int(8) ,
	primary key(`id`)
);

-- 地方特产订单评论表





create  table `tbl_assess`(
	 
	`id`   int(8),
	
	`levell` varchar(255),
	
	`content` varchar(255),
	
	`user_id`  int(8),
	
	`specialty_id` int(8),
	
	primary key(`id`)

);





-- ----------------------------
-- table structure for travel_city
-- ----------------------------

create table if not exists `travel_city` (
`id` int not null ,
`citynum` varchar(5 ) null ,
`cityname` varchar(20 ) null 
)
;

-- ----------------------------
-- records of travel_city
-- ----------------------------
insert into `travel_city` values ('1', '001', '南京');
insert into `travel_city` values ('2', '002', '无锡');
insert into `travel_city` values ('3', '003', '徐州');
insert into `travel_city` values ('4', '004', '常州');
insert into `travel_city` values ('5', '005', '苏州');
insert into `travel_city` values ('6', '006', '南通');
insert into `travel_city` values ('7', '007', '淮安');
insert into `travel_city` values ('8', '008', '盐城');
insert into `travel_city` values ('9', '009', '宿迁');
insert into `travel_city` values ('10', '010', '扬州');
insert into `travel_city` values ('11', '011', '镇江');
insert into `travel_city` values ('12', '012', '泰州');
insert into `travel_city` values ('13', '013', '连云港');

-- ----------------------------
-- indexes structure for table travel_city
-- ----------------------------

-- ----------------------------
-- uniques structure for table travel_city
-- ----------------------------
alter table `travel_city` add unique (`citynum`);

-- ----------------------------
-- checks structure for table travel_city
-- ----------------------------
alter table `travel_city` add check (cityname is not null);
alter table `travel_city` add check (citynum is not null);

-- ----------------------------
-- primary key structure for table travel_city
-- ----------------------------
alter table `travel_city` add primary key (`id`);


-- 餐饮住宿表

-- 餐饮住宿表序列


-- 创建餐饮住宿表

create table if not exists `travle_accommodation`(
	`id` int,
	`name` varchar(100),
	`lv` varchar(255),
	`tel` varchar(20),
	`city` varchar(50),
	`address` varchar(255),
	`type` int(1),
	`img` varchar(150),
	`detail` varchar(4000),
	-- 主键约束
	constraint accommodation_id_pk primary key(`id`),
	-- 唯一性约束
	constraint accommodation_name_uk unique(`name`),
	-- 非空约束
	constraint accommodation_name_nn check(`name` is not null)
);

-- 插入模拟数据
insert into `travle_accommodation` values(1,'杭州新延安饭店','p_tar03.jpg','0898-00223373','杭州','下城区延安路直戒坛寺巷20号',0,'fd01.jpg','海南四大名菜东山羊、和乐蟹、港北对虾、后安鲻鱼。其位于之首的东山羊产于万宁市东山岭。其美味据传是因羊食东山岭的稀有草木所致，因此肥而不腻、食无膻味，且滋补养颜防湿热，具有膘肥皮薄肉嫩无膻及皮下脂肪适中、肥而不腻、汤味浓稠乳白、气味芳香、味道鲜美、营养滋补和美容之特点。东山羊自宋朝以来就已享有盛名，并曾被列为“贡品”。');
insert into `travle_accommodation` values(2,'浙旅名庭酒店','p_tar04.jpg','0898-00224242','杭州','下城区延安路直戒坛寺巷21号',1,'fd04.jpg','海南四大名菜东山羊、和乐蟹、港北对虾、后安鲻鱼。其位于之首的东山羊产于万宁市东山岭。其美味据传是因羊食东山岭的稀有草木所致，因此肥而不腻、食无膻味，且滋补养颜防湿热，具有膘肥皮薄肉嫩无膻及皮下脂肪适中、肥而不腻、汤味浓稠乳白、气味芳香、味道鲜美、营养滋补和美容之特点。东山羊自宋朝以来就已享有盛名，并曾被列为“贡品”。');
insert into `travle_accommodation` values(3,'中式饭店','p_tar04.jpg','0898-00224242','苏州','下城区延安路直戒坛寺巷21号',0,'fd05.jpg','海南四大名菜东山羊、和乐蟹、港北对虾、后安鲻鱼。其位于之首的东山羊产于万宁市东山岭。其美味据传是因羊食东山岭的稀有草木所致，因此肥而不腻、食无膻味，且滋补养颜防湿热，具有膘肥皮薄肉嫩无膻及皮下脂肪适中、肥而不腻、汤味浓稠乳白、气味芳香、味道鲜美、营养滋补和美容之特点。东山羊自宋朝以来就已享有盛名，并曾被列为“贡品”。');



-- 创建餐饮id序列


-- 预订餐饮表

create table if not exists `eat_order`(
	`id` int,
	`eatname` varchar(100),
	`username` varchar(100),
	`tel` varchar(20),
	`idcard` varchar(50),
	`eatnum` int,
	`eattime` date,
	`require` varchar(1000),
	-- 主键约束
	constraint `eat_order_id` primary key(`id`),
	-- 外键约束
	constraint `eat_order_eatname` check(`eatname` is not null),
	constraint `eat_order_username` check(`username` is not null),
	constraint `eat_order_tel` check(`tel` is not null),
	constraint `eat_order_idcard` check(`idcard` is not null)
);



-- 创建住宿id序列


-- 预住宿表

create table if not exists `live_order`(
	`id` int,
	`livename` varchar(100),
	`roomtype` varchar(100),
	`username` varchar(100),
	`tel` varchar(20),
	`idcard` varchar(50),
	`livenum` int,
	`checkintime` date,
	`checkouttime` date,
	`require` varchar(1000),
	-- 主键约束
	constraint `live_order_id` primary key(`id`),
	-- 外键约束
	constraint `live_order_livename` check(`livename` is not null),
	constraint `live_order_username` check(`username` is not null),
	constraint `live_order_tel` check(`tel` is not null),
	constraint `live_order_idcard` check(`idcard` is not null)
);





