SET NAMES UTF8;
DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital CHARSET=UTF8;
USE hospital;
CREATE TABLE entry(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100),
  title VARCHAR(30),
  description VARCHAR(30)
);
-- 互联网医院
INSERT INTO entry VALUES(null,"http://localhost:5050/img/index/icon-fast-consult.3aadc63561944a538c48d8bf81fe7d3a.png","快速资讯","10分钟回复,多位医生解答");
INSERT INTO entry VALUES(null,"http://localhost:5050/img/index/icon-export-consult.0d1efa6d6cf721fc2ff810d0b4c9fb6b.png","专家问诊","深度诊疗24小时沟通不限次");
INSERT INTO entry VALUES(null,"http://localhost:5050/img/index/icon-online-medical.f58ae9cdd2cd62d824e0b52fad48339f.png","在线药房","在线处方,送药到家");
INSERT INTO entry VALUES(null,"http://localhost:5050/img/index/icon-volunteer.ebd4a1a3367c7efcac9f1d3d612594cf.png","今日义诊","百位专家,义诊0元起");
-- 特色专科

CREATE TABLE departments(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100),
  title VARCHAR(30),
  doctor VARCHAR(30)
);
-- 特色专科
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/icon-physical-examination.7d5fcc3984dd78cb267973f0f3aac111.png","三甲体检","医生2W+");
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/icon_paste.f6f9e858f578bfe9179578475699e65e.png","膏方节","医生2W+");
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/icon_tumor.dc813a8c45e70a7a604abc827091412a.png","肿瘤科","医生3W+");
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/VkX47057137.jpg","消化内科","医生1W+");
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/Dow47057217.jpg","耳鼻咽喉科","医生1W+");
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/MX547057254.jpg","外科","医生8W+");
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/Sdz48159326.jpg","皮肤科","医生9W+");
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/VqB47057039.jpg","妇科","医生1W+");
-- swipe
CREATE TABLE doctor(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title1 VARCHAR(30),
  title2 VARCHAR(40),
  spcialist VARCHAR(30),
  doctortime VARCHAR(30)
);
INSERT INTO doctor VALUES(null,"牡丹江市先锋医院 田坤医生接诊了黄**患者","扬州市中医院 高鹏医生接诊了穆**患者","【图文问诊】","1分钟前");
INSERT INTO doctor VALUES(null,"范** 患者预约了上海曙光医院东院 姜兴俊医生线下门诊","曹** 患者预约了第六人民医院(医联平台) 骨科普通门诊医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"杨** 患者预约了复旦大学附属华山医院北院 皮肤科医生线下门诊","孔** 患者预约了南阳市第一人民医院 毕晓东医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"洪** 患者预约了上海交通大学医学院附属第九人民医院 严孟宁医生线下门诊","朱** 患者预约了复旦大学附属华东医院 戴兆云医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"王** 患者预约了复旦大学附属华东医院 韩维嘉医生线下门诊","洪** 患者预约了上海交通大学医学院附属第九人民医院 严孟宁医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"朱** 患者预约了复旦大学附属华东医院 戴兆云医生线下门诊","牡丹江市先锋医院 田坤医生接诊了黄**患者","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"孔** 患者预约了南阳市第一人民医院 毕晓东医生线下门诊","范** 患者预约了上海曙光医院东院 姜兴俊医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"曹** 患者预约了第六人民医院(医联平台) 骨科普通门诊医生线下门诊","杨** 患者预约了复旦大学附属华山医院北院 皮肤科医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"扬州市中医院 高鹏医生接诊了穆**患者","洪** 患者预约了上海交通大学医学院附属第九人民医院 严孟宁医生线下门诊","【预约挂号】","1分钟前");
-- 轮播图
CREATE TABLE swipe(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(200)
);
INSERT INTO swipe VALUES(null,"http://localhost:5050/img/index/MxE48898527.jpg");
INSERT INTO swipe VALUES(null,"http://localhost:5050/img/index/RJo49078410.jpg");
INSERT INTO swipe VALUES(null,"http://localhost:5050/img/index/wKL49749164.jpg");
INSERT INTO swipe VALUES(null,"http://localhost:5050/img/index/aSJ47917798.jpg");
-- 严选
CREATE TABLE homeSwipe(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(200)
);
INSERT INTO homeSwipe VALUES(null,"http://localhost:5050/img/home/cAg51710784.jpg");
INSERT INTO homeSwipe VALUES(null,"http://localhost:5050/img/home/NfV50252250.jpg");
INSERT INTO homeSwipe VALUES(null,"http://localhost:5050/img/home/Uzw50957966.jpg");
INSERT INTO homeSwipe VALUES(null,"http://localhost:5050/img/home/vsj22353124.jpg");

-- 导航栏
CREATE TABLE navigation(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(200),
  title VARCHAR(30)
);
INSERT INTO navigation VALUES(null,"http://localhost:5050/img/home/OM140982019.jpg","医疗服务");
INSERT INTO navigation VALUES(null,"http://localhost:5050/img/home/O1n40982043.jpg","医疗保健");
INSERT INTO navigation VALUES(null,"http://localhost:5050/img/home/WAC40982067.jpg","健康器械");
INSERT INTO navigation VALUES(null,"http://localhost:5050/img/home/xg840982076.jpg","健康食品");
INSERT INTO navigation VALUES(null,"http://localhost:5050/img/home/qlT40982096.jpg","母婴居家");
-- 商品
CREATE TABLE product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(200),
  title VARCHAR(30),
  price DECIMAL(10,2)
);
INSERT INTO product VALUES(null,"http://localhost:5050/img/home/aql44577702.jpg","桃夫子柠檬膏360g礼盒装",42.00);
INSERT INTO product VALUES(null,"http://localhost:5050/img/home/iaQ45272586.jpg","宝宝馋了 淡干虾皮4罐",74.80);
INSERT INTO product VALUES(null,"http://localhost:5050/img/home/kn447624855.jpg","谷生园 乌圣糕",55.80);
INSERT INTO product VALUES(null,"http://localhost:5050/img/home/4HX29755793.jpg","军医大 远红外理疗贴 10贴/盒",119.00);
INSERT INTO product VALUES(null,"http://localhost:5050/img/home/d6c29892792.jpg","却老斋 增强免疫 破壁灵芝",192.00);
INSERT INTO product VALUES(null,"http://localhost:5050/img/home/d6c29892792.jpg","新西兰 康维他UMF5+麦卢卡",219.00);

-- 新品首发
CREATE TABLE productone(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img2 VARCHAR(200),
  subtitle VARCHAR(30),
  name VARCHAR(30),
  price DECIMAL(10,2)
);
INSERT INTO productone VALUES(null,"http://localhost:5050/img/home/jWa50027451.jpg","【暖暖关怀 古法熬制 温香浓郁】真材实料，分量满满，能量十足，冲饮一杯，姜味浓郁，红糖的香气和怀姜温辣相得益彰，仿乎凝聚了冬日的暖流，顺畅无阻。","【限时买1送1】驱寒暖宫 桃夫子怀姜糖膏360g礼盒装",49.90);
INSERT INTO productone VALUES(null,"http://localhost:5050/img/home/jWa50027451.jpg","优质原料 传统工艺 送礼温馨】好膏用好料：玉竹、桔红、山楂、陈皮、甘草、薄荷、乌梅、冰糖，古法熬制。对咳嗽、多痰、肺火旺、咽喉炎、鼻炎、口腔溃疡等有改善作用。","胡庆余堂 玉竹膏 80克*3瓶礼盒装",460.00);
INSERT INTO productone VALUES(null,"http://localhost:5050/img/home/haU40263149.jpg","【有机配方】主要成分：1%盐酸特比萘芬，快速吸收，天然温和。对治疗真菌感染、脚气、脚臭、脱皮、起水泡等有效","Lamisil cream 真菌脚气足癣膏 15g",108.00);
INSERT INTO productone VALUES(null,"http://localhost:5050/img/home/QO550358106.jpg","【合理配伍 滋补养生】地道选材，药食同源，玉竹、茯苓、白芷、玫瑰、桃仁，传承百年，古法熬制。适用于月经不调、亚健康、痛经、失眠等症状。爱养不间断，调理不停歇。" ,"胡庆余堂 玉苓玫白膏 80克*3瓶礼盒装",42.00);
INSERT INTO productone VALUES(null,"http://localhost:5050/img/home/GMH50046041.jpg","【成分温和  修复肌肤】近零刺激亲肤设计，萃取红没药醇、凡士林、甘油、羊毛脂醇、泛酰醇精华，滋润保湿，修复肌肤屏障，抵御细菌、污染外部侵害，肌肤急救，敏感肌亦可使用【优色林，德国严谨工艺生产品牌】" ,"德国优色林/Eucerin万用膏",85.00);
INSERT INTO productone VALUES(null,"http://localhost:5050/img/home/NmL40905258.jpg","【胡庆余堂旗下品牌破壁灵芝孢子粉】采自庆元食用菌之乡，破壁加工工艺，好原料匹配先进工艺，破壁率高达99%，更利于被人体吸收。" ,"方格牌 破壁灵芝孢子粉 1.5g/袋*30袋",85.00);

-- 分类推荐
CREATE TABLE wrapper(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(200),
  title VARCHAR(30)
);
INSERT INTO wrapper VALUES(null,"https://kano.guahao.cn/PkS40910578","关爱父母");
INSERT INTO wrapper VALUES(null,"https://kano.guahao.cn/H2X40907744","宝宝必备");
INSERT INTO wrapper VALUES(null,"https://kano.guahao.cn/A8e40910913","中医养生");
INSERT INTO wrapper VALUES(null,"https://kano.guahao.cn/Bzx40907817","女神专区");

-- 精选推荐
CREATE TABLE selection(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img1 VARCHAR(200),
  username VARCHAR(30),
  titletext VARCHAR(30),
  img2 VARCHAR(200),
  content VARCHAR(30),
  section VARCHAR(400),
  msgreply INT,
  msglike INT
);
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/yoG13893455.jpg?token=880af41ac22932b3b0484b369a290b4f&amp;square=1&amp;resize=72x72","王春霞 | 副主任医师","一天前","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","关于维生素D,你了解多少?","一．维生素D有什么作用？ 维生素D是一组脂溶性类固醇。主要成员是D2和D3，维生素D2及D3均无活性形式，二者不能相互转换，统称维生素D。维生素D的的活性形式有25-羟维生素D，1,25-二羟维生素D，24,25-二轻维生素D。其中25-羟维生素D是体内的主要储存形式，反映体内维生素D的营养状况。1,25-二羟维生素D为主要活性形式，发挥激素样作用。维生素D调节钙磷代谢，维持骨骼健康。另外维生素D在肌肉、心血管疾病、糖尿病、癌症、自身免疫和炎症反应等中的作用也逐渐被关注。二．维生素D的来源有哪些？1母体-胎儿转运胎儿可通过胎盘从母体获得维生素D。母亲血25羟维生素D可经胎盘转至胎儿体内储存，以满足生后一段时间的生长需要。",2,10);
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/hgt52345319?square=1&amp;resize=72x72","微医官网","一天前","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一",5,15);
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/YCJ28221970.jpg?token=4638dbbb06c2e06e4e372296b6214951&amp;square=1&amp;resize=72x72","郑晓丹|副主任医师","2018-01-18","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一",10,30);
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/YCJ28221970.jpg?token=4638dbbb06c2e06e4e372296b6214951&amp;square=1&amp;resize=72x72","郑晓丹|副主任医师","2018-01-18","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一",20,43);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540350045228.jpg","医生说 | 微医官网","19天前","http://localhost:5050/img/health/1539310338884.jpg","医生说｜总怀疑门没锁是强迫症吗？拯救强迫症！","不知道什么时候起，“强迫症”好像变得特别流行：有洁癖，总是忍不住不断洗手，他们说你是“强迫症”；出了门总担心自己没锁门或者没带钥匙，总是要一遍遍检查确认才能安心，他们说你是“强迫症”；忍受不了无序，一定要将所见之物按一定顺序排列整齐才感觉舒服，他们说你是“强迫症”……各种“强迫症”的说法不绝于耳，可是，这些真的是强迫症吗？北京301医院毛之奇医生带你真正了解强迫症。强迫症是病强迫症不是电影大片里那些“有缺陷”的高智商精英人群，不是朋友圈里泛滥的“特立独行”之人，也不是平日里开玩笑的“完美主义者”、“处女座”。它的本质，就是病，而且并不高级。强迫症是种什么病？强迫症的定义为：一种患者不停地重复某种行为（强迫行为）或重复某种思想（强迫思维）的精神系统性疾病，在一段时间内患者不能控制这种行为或思想。强迫症的特点是在日常生活中，一些毫无意义、甚至违背自身意愿的想法或行为反复侵袭患者，患者虽然体验到这种想法或行为是源于自身，极力抵抗，但始终无法控制，二者强烈的冲突使其感到巨大的焦虑和痛苦，影响学习工作、人际交往甚至生活起居。不管是过程还是结果，强迫症带来的永远只是痛苦，没有满足。而世界卫生组织所",45,7);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540350045228.jpg","医生说 | 微医官网","19天前","http://localhost:5050/img/health/1539310338884.jpg","医生说｜总怀疑门没锁是强迫症吗？拯救强迫症！","不知道什么时候起，“强迫症”好像变得特别流行：有洁癖，总是忍不住不断洗手，他们说你是“强迫症”；出了门总担心自己没锁门或者没带钥匙，总是要一遍遍检查确认才能安心，他们说你是“强迫症”；忍受不了无序，一定要将所见之物按一定顺序排列整齐才感觉舒服，他们说你是“强迫症”……各种“强迫症”的说法不绝于耳，可是，这些真的是强迫症吗？北京301医院毛之奇医生带你真正了解强迫症。强迫症是病强迫症不是电影大片里那些“有缺陷”的高智商精英人群，不是朋友圈里泛滥的“特立独行”之人，也不是平日里开玩笑的“完美主义者”、“处女座”。它的本质，就是病，而且并不高级。强迫症是种什么病？强迫症的定义为：一种患者不停地重复某种行为（强迫行为）或重复某种思想（强迫思维）的精神系统性疾病，在一段时间内患者不能控制这种行为或思想。强迫症的特点是在日常生活中，一些毫无意义、甚至违背自身意愿的想法或行为反复侵袭患者，患者虽然体验到这种想法或行为是源于自身，极力抵抗，但始终无法控制，二者强烈的冲突使其感到巨大的焦虑和痛苦，影响学习工作、人际交往甚至生活起居。不管是过程还是结果，强迫症带来的永远只是痛苦，没有满足。而世界卫生组织所",2,5);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1511164061343.jpg","医生说|微医官方","2018-08-06","http://localhost:5050/img/health/1533519112014.jpg","医生说｜已经很瘦了忍不住想要更瘦，你会不会患上了厌食症？","A4腰、iphone腿、反手摸肚脐、锁骨放钱币……炫耀身材的花样层出不穷，从普通网友到明星们都着魔似地疯狂晒图。所有的一切都只在说明一个字：瘦。不爱吃饭就是厌食症吗？厌食症没那么简单。以瘦为美，依然是这个时代审美的主旋律，在此审美下，厌食症这样一种较为罕见的疾病逐渐暴露出来。厌食症患者的骨感美之下，是日渐凋零的生命。所以上海瑞金医院孙伯民主任想让更多人了解、认识、远离厌食症。厌食症不仅是食欲不振到底什么才是厌食症？很多人想到厌食症，直观感受就是食欲不振、不爱吃饭。尤其是夏天，由于天气炎热，很多人感觉自己吃什么都没有滋味，渐渐就不太想吃饭了，于是就说自己最近有点“厌食”。此“厌食”非彼“厌食”。厌食症又叫神经性厌食症，性质和食欲不振完全不是一个层次。神经性厌食症是一个以精神症状继发严重营养不良为主要表现的精神疾病。其主要特征是以强烈害怕体重增加为特点的对体重和体型的病态关注，患者体重显著减轻，常有严重营养不良、内分泌紊乱，如女性会出现闭经等，重者可因极度营养不良而出现恶病质状态而危及生命。厌食症主要发生于青少年女性，发病年龄往往在10岁以上，但很多患者会否认自己的病情。为什么越来越多的人",13,10);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540805905708.png","健康咨询|微医官网","2018-09-12","http://localhost:5050/img/health/1536734489477.jpg",
"春捂秋冻的“秋冻”，有什么讲究？","俗话说得好，“春捂秋冻，不生杂病”，意思是暑去秋来，不要过早的添加衣服，冻一冻可以让身体适应寒冷的天气…… 随着秋季的到来，气温逐渐下降，很多人遵从“春捂秋冻”的做法却被冻出了疾病。这不禁让人产生疑惑：“秋冻”到底该怎么冻？时下正值秋季，如何科学地冻一冻才健康呢？今天，微医君就来和你聊聊关于“秋冻”的那些讲究！ &nbsp; “秋冻”到底有什么意义？ 所谓“秋冻”，其实就是防寒锻炼。 秋季是夏季与冬季的过渡期（一般在农历八、九月份），“秋冻”可以提高人体的抗寒能力，使人体抗御寒冷的机能更加稳固，激发身体机能逐渐适应寒冷的环境，对疾病，尤其是呼吸道疾病的发生起到积极的预防作用。 特别是在古代，没有时尚保暖的羽绒服，更没有四季如春的空调，在天气转凉的时候通过少穿衣服来适应环境温度，以便在更冷的冬天好受一些…… 相反，如果此时过早穿上棉衣，便无法让身体得到锻炼，不能很好地增强身体抵抗能力。 但是，少穿点衣服的作用很有限，特别是在季节交替的时候病原体很容易滋生，因此，秋冻也有讲究，并不是最好的选择！ &nbsp; 关于“秋冻”的那些讲究 “秋冻”并非人人适合，就算能抗“冻”的人也应该有度，因此",11,15);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1500282421985.jpg","真相放大镜|微医官方","2018-09-25","http://localhost:5050/img/health/1537867538869.jpg",">感冒了不吃药，7天也能好？","最近气温反复，许多人毫无意外地感冒了，鼻涕流不停，鼻塞还头晕……这种痛苦相信很多人都了解。感冒了吃药到底有没有用？药那么贵，又那么苦，如果还没效果，那我干啥还要吃呢？相信很多人都有这种疑惑。  感冒到底是一种什么病？ 许多人对「感冒」的概念并不清楚，存在许多误解。那么，感冒到底是一种什么病呢？我们常说的感冒俗称伤风，是急性上呼吸道病毒感染中最常见的病种。主要有以下的特征： 1、起病较急，全年皆可发病，冬春季较多。 2、一般5～7天就会痊愈。 3、咽部干痒或灼热感、可能伴有咽痛 4、流涕，开始为清水样鼻涕，2～3天后变稠 5、一般无发热及全身症状，或仅有低热、头痛。  感冒了不吃药，7天也能好？ 普通感冒有自限性，一般5～7天会自然痊愈，如果实在难受，可选用一些缓解症状的药（如止咳、祛痰类药），但是不会缩短病程。 但是，「感冒不用吃药就能自愈」这句话也不能通用，还是要根据病情而定。普通感冒可以通过多喝水、休息、通风得到缓解，但对于流行性感冒或其他细菌感染，还是要谨遵医嘱。 与普通感冒相比，流行性感冒的全身症状比较重，如：畏寒、高热、头晕、头痛、全身酸痛无力等症状；而鼻部症状（鼻塞、流鼻涕",13,12);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540350045228.jpg","每日热点咨询","5天前","http://localhost:5050/img/health/1537867538869.jpg","体内长221颗胆结石，医生：因为常年吃素","浙江有一位阿婆，突然腹部疼痛难忍，到医院就诊，医生诊断为胆囊结石，并从其体内取出了221颗结石。经过诊断，医生表示：这是常年吃素的结果。吃素不是对身体有益吗？怎么会吃出胆囊结石呢？原来这位阿婆自家种了很多的蔬菜，一向勤俭节约的她听医生说高血压患者要饮食清淡，就误以为是不吃肉，所以多年来一直保持吃素的习惯，而且经常食用剩菜剩饭。医生说，多吃素是对身体有好处，但是不根据自身身体状况，只吃素并非就对身体有益。例如胆囊患者，如果仅仅吃蔬菜，没有油腻会减少胆囊排空胆汁，而且剩菜剩饭中可能含有细菌、亚硝酸，长期食用易诱发胆道感染，导致胆囊及胆道结石的生成。所以说，饮食要科学均衡、荤素适宜，不要盲目地只吃素或者只吃肉。你觉得自己的饮食搭配合理吗？欢迎留言哦",15,2);
-- copy
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/yoG13893455.jpg?token=880af41ac22932b3b0484b369a290b4f&amp;square=1&amp;resize=72x72","王春霞 | 副主任医师","一天前","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","关于维生素D,你了解多少?","一．维生素D有什么作用？ 维生素D是一组脂溶性类固醇。主要成员是D2和D3，维生素D2及D3均无活性形式，二者不能相互转换，统称维生素D。维生素D的的活性形式有25-羟维生素D，1,25-二羟维生素D，24,25-二轻维生素D。其中25-羟维生素D是体内的主要储存形式，反映体内维生素D的营养状况。1,25-二羟维生素D为主要活性形式，发挥激素样作用。维生素D调节钙磷代谢，维持骨骼健康。另外维生素D在肌肉、心血管疾病、糖尿病、癌症、自身免疫和炎症反应等中的作用也逐渐被关注。二．维生素D的来源有哪些？1母体-胎儿转运胎儿可通过胎盘从母体获得维生素D。母亲血25羟维生素D可经胎盘转至胎儿体内储存，以满足生后一段时间的生长需要。",2,10);
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/hgt52345319?square=1&amp;resize=72x72","微医官网","一天前","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一",5,15);
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/YCJ28221970.jpg?token=4638dbbb06c2e06e4e372296b6214951&amp;square=1&amp;resize=72x72","郑晓丹|副主任医师","2018-01-18","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一",10,30);
INSERT INTO selection VALUES(null,"https://kano-sns.guahao.cn/YCJ28221970.jpg?token=4638dbbb06c2e06e4e372296b6214951&amp;square=1&amp;resize=72x72","郑晓丹|副主任医师","2018-01-18","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一",20,43);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540350045228.jpg","医生说 | 微医官网","19天前","http://localhost:5050/img/health/1539310338884.jpg","医生说｜总怀疑门没锁是强迫症吗？拯救强迫症！","不知道什么时候起，“强迫症”好像变得特别流行：有洁癖，总是忍不住不断洗手，他们说你是“强迫症”；出了门总担心自己没锁门或者没带钥匙，总是要一遍遍检查确认才能安心，他们说你是“强迫症”；忍受不了无序，一定要将所见之物按一定顺序排列整齐才感觉舒服，他们说你是“强迫症”……各种“强迫症”的说法不绝于耳，可是，这些真的是强迫症吗？北京301医院毛之奇医生带你真正了解强迫症。强迫症是病强迫症不是电影大片里那些“有缺陷”的高智商精英人群，不是朋友圈里泛滥的“特立独行”之人，也不是平日里开玩笑的“完美主义者”、“处女座”。它的本质，就是病，而且并不高级。强迫症是种什么病？强迫症的定义为：一种患者不停地重复某种行为（强迫行为）或重复某种思想（强迫思维）的精神系统性疾病，在一段时间内患者不能控制这种行为或思想。强迫症的特点是在日常生活中，一些毫无意义、甚至违背自身意愿的想法或行为反复侵袭患者，患者虽然体验到这种想法或行为是源于自身，极力抵抗，但始终无法控制，二者强烈的冲突使其感到巨大的焦虑和痛苦，影响学习工作、人际交往甚至生活起居。不管是过程还是结果，强迫症带来的永远只是痛苦，没有满足。而世界卫生组织所",45,7);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540350045228.jpg","医生说 | 微医官网","19天前","http://localhost:5050/img/health/1539310338884.jpg","医生说｜总怀疑门没锁是强迫症吗？拯救强迫症！","不知道什么时候起，“强迫症”好像变得特别流行：有洁癖，总是忍不住不断洗手，他们说你是“强迫症”；出了门总担心自己没锁门或者没带钥匙，总是要一遍遍检查确认才能安心，他们说你是“强迫症”；忍受不了无序，一定要将所见之物按一定顺序排列整齐才感觉舒服，他们说你是“强迫症”……各种“强迫症”的说法不绝于耳，可是，这些真的是强迫症吗？北京301医院毛之奇医生带你真正了解强迫症。强迫症是病强迫症不是电影大片里那些“有缺陷”的高智商精英人群，不是朋友圈里泛滥的“特立独行”之人，也不是平日里开玩笑的“完美主义者”、“处女座”。它的本质，就是病，而且并不高级。强迫症是种什么病？强迫症的定义为：一种患者不停地重复某种行为（强迫行为）或重复某种思想（强迫思维）的精神系统性疾病，在一段时间内患者不能控制这种行为或思想。强迫症的特点是在日常生活中，一些毫无意义、甚至违背自身意愿的想法或行为反复侵袭患者，患者虽然体验到这种想法或行为是源于自身，极力抵抗，但始终无法控制，二者强烈的冲突使其感到巨大的焦虑和痛苦，影响学习工作、人际交往甚至生活起居。不管是过程还是结果，强迫症带来的永远只是痛苦，没有满足。而世界卫生组织所",2,5);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1511164061343.jpg","医生说|微医官方","2018-08-06","http://localhost:5050/img/health/1533519112014.jpg","医生说｜已经很瘦了忍不住想要更瘦，你会不会患上了厌食症？","A4腰、iphone腿、反手摸肚脐、锁骨放钱币……炫耀身材的花样层出不穷，从普通网友到明星们都着魔似地疯狂晒图。所有的一切都只在说明一个字：瘦。不爱吃饭就是厌食症吗？厌食症没那么简单。以瘦为美，依然是这个时代审美的主旋律，在此审美下，厌食症这样一种较为罕见的疾病逐渐暴露出来。厌食症患者的骨感美之下，是日渐凋零的生命。所以上海瑞金医院孙伯民主任想让更多人了解、认识、远离厌食症。厌食症不仅是食欲不振到底什么才是厌食症？很多人想到厌食症，直观感受就是食欲不振、不爱吃饭。尤其是夏天，由于天气炎热，很多人感觉自己吃什么都没有滋味，渐渐就不太想吃饭了，于是就说自己最近有点“厌食”。此“厌食”非彼“厌食”。厌食症又叫神经性厌食症，性质和食欲不振完全不是一个层次。神经性厌食症是一个以精神症状继发严重营养不良为主要表现的精神疾病。其主要特征是以强烈害怕体重增加为特点的对体重和体型的病态关注，患者体重显著减轻，常有严重营养不良、内分泌紊乱，如女性会出现闭经等，重者可因极度营养不良而出现恶病质状态而危及生命。厌食症主要发生于青少年女性，发病年龄往往在10岁以上，但很多患者会否认自己的病情。为什么越来越多的人",13,10);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540805905708.png","健康咨询|微医官网","2018-09-12","http://localhost:5050/img/health/1536734489477.jpg",
"春捂秋冻的“秋冻”，有什么讲究？","俗话说得好，“春捂秋冻，不生杂病”，意思是暑去秋来，不要过早的添加衣服，冻一冻可以让身体适应寒冷的天气…… 随着秋季的到来，气温逐渐下降，很多人遵从“春捂秋冻”的做法却被冻出了疾病。这不禁让人产生疑惑：“秋冻”到底该怎么冻？时下正值秋季，如何科学地冻一冻才健康呢？今天，微医君就来和你聊聊关于“秋冻”的那些讲究！ &nbsp; “秋冻”到底有什么意义？ 所谓“秋冻”，其实就是防寒锻炼。 秋季是夏季与冬季的过渡期（一般在农历八、九月份），“秋冻”可以提高人体的抗寒能力，使人体抗御寒冷的机能更加稳固，激发身体机能逐渐适应寒冷的环境，对疾病，尤其是呼吸道疾病的发生起到积极的预防作用。 特别是在古代，没有时尚保暖的羽绒服，更没有四季如春的空调，在天气转凉的时候通过少穿衣服来适应环境温度，以便在更冷的冬天好受一些…… 相反，如果此时过早穿上棉衣，便无法让身体得到锻炼，不能很好地增强身体抵抗能力。 但是，少穿点衣服的作用很有限，特别是在季节交替的时候病原体很容易滋生，因此，秋冻也有讲究，并不是最好的选择！ &nbsp; 关于“秋冻”的那些讲究 “秋冻”并非人人适合，就算能抗“冻”的人也应该有度，因此",11,15);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1500282421985.jpg","真相放大镜|微医官方","2018-09-25","http://localhost:5050/img/health/1537867538869.jpg",">感冒了不吃药，7天也能好？","最近气温反复，许多人毫无意外地感冒了，鼻涕流不停，鼻塞还头晕……这种痛苦相信很多人都了解。感冒了吃药到底有没有用？药那么贵，又那么苦，如果还没效果，那我干啥还要吃呢？相信很多人都有这种疑惑。  感冒到底是一种什么病？ 许多人对「感冒」的概念并不清楚，存在许多误解。那么，感冒到底是一种什么病呢？我们常说的感冒俗称伤风，是急性上呼吸道病毒感染中最常见的病种。主要有以下的特征： 1、起病较急，全年皆可发病，冬春季较多。 2、一般5～7天就会痊愈。 3、咽部干痒或灼热感、可能伴有咽痛 4、流涕，开始为清水样鼻涕，2～3天后变稠 5、一般无发热及全身症状，或仅有低热、头痛。  感冒了不吃药，7天也能好？ 普通感冒有自限性，一般5～7天会自然痊愈，如果实在难受，可选用一些缓解症状的药（如止咳、祛痰类药），但是不会缩短病程。 但是，「感冒不用吃药就能自愈」这句话也不能通用，还是要根据病情而定。普通感冒可以通过多喝水、休息、通风得到缓解，但对于流行性感冒或其他细菌感染，还是要谨遵医嘱。 与普通感冒相比，流行性感冒的全身症状比较重，如：畏寒、高热、头晕、头痛、全身酸痛无力等症状；而鼻部症状（鼻塞、流鼻涕",13,12);
INSERT INTO selection VALUES(null,"http://localhost:5050/img/health/1540350045228.jpg","每日热点咨询","5天前","http://localhost:5050/img/health/1537867538869.jpg","体内长221颗胆结石，医生：因为常年吃素","浙江有一位阿婆，突然腹部疼痛难忍，到医院就诊，医生诊断为胆囊结石，并从其体内取出了221颗结石。经过诊断，医生表示：这是常年吃素的结果。吃素不是对身体有益吗？怎么会吃出胆囊结石呢？原来这位阿婆自家种了很多的蔬菜，一向勤俭节约的她听医生说高血压患者要饮食清淡，就误以为是不吃肉，所以多年来一直保持吃素的习惯，而且经常食用剩菜剩饭。医生说，多吃素是对身体有好处，但是不根据自身身体状况，只吃素并非就对身体有益。例如胆囊患者，如果仅仅吃蔬菜，没有油腻会减少胆囊排空胆汁，而且剩菜剩饭中可能含有细菌、亚硝酸，长期食用易诱发胆道感染，导致胆囊及胆道结石的生成。所以说，饮食要科学均衡、荤素适宜，不要盲目地只吃素或者只吃肉。你觉得自己的饮食搭配合理吗？欢迎留言哦",15,2);
-- discover
CREATE TABLE discover(
  id INT PRIMARY key AUTO_INCREMENT,
  pid INT,
  title VARCHAR(30),
  description VARCHAR(30),
  img VARCHAR(100),
  titleconsult VARCHAR(30)
);
INSERT INTO discover VALUES(null,1,"家有“三高”，中秋月饼怎么挑？"," 避开“油盐糖”，三高人群也能吃月饼！","http://localhost:5050/img/health/7tl23167345.jpg","健康咨询");
INSERT INTO discover VALUES(null,2,"春节吃坚果会变胖？这样吃不胖","【春节特辑】瓜子、腰果、板栗，哪种坚果不胖人？","http://localhost:5050/img/health/a3c23168112.jpg","健康咨询");
INSERT INTO discover VALUES(null,3,"火锅里漂着的“红油”是什么？","请收下这份《鉴别锅底大法》","http://localhost:5050/img/health/YHR22220869.jpg","健康咨询");
INSERT INTO discover VALUES(null,4,"峨嵋畅气通络治疗腰椎病","实际生活中免不了的加班、熬夜玩游戏，这种久坐不动的情况却让腰间盘承受了很大的压力。久而久之，还会导致腰间盘突出症状的出现。
峨嵋畅气通络治疗腰椎病","http://localhost:5050/img/health/A-4.0.0-339-226-9.png","健康咨询");
INSERT INTO discover VALUES(null,5,"味精加热会致癌，鸡精更好？","5个食品真相告诉你朋友圈有多「毒」！","http://localhost:5050/img/health/A-4.0.0-339-226.jpg","健康咨询");
INSERT INTO discover VALUES(null,6,"味精加热会致癌，鸡精更好？","5个食品真相告诉你朋友圈有多「毒」！","http://localhost:5050/img/health/vR423169076.jfif","健康咨询");
INSERT INTO discover VALUES(null,7,"早上一杯豆浆，易得乳腺癌？","食用豆制品，有哪些事情要注意？","http://localhost:5050/img/health/7tf23168569.jpg","健康咨询");
INSERT INTO discover VALUES(null,8,"高血脂的下一步是中风？快预防 ","预防中风，没有“他”真不行……","http://localhost:5050/img/health/JTE22536695.jpg","健康咨询");
INSERT INTO discover VALUES(null,9,"医生说｜一不小心就治疗过度！腰突症的误区你进了吗 ？"," 腰椎间盘突出症，可以算是一种“都市高发”疾病了多少人办公桌前忙忙碌碌一天，回到家瘫在沙发上，隐隐感受到腰酸背痛然后有一天体检报告入手...","http://localhost:5050/img/health/1533260138742.jpg","健康咨询");
INSERT INTO discover VALUES(null,10,">28岁男，2016年5月发病，当时咽喉剧痛异物感，头晕乏力，极度疲劳和低烧"," 5位医生已抢答","http://localhost:5050/img/health/sns-help-pic1.png","大家帮");
INSERT INTO discover VALUES(null,11,"热得吃不下饭，营养怎么补足？","【每周精选】“不吃饭”的营养大法。","http://localhost:5050/img/health/QQX23169295.jpg","大家帮");
INSERT INTO discover VALUES(null,12,"梨润肺止咳？不是所有人能吃"," 梨，这样吃最好","http://localhost:5050/img/health/wh020364016.jpg","健康咨询");
INSERT INTO discover VALUES(null,13,"睡够8小时，为什么还觉得累？","教你6招找回好睡眠","http://localhost:5050/img/health/h2K21366689.jpg","健康咨询");
INSERT INTO discover VALUES(null,14,"吃完9吨食物，一生就终结了？","送你一张“长寿处方”","http://localhost:5050/img/health/H5D23169073.jpg","健康咨询");
INSERT INTO discover VALUES(null,15,"新房除甲醛，别踩这2个雷","家有孕妇、幼儿，一定要注意这些！","http://localhost:5050/img/health/gjA37696962.jpg","健康咨询");
INSERT INTO discover VALUES(null,16,"睡前1小时，做好这7件事！","养生关键期，请对号入座","http://localhost:5050/img/health/xYC29104604.jpg","健康咨询");
CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(30),
  password VARCHAR(30),
  realname VARCHAR(30),
  realage VARCHAR(30),
  gender VARCHAR(30),
  emr INT,
  doctor INT,
  coupon INT,
  healthy INT,
  rank INT,
  img VARCHAR(100)
);
INSERT INTO user VALUES(null,"zhangbo","123456","张博",25,"男",1,1,1,2,3,"http://localhost:5050/img/personage/timg (4).jpg");
INSERT INTO user VALUES(null,"fangyuan","123456","方园",25,"男",1,1,1,2,5,"http://localhost:5050/img/personage/timg.png");
INSERT INTO user VALUES(null,"liushengqiang","123456","刘胜强",23,"男",2,2,4,2,3,"http://localhost:5050/img/personage/timg (1).jpg");
INSERT INTO user VALUES(null,"pengyaping","123456","彭亚萍",25," 女",3,4,1,5,6,"http://localhost:5050/img/personage/timg (2).jpg");
INSERT INTO user VALUES(null,"lvlu","123456","吕露",25,"男",3,4,1,5,1,"http://localhost:5050/img/personage/timg.jpg");


CREATE TABLE news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  channel VARCHAR(100),
  newstime date,
  newsnormal VARCHAR(200),
  newsgreenone VARCHAR(200),
  newsgreenone1 VARCHAR(200),
  -- 高血压
  newsh3two VARCHAR(200),
  newsptwo VARCHAR(200),
  newsgreentwo VARCHAR(200),
  newsgreentwo2 VARCHAR(200),
  newsptwo2 VARCHAR(200),
  -- 高血脂
  newsh3three VARCHAR(200),
  newspthree VARCHAR(200),
  newsgreenthree VARCHAR(200),
  newsgreenthree2 VARCHAR(200),
  newspthree2 VARCHAR(200),
  -- 高血糖
  newsh3four VARCHAR(200),
  newspfour VARCHAR(200),
  newsgreenfour VARCHAR(200),
  newsgreenfour2 VARCHAR(200),
  img1 VARCHAR(100),
  img2 VARCHAR(100)
);
INSERT INTO news VALUES(null,"家有“三高”，中秋月饼怎么挑？","来自营养频道","2018-09-21","中秋节，全家老小一起边吃月饼边赏月，是一家团圆、生活美满的象征。那么，要怎么挑选月饼，才能让家里的","三高","也在团圆之夜，吃上一口象征团圆的月饼呢?","高血压：不宜吃鲜肉榨菜月饼","鲜肉榨菜月饼深受“月饼咸党”们的喜爱，它酥脆的外皮包裹着咸香的肉馅，口感十分独特。这类月饼近年来屡有创新，除了榨菜鲜肉之外，还有萝卜丝鲜肉、梅菜咸肉月饼。这些月饼中的配菜都是经过腌制的，所以它们有一个共同的特点，那就是——","含盐量高","。这类月饼食用后可能会引起血压波动。","另外，蛋黄莲蓉月饼由于含油量较高，食用后会引起血液粘稠度升高，所以也不适合高血压人群食用。","高血脂：不宜吃蛋黄莲蓉月饼","蛋黄莲蓉月饼的","含油量达30%以上","，食用后会引起血中甘油三酯和胆固醇含量升高，不适合高血脂人群使用。","五仁月饼内虽然含有不少坚果仁，但传统广式五仁月饼馅料中含有“冰肉”，这是用酒和糖腌制过的肥猪肉！所以，它对高血脂人群来说，也不是什么好东西。","高血糖：不宜吃五仁、豆沙月饼","五仁、豆沙等月饼的馅料都调得","比较甜","，食用后会使血糖快速升高，因此不适合糖尿病人群食用。另外，冰皮月饼是用糯米、白砂糖、炼乳及各种馅料做成，虽然比传统月饼少油少糖，但对于糖尿病人群来说负担还是较大。","https://kano.guahao.cn/eJD23165957","https://h2img.guahao.com/portal_upload/mediafocus/1474335509588.jpg");
INSERT INTO news VALUES(null,"春节吃坚果会变胖？这样吃不胖","来自营养频道","2018-02-19","坚果，又称干果，它外面包裹着坚硬的果壳，里面则是种仁或胚乳。","因为营养丰富","、味美，坚果一直是煲剧、聚会、闲聊的必备小吃。在春节期间，每家每户都会在大厅内摆上各色坚果，用来招待串门子的亲戚好友。","不同坚果的营养价值","常见的坚果可以分成两类：一类是树坚果，包括杏仁、腰果、榛子、山核桃、松子、核桃、板栗、","白果(银杏)","、开心果、夏威夷果等；另一类是种子，包括花生、葵花子、南瓜子、西瓜子等。","另外，蛋黄莲蓉月饼由于含油量较高，食用后会引起血液粘稠度升高，所以也不适合高血压人群食用。","总体来讲，坚果的营养价值是比较高的。但不同坚果的","营养成分差异较大","，如：","最高为58.8%，最低为1.3%；蛋白质含量最高为36%，最低为4.8%；碳水化合物最高为72.6%，最低为7.9%。","减肥or增肥，该吃哪些坚果？","不同坚果的营养成分差别比较大，所以一家人在吃坚果时也可根据各自的情况选择，比如：","不同坚果的营养成分差别比较大，所以一家人在吃坚果时也可根据各自的情况选择，比如：","想减肥","，或高血脂、冠心病、动脉硬化的人群来说，可以多吃些板栗和白果，少吃一些核桃、松子、葵花子、榛子、花生、杏仁它们都含有较多的脂肪，容易引起肥胖和血脂升高。","https://kano.guahao.cn/Xf323166401","https://h2img.guahao.com/portal_upload/mediafocus/1484880286205.png");
CREATE TABLE commits(
  -- 评论
  id INT PRIMARY key AUTO_INCREMENT,
  pid INT,
  hotcommentsimg VARCHAR(100),
  hotcommentsuser VARCHAR(8),
  hotcity time,
  hotcommentwords VARCHAR(30),
  give VARCHAR(30)
);
INSERT INTO commits VALUES(null,1,"https://h2img.guahao.com/portal_upload/userheadpic/gdT27810879_60x60.?timeStamp=1541496242187","肖冰玉","2018-10-06","不喜欢吃月饼，总觉得对健康不利!",2);
INSERT INTO commits VALUES(null,2,"https://h2img.guahao.com/portal_upload/userheadpic/gdT27810879_60x60.?timeStamp=1541496242187","匿名","2018-10-06","学习",2);




