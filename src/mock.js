const Mock = require("mockjs");
Mock.mock('http://localhost:8080/abc',{
  // 互联网医院
  'entry|4':[{
    'id|0-100':1,
    'img':"@image('37x22',#00eeb4)",
    'title':'@ctitle(2,10)',
    'description':'@ctitle(2,10)'
  }],
  // 特色专科
  'departments|8':[{
    'id|0-100':1,
    'img':"@image('35x35',red)",
    'title':'@ctitle(2,10)',
    'doctor':'@ctitle(2,10)'
  }],
  'doctor|10':[{
    'id|0-100':1,
    'title':"@ctitle(20,20)",
    'specialist':"@ctitle(2,4)"
  }],
  'swipe|6':[{
    'id|0-100':1,
    'img':"@image('570x110',#213547)",
    'title':"@ctitle(2,4)",
  }],
  // 严选
  'homeSwipe|4':[{
    'id|0-100':1,
    'img':"@image('370x150',#FFE2E3)",
  }],
  // 导航栏
  'navigation|5':[{
    'id|0-100':1,
    'img':"@image('30x33',#FFE2E3)",
    'title':"@ctitle(4,4)"
  }],
  //商品
  'product|6':[{
    'id|0-100':1,
    'img':"@image('90x90',#F92672)",
    'title':"@ctitle(14,14)",
    'price|100-999':100
  }],
  'productOne|6':[{
    'id|0-100':1,
    'img1':"@image('50x50',#F75741)",
    'img2':"@image('170x170',#F92672)",
    'subtitle':"@ctitle(45,55)",
    'name':"@ctitle(20,30)",
    'price|100-999':100
  }],
  // 分类推荐
  'wrapper|4':[{
    'id|0-100':1,
    'img':"@image('77x77',#F9273C)",
    'title':"@ctitle(4,4)"
  }]
});
