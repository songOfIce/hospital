<template>
<div>
  <div class="register">
    <div class="register-header">
        <router-link to="/home/index"> &lt; </router-link>
    </div>
    <h3>快速登录/注册</h3>
  </div>
  <!-- 手机号/验证码 -->
  <div class="register-section">
    <div class="register-section-o">
    <i></i>
    <input type="text" placeholder="手机号" v-model="username">
    </div>
    <div class="register-section-t">
    <i></i>
    <input type="password" placeholder="密码" v-model="password">
    <span>{{msg}}</span>
    </div>
  </div>
  <!-- 确认按钮 -->
  <button class="affirm" @click="register()">确认</button>
  <!-- footer -->
  <div class="register-footer">
  <div class="register-footer-header">
    <router-link to="/home/myselflogin">密码登录</router-link>
  </div>
  <div class="register-footer-section">
    未注册手机验证后将自动进行注册,点击"确认"即表示您已阅读并同意以下协议
  </div>
  <div class="register-footer-bottom">
    <router-link to="">《微医服务协议》</router-link>
    <router-link to="">《法律声明及隐私权政策》</router-link>
  </div>
  </div>
  <!-- 目录 -->
  <div class="directory-listing" :class="show?'active':''">
    <ul>
      <li>
        <router-link to=""><img src="../../public/img/myself/2018-11-03_155010.png" alt="">首页</router-link>
      </li>
      <li>
        <router-link to=""><img src="../../public/img/myself/2018-11-03_155037.png" alt="">在线问诊</router-link>
      </li>
      <li>
        <router-link to=""><img src="../../public/img/myself/2018-11-03_154833.png" alt="">疾病导诊</router-link>
      </li>
      <li>
        <router-link to=""><img src="../../public/img/myself/2018-11-03_155120.png" alt="">我的关注</router-link>
      </li>
      <li>
        <router-link to=""><img src="../../public/img/myself/2018-11-03_155300.png" alt="">频道导航</router-link>
      </li>
      <li>
        <router-link to=""><img src="../../public/img/myself/2018-11-03_155325.png" alt="">个人中心</router-link>
      </li>
    </ul>
  </div>
  <div class="directory" @click="getshow()">
    <img src="../../public/img/myself/weiyi-logo-blue.png" alt="">
  </div>
</div>
</template>

<script>
export default {
  data(){
    return{
    show:false,
    username:"",
    password:"",
    msg:""
    }
  },
  methods:{
    getshow(){
      this.show=!this.show;
    },
    created() {
     
    },
    //注册
    register(){
      var reg = /^1\d{10}$/;
      if(!reg.test(this.username)){return this.msg="用户名格式不正确"};
      if(!this.username ||!this.password){return this.msg="用户名密码不能为空"};
      this.$axios.post("http://localhost:5050/register",`username=${this.username}&password=${this.password}`).then(res=>{
        this.msg = res.data;
        if(this.msg=="注册成功"){
          this.$router.push({path:'/home/myselflogin'});
        }
      })
    }
  },

}
</script>

<style scoped>
div.register{
  position: relative;
  width: 100%;
  margin: 0 auto;
  box-shadow: 0px 0px 10px 5px #f6f6f7;
  line-height: 40px;
}
div.register h3{
  text-align: center;
  color: #28354C;
  font-weight: 400;
  height: 40px;
}
div.register-header{
  position:absolute;
}
div.register-section{
  margin: 0 auto;
  width: 90%;
  position: relative;
}
div.register-section-o input,div.register-section-t input{
  width: 100%;
  border-radius: 20px;
  height: 32px;
  margin-top:10px;
  padding-left: 30px;
}
button.affirm{
  border: 1px solid #2F7FE2;
  text-align: center;
  color: #FFFFFF;
  background: #2F7FE2;
  display: block;
  height:45px;
  line-height: 45px;
  border-radius: 20px;
  margin-top:20px;
  width: 90%;
  margin:0 auto;
  outline: none;
}
div.register-section-t{
  margin-bottom: 10px;
}
div.register-section-o i{
  background-image: url("../../public/img/index/personage.png");
  width: 16px;
  height: 16px;
  display: block;
  position: absolute;
  top:15px;
  left: 10px;
}
div.register-section-t i{
  background-image: url("../../public/img/index/code.png");
  width: 16px;
  height: 16px;
  display: block;
  position: absolute;
  top:60px;
  left: 10px;
}
div.register-footer-header{
  text-align: center;
  margin: 20px;
}
div.register-footer{
  width: 90%;
  margin: 0 auto;
  text-align: center;
  font-size: 14px;
}
div.register-footer-bottom a,div.register-footer-header button{
  color: #3278EE;
}
div.register-footer-bottom{
  margin:10px;
}
div.directory img{
  height: 45px;
  width: 45px;
}
div.directory{
  position: absolute;
  bottom:30px;
  margin-left: 13px;

}
div.directory-listing ul{
  list-style:none;
  padding-left: 0px;
  margin:0px;
  width: 100px;
  border-radius: 10px;
}
div.directory-listing img{
  width: 18px;
  height: 18px;
  vertical-align: middle;
}
div.directory-listing button{
  color:#333333;
  font-size: 14px;
}
div.directory-listing{
  border: 1px #2F7FE2 solid;
  border-radius: 10px;
  width: 100px;
  position: relative;
  z-index: 1;
  margin-left: 13px;
  opacity: 0;
  transition: all 2s;
}
div.directory-listing.active{
  opacity: 1;
}
div.directory-listing ul li{
  border-bottom: 1px #5B99E8 solid;
  padding-top:10px;
  padding-bottom: 10px;
}
div.directory-listing ul li:last-child{
  border-bottom:0;
  border-radius: 10px;
}
div.directory-listing:before{
  content: " ";
  position: absolute;
  top: 98%;
  left: 15px;
  width: 10px;
  height: 10px;
  border:1px solid #2F7FE2;
  border-left: 0px;
  border-top: 0px;
  transform: rotate(45deg);
  background: #FFFFFF;
  z-index: 2;
} 
</style>
