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
INSERT INTO doctor VALUES(null,"陈** 患者预约了吉林大学第二医院 谷丽萍医生线下门诊","【预约挂号】","1分钟前");