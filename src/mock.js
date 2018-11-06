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
  //doctor回复
  'doctor|10':[{
    'id|0-100':1,
    'title':"@ctitle(20,20)",
    'specialist':"@ctitle(2,4)"
  }],
  //轮播图
  'swipe|6':[{
    'id|0-100':1,
    'img':"@image('570x110',#213547)"
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
  //商品one
  'productOne|6':[{
    'id|0-100':1,
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
  }],
  // 精选推荐
  'Selection|10':[{
    'id|0-100':1,
    'img1':"@image('36x36',#E6B93C)",
    'username':"@ctitle(8,8)",
    'titletext':"@ctitle(11,11)",
    'img2':"@image('208x117',#E6B93C)",
    'content':"@ctitle(12,12)",
    'section':"@ctitle(90,90)",
    'cicle':"@ctitle(3,3)",
    'msgreply|0-9':1,
    'msglike|0-10':1
  }],
  // discover
  'discover|10':[{
    'id|0-100':1,
    'title':"@ctitle(12,12)",
    'description':"@ctitle(16,16)",
    'img':"@image('100x75',#D20A0A)",
    'titleconsult':"@ctitle(4,4)"
  }],
  //details
  'details|1':[{
    'id|100-200':1,
    'img':"@image('414x414',#D20A0A)",
  }]
});
