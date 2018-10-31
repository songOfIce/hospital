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
INSERT INTO departments VALUES(null,"http://localhost:5050/img/index/VqB47057039.jpg","妇科科","医生1W+");
-- swipe
CREATE TABLE doctor(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30),
  spcialist VARCHAR(30),
  doctortime VARCHAR(30)
);
INSERT INTO doctor VALUES(null,"牡丹江市先锋医院 田坤医生接诊了黄**患者","【图文问诊】","1分钟前");
INSERT INTO doctor VALUES(null,"范** 患者预约了上海曙光医院东院 姜兴俊医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"杨** 患者预约了复旦大学附属华山医院北院 皮肤科医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"洪** 患者预约了上海交通大学医学院附属第九人民医院 严孟宁医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"王** 患者预约了复旦大学附属华东医院 韩维嘉医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"朱** 患者预约了复旦大学附属华东医院 戴兆云医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"孔** 患者预约了南阳市第一人民医院 毕晓东医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"曹** 患者预约了第六人民医院(医联平台) 骨科普通门诊医生线下门诊","【预约挂号】","1分钟前");
INSERT INTO doctor VALUES(null,"扬州市中医院 高鹏医生接诊了穆**患者","【预约挂号】","1分钟前");
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
CREATE TABLE productOne(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img2 VARCHAR(200),
  subtitle VARCHAR(30),
  name VARCHAR(30),
  price DECIMAL(10,2)
);
INSERT INTO productOne VALUES(null,"http://localhost:5050/img/home/jWa50027451.jpg","【暖暖关怀 古法熬制 温香浓郁】真材实料，分量满满，能量十足，冲饮一杯，姜味浓郁，红糖的香气和怀姜温辣相得益彰，仿乎凝聚了冬日的暖流，顺畅无阻。","【限时买1送1】驱寒暖宫 桃夫子怀姜糖膏360g礼盒装",49.90);
INSERT INTO productOne VALUES(null,"http://localhost:5050/img/home/jWa50027451.jpg","优质原料 传统工艺 送礼温馨】好膏用好料：玉竹、桔红、山楂、陈皮、甘草、薄荷、乌梅、冰糖，古法熬制。对咳嗽、多痰、肺火旺、咽喉炎、鼻炎、口腔溃疡等有改善作用。","胡庆余堂 玉竹膏 80克*3瓶礼盒装",460.00);
INSERT INTO productOne VALUES(null,"http://localhost:5050/img/home/haU40263149.jpg","【有机配方】主要成分：1%盐酸特比萘芬，快速吸收，天然温和。对治疗真菌感染、脚气、脚臭、脱皮、起水泡等有效","Lamisil cream 真菌脚气足癣膏 15g",108.00);
INSERT INTO productOne VALUES(null,"http://localhost:5050/img/home/QO550358106.jpg","【合理配伍 滋补养生】地道选材，药食同源，玉竹、茯苓、白芷、玫瑰、桃仁，传承百年，古法熬制。适用于月经不调、亚健康、痛经、失眠等症状。爱养不间断，调理不停歇。" ,"胡庆余堂 玉苓玫白膏 80克*3瓶礼盒装",42.00);
INSERT INTO productOne VALUES(null,"http://localhost:5050/img/home/GMH50046041.jpg","【成分温和  修复肌肤】近零刺激亲肤设计，萃取红没药醇、凡士林、甘油、羊毛脂醇、泛酰醇精华，滋润保湿，修复肌肤屏障，抵御细菌、污染外部侵害，肌肤急救，敏感肌亦可使用【优色林，德国严谨工艺生产品牌】" ,"德国优色林/Eucerin万用膏",85.00);
INSERT INTO productOne VALUES(null,"http://localhost:5050/img/home/NmL40905258.jpg","【胡庆余堂旗下品牌破壁灵芝孢子粉】采自庆元食用菌之乡，破壁加工工艺，好原料匹配先进工艺，破壁率高达99%，更利于被人体吸收。" ,"方格牌 破壁灵芝孢子粉 1.5g/袋*30袋",85.00);

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
CREATE TABLE Selection(
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
INSERT INTO Selection VALUES(null,"https://kano-sns.guahao.cn/yoG13893455.jpg?token=880af41ac22932b3b0484b369a290b4f&amp;square=1&amp;resize=72x72","王春霞 | 副主任医师","一天前","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","关于维生素D,你了解多少?","一．维生素D有什么作用？ 维生素D是一组脂溶性类固醇。主要成员是D2和D3，维生素D2及D3均无活性形式，二者不能相互转换，统称维生素D。维生素D的的活性形式有25-羟维生素D，1,25-二羟维生素D，24,25-二轻维生素D。其中25-羟维生素D是体内的主要储存形式，反映体内维生素D的营养状况。1,25-二羟维生素D为主要活性形式，发挥激素样作用。维生素D调节钙磷代谢，维持骨骼健康。另外维生素D在肌肉、心血管疾病、糖尿病、癌症、自身免疫和炎症反应等中的作用也逐渐被关注。二．维生素D的来源有哪些？1母体-胎儿转运胎儿可通过胎盘从母体获得维生素D。母亲血25羟维生素D可经胎盘转至胎儿体内储存，以满足生后一段时间的生长需要。",2,10);
INSERT INTO Selection VALUES(null,"https://kano-sns.guahao.cn/hgt52345319?square=1&amp;resize=72x72","微医官网","一天前","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一",5,15);
INSERT INTO Selection VALUES(null,"https://kano-sns.guahao.cn/YCJ28221970.jpg?token=4638dbbb06c2e06e4e372296b6214951&amp;square=1&amp;resize=72x72","郑晓丹|副主任医师","2018-01-18","https://kano-sns.guahao.cn/gc552302637?whs=807_594&amp;resize=416:x","热点追踪｜央视主持人李咏患癌去世：警惕这17个癌症征兆！","年仅50岁的央视主持人李咏去世了，其妻子哈文发博称，经过17个月的抗癌治疗，2018年10月25日凌晨5点20在美国离世……真的好突然，感觉昨天他还在主持《非常6+1》……世事无常， 对于癌症，很多人都是“谈癌色变”，然而，如何预防才是大家应该重视的！&nbsp;1、癌症的17个征兆2017年2月3日，世卫组织（WHO）发布了《癌症早期诊断指南》，将17种常见癌症的早期症状整理了出来，希望能引起人们的关注与警惕。癌症，往往是在身体出了大毛病后，就医时才检查出来的。如果能对早期症状多一些了解，对特别的小病小痛”多一丝警惕，就不容易耽误治疗的时机。当你的身体出现以上17种“小病小痛”时，千万别大意，要及时咨询医生，了解它出现的原因，才能放下心来！3个容易混淆的症状下面这3种症状比较容易混淆，要注意跟生活中常见的疾病鉴别：●咳嗽：感冒or肺癌感冒的咳嗽一般不超过2周，而且痰中很少带血；肺癌引起的咳嗽持续时间比较久（&gt;2周），有4种不同的特殊表现：（1）刺激性干咳：感觉气道有异物感，但什么也咳不出来，吃抗生素没有缓解；（2）偶尔咳血痰或痰中带血丝；（3）咳嗽时，喉咙处发出哮鸣音（像笛声一");
