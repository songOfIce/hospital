const Mock = require("mockjs");
Mock.mock('/api/data',{
  'stu|10-20':[{
    'id|0-10000':1,
    'img':"@image('27x22',##00eeb4)",
    'item-title':'@ctitle(2,10)',
    'item-description':'@ctitle(2,10)'
  }]
});
