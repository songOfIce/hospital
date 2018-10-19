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

});
