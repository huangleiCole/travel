package com.ssm.mapper.sigths;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.sights.Sights;
import com.ssm.entity.sights.SightsType;
import com.ssm.mapper.sights.SightsMapper;
import com.ssm.vo.sights.SightsVo;

public class SightsMapperTest {

	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testAdd() {
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");

		Sights sights1 = new Sights(1, "zzy.jpg", "拙政园", "TR2619863459", "拙政园是苏州最大、最著名的园林...", "苏州",
				"7:30-17:00(15:00截止入园)", 70d, 5.0d, null, "门市价:70.0RMB,学生价35.0RMB", 100, "0512-68999997",
				"请尽量不要在周末、节假日前往，以避开拥挤人流", SightsType.园林, "5A景区", "4.5分",
				"免费政策：身高在1.4米（含）以下儿童由成人携带免票入园（"
						+ "不包括学生团队春秋游）；6周岁（含）以下儿童凭有效证件，由成人携带免票入园；70周岁（不含）以上的老年人，持《高龄证》或居民身份证可免票入园；"
						+ "现役军人，军队离退休干部，革命伤残军人持国务院颁发的伤残军人证，全国残疾人员，凭有效证件免票入园；导游人员持有导游证和旅行社委派行程单带团实行免票。"
						+ "优惠政策：6周岁（不含）-18周岁（含）未成年人、本科及以下全日制在校学生（不含函授、成人教育及短期培训生、交流生和研究生），须凭本人有效学生证和身份证件享受半价优惠；"
						+ "60周岁（不含）-69周岁（含）的老年人凭《老年人优待证》或身份证等有效证件可半价优惠。优惠票请至景区售票窗口购买。以上信息仅供参考，具体以景区公示为准。");
		Sights sights2 = new Sights(2, "tlgz.jpg", "同里古镇", "TR2619863459", "江南水乡同里古镇位于苏州吴江，周围被湖泊围绕..", "苏州吴江",
				"7:30-17:15", 100d, 5.0d, null, "门市价:100.0RMB", 2000, "0512-63333120", "凭票每个景点只可参观一次，不能重复参观",
				SightsType.古镇, "5A景区", "4.5分",
				"免费政策： 1、70周岁（含）以上老年人免票（凭身份证、老年证、护照等）； 2、持有本人残疾证的游客（凭残疾证免票）； 3、苏州市各级政府机关颁发的《离休证》或《苏州市老干部参观证》；"
						+ " 4、我国军队或武警部队颁发的《士兵证》、《警官证》、《文职干部证》、《学员证》、《革命伤残军人证》（备注：1、预备役军官不免；2、地方公安颁布的《警官证》不免）； 5、持国家出"
						+ "版总署或货架广电局颁发的最新版记者证、港澳台记者证的游客（备注：广电系统或者其他系统和单位颁发的记者证不免）； 6、国导证或旅行社（总）经理资格证； 7、随16人以上的团队、可免一名汽车驾驶员（A1证）"
						+ "； 8、身高1.4m（含）及6周岁（含）以下的儿童（身高超过1.4m但年龄不满6周岁的儿童，需出示出生年月的有效证件）； 9、苏州市总工会发动的《劳模游园证》。优惠政策： 1、60周岁（含）-69周岁（含）老年人，"
						+ "凭有效证件（老年证、身份证、护照等）可享受景区联票的半价优惠； 2、身高1.4m（含）-1.5m（不含）的儿童及6周岁（含）-18周岁（不含）的未成年人，凭有效证件（身份证或者学生证等）可享受景区联票的半价优惠； "
						+ "3、全日制大学生本科及以下学历在校学生（不含成人院校学生），凭学生证等可享受景区联票的半价优惠。 《水墨同里》演出无优待政策。儿童低于1.2米（不含）以下且不占座位可免门票。退思园夜花园无优待政策。因夜游灯"
						+ "光较暗，建议70周岁以内人群游玩。注：以上所有涉及到查看证件年龄的情况，均要求实际的周岁年龄，且精确查看到年月日。以上信息仅供参考，具体以景区公示为准。");

		Sights sights3 = new Sights(3, "zhouz.jpg", "周庄", "TR2619867093", "周庄是江南最早闻名于世的水乡古镇...", "苏州昆山",
				"7:30-19:00(具体以景区公告为准)", 100.0d, 7.5d, null, "门市价:100.0RMB", 5000, "0512-57211699",
				"从周庄镇上乘坐三轮车到古镇门口的话需要讲明路线和价格", SightsType.历史遗迹, "5A景区", "4.5分",
				"免费政策：残疾人、70周岁（含）以上老人凭有效身份证件免收门票；现役军官证、国家导游证（随团）、记者证、驾驶员A1（随团）照免票，6周岁（含）以下或身高1.4米（含）以下的儿童免收门票。优惠政策：6周岁（不含）-18周岁（含）"
						+ "未成年人、全日制大学本科及以下学历在校学生、60周岁（含）-69周岁（含）的老年人凭有效证件至景区购买优惠票。 四季周庄演出票优惠政策：1.2米以下无须购买演出票（不占座位），1.2-1.4米儿童可享受半价演出座位票（75元/位），"
						+ "1.4米以上儿童需购买全价演出票，无其他优惠政策。周庄本地人不可享受优惠政策。以上信息仅供参考，具体以景区公示为准。");

		Sights sights4 = new Sights(4, "huq.jpg", "虎丘", "TR2619564459", "虎丘虽然只是小丘,但有悬崖峭壁和沟壑等自然景观", "苏州市",
				"5月1日-10月7日:7:30-17:30,10月8日-次年4月30日:7:30-17:00", 60.0d, 9.5d, null, "门市价60.0RMB", 6533,
				"0512-65323488", "虎丘南门入口处有免费导游，可以带领游客游览整个景区", null, "5A景区", "4.5分",
				"免费政策：1.4米（不含）以下儿童免票；60（含）-69（含）周岁的老人凭《老年人优待证》、居民身份证等有效证件免票（大型园事活动除外：虎丘庙会、花会、年会，在举办大型园事活动期间实行优惠）；全国离休老干部凭离休证免票；本市劳动模范凭苏州"
						+ "市园林和绿化管理局与总工会发放的“苏州市游园证”免票；持有苏州市“环卫工人荣誉证”者凭证件免票；园林和绿化管理局系统内退休职工凭“园林参观证”免票；中国人民解放军、武警部队、各类军校学生、军人、离退休干部凭有效证件免票；归国华侨凭归侨"
						+ "证免票；残障人士凭残疾证免票；新闻记者凭国家新闻出版署颁发的记者证和采访任务单方可免票；导游人员持有导游证和旅行社委派行程单带团实行免票；每年六月一日，14周岁（不含）以下儿童免票。 优惠政策：全日制在校学生（含外国在华留学生）（不含"
						+ "成人院校学生）凭有效学生证购景区优惠票。以上信息仅供参考，具体以景区公示为准。");

		Sights sights5 = new Sights(5, "shizl.jpg", "狮子林", "TR2619995888", "狮子林与拙政园、留园、沧浪亭合称为\"苏州四大名园\"", "苏州市",
				"淡季(1-3月、6月、11-12月)7:30-17:00,旺季(4-5月、7-10月)7:30-17:30", 30.0d, 8.0d, null, "门市价:30.0RMB", 7088,
				"0512-67773263", "在园内钻假山很有趣，但也很容易迷路...", SightsType.园林, "4A景区", "4.6分",
				"免费政策：身高1.4米（含）以下儿童免票；70岁（含）以上老人凭本人相关有效证件免票；现役军人凭本人有效相关证件免票。优惠政策："
						+ "60岁（含）-69岁（不含）之间的老年人凭相关有效证件，可购买老人票；本科及以下在校全日制学生凭本人有效相关证件可购买学生票。以上信息仅供参考，具体以景区公示为准");

		Sights sights6 = new Sights(6, "zongtf.jpg", "总统府", "TR2619861158", "南京总统府是中国近代建筑遗存中规模最大...", "南京市",
				"8:30-18:00（3月1日-10月31日），8:30-17:00（11月1日-次年2月底）；自2016年4月起，除法定节假日外，每周一全天闭馆（遇有重大活动或特殊事由，开放时间另行安排）；除夕闭馆。",
				40.0d, 8.5d, null, "门市价:40.0RMB", 5656, "025-84578888", "门票为邮资明信片，游览结束后，可在设在景区内的邮局投寄。", null, "4A景区",
				"4.6分",
				"总统府免票政策：18周岁（含18周岁生日当天）以下的未成年人（一个家长带一个未成年人，需带身份证证明未成年），70周岁（含70周岁生日当天）以上老人（凭有效身份证件），现役军人、退休军人、离休干部、残疾人（凭有效身份证件）免费。"
						+ "总统府优惠政策：60周岁（含60周岁生日当天）至69周岁（含69周岁生日当天）之间老人（凭有效身份证件）可享门票挂牌价五折，19周岁-22周岁全日制大专、本科在校学生凭本人学生证可享门票挂牌价五折。");

		Sights sights7 = new Sights(7, "fuzm.jpg", "夫子庙", "TR2619301285",
				"夫子庙始建于宋代，位于秦淮河北岸的贡院街旁，原是祀奉孔子的地方，后多次遭毁并重建。它与北京孔庙、曲阜孔庙、吉林文庙并称为中国四大文庙，也是夫子庙秦淮河风光带最主要的景点。民间艺术大观园夫子庙里有一个民间艺术大观园，你可以观看现场制作灯彩、"
						+ "剪纸、微雕等工艺品，听地方戏曲和南京白局。进夫子庙时可以留意一下演出时间表，演出时长约10分钟。春节灯会每年春节至元宵节期间夫子庙都会举行春节灯会（又称秦淮灯会、金陵灯会）",
				"南京市",
				"大成殿：9:00-21:00；瞻园：日场8:00-17:30，夜场17:30-20:00；报恩寺：9:00-17:30；中华门：8:30-20:30；丹罗蜡像馆：10:00-22:00；夫子庙游船：日场10:00-17:00（20人一船，人满发船，游客不满20人，则半小时一班）。 夜场18:30-22:00（游船每20分钟一班，一人一票）。",
				24.0d, 5.0d, null, "瞻园景区30元；大成殿30元；中华门瓮城50元；大报恩寺遗址公园80元；秦淮河画舫夜间80元，日间60元；丹罗蜡像艺术馆150元", 2560,
				"025-52209788", "夫子庙里有卖香火的地方，也有游客会在学宫院内的钟鼓楼敲钟，祈盼子女学业有成，需格外收费", SightsType.名胜古迹, "5A景区", "4.4分",
				"夫子庙游船：儿童身高1.2米（不含1.2米）以下免票；儿童身高1.2（含）—1.5米（不含）购景区优惠票（上述优惠政策，需到景区自行购买）。瞻园：18周岁（不含）以下、70周岁（含）以上的老人、现役军官、残疾人士、离休干部持本人有效证件免票；重阳节当天60周岁"
						+ "（含）以上老人持本人有效证件免票、教师节当天教师持本人有效证件免票；60周岁（含）-69周岁（含）老人持老年证或身份证半价优惠；年满18周岁（含）全日制大专、本科学生（不含成人院校），凭学生证享受半价优惠。报恩寺：身高1.4米（不含）以下的未成年人 （儿童需有成人陪同入园）；"
						+ "70周岁（含70周岁生日当天）以上老人（凭有效身份证件）；现役军人、退休军人、离休干部、残疾人（凭有效身份证件）免费；60周岁（含60周岁生日当天）至69周岁（含69周岁生日当天）之间老人（凭有效身份证件）可享门票挂牌价五折；全日制大学本科及以下学历学生凭有效证件享受半价优惠。"
						+ "中华门：18周岁（不含）以下未成年人免票；70岁（含）以上持老年证或身份证免票；残疾人、现役军官、离休干部凭有效证件免票参观；全日制在校大学生凭有效证件购学生票；60（含）—69周岁（含）的老人凭老年证或身份证购优惠门票。丹罗蜡像：年满18周岁（含）全日制大专、本科学生"
						+ "（不含成人院校），凭学生证享受优惠价。以上信息仅供参考，具体信息请以景区当天披露为准。");

		Integer t1 = sightsMapper.add(sights1);
		Integer t2 = sightsMapper.add(sights2);
		Integer t3 = sightsMapper.add(sights3);
		Integer t4 = sightsMapper.add(sights4);
		Integer t5 = sightsMapper.add(sights5);
		Integer t6 = sightsMapper.add(sights6);
		Integer t7 = sightsMapper.add(sights7);

		if (t1 > 0 || t2 > 0 || t3 > 0 || t4 > 0 || t5 > 0 || t6 > 0 || t7 > 0) {
			System.out.println("插入成功,受影响的行数:" + (t1 + t2 + t3 + t4 + t5 + t6 + t7));
		}
	}

	@Test
	public void testDelete() {
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		Integer t = sightsMapper.delete(3);
		if (t > 0) {
			System.out.println("删除成功,受影响的行数:" + t);
		}
	}

	@Test
	public void testUpdate() {
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		Sights sights = new Sights();
		sights.setId(3);
		sights.setBuyNum(5000);
		Integer t = sightsMapper.update(sights);
		if (t > 0) {
			System.out.println("更新成功,受影响的行数:" + t);
		}
	}

	@Test
	public void testSelectById() {
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		System.out.println(sightsMapper.selectById(4));
	}

	@Test
	public void testSelectCountByCondition() {
		SightsVo sightsVo = new SightsVo();
		Sights sights = new Sights();
		sights.setLocation("南京");
		sightsVo.setSights(sights);
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		System.out.println(sightsMapper.selectCountByCondition(sightsVo));
	}

	@Test
	public void testSelectSightsListByPage() {
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		SightsVo sightsVo = new SightsVo();
		sightsVo.setCurrentPage(1);
		sightsVo.setPageCount(2);
		Sights sights = new Sights();
		sights.setLocation("1001");
		sightsVo.setSights(sights);
		sightsMapper.selectSightsListByPage(sightsVo).forEach(System.out::println);

	}

	@Test
	public void testQuerySightsListByCondition() {
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		Sights sights = new Sights();
		sights.setName("里");
		SightsVo sightsVo = new SightsVo();
		sightsVo.setSights(sights);
		sightsMapper.querySightsListByCondition(null).forEach(System.out::println);
	}

	@Test
	public void testSelectBySightsLocation() {
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		Sights sights = new Sights();
		sights.setLocation("1001");
		SightsVo sightsVo = new SightsVo();
		sightsVo.setSights(sights);
		sightsMapper.selectSightsByLocation(sightsVo).forEach(System.out::println);
	}
}
