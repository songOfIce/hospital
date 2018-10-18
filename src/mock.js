const Mock = require("mockjs");
Mock.mock('http://localhost:8080/abc',{
  'stu|4':[{
    'id|0-10000':1,
    'img':"@image('37x22',##00eeb4)",
    'item-title':'@ctitle(2,10)',
    'item-description':'@ctitle(2,10)'
  }],
  
});
