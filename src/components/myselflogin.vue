<template>
<div>
    <div class="inner">
      <div class="inner-index">
        <router-link to="/home/index">
        <img src="../../public/img/personage/back.png" alt="">
        </router-link>
      </div>
      <h3>登录</h3>
    </div>
      <div class="inner-index-tips">
        微医账号可直接登录
      </div>
  <div class="action">
   <div class="inner-o">
     <i class="inner-one"></i>
     <input type="text" placeholder="邮箱/手机号或用户名" v-model="username">
   </div>
   <div class="inner-t">
     <i class="inner-two"></i>
     <input type="password" placeholder="密码" v-model="password">
     <span>{{msg}}</span>
   </div>
   <div class="action-gbn">
     <button class="action-gbn-router" @click="login()">登录</button>
     <span></span>
   </div>
   <div class="extra-info">
   <router-link to="/home/myselfregister">快速登录/注册</router-link>
   </div>
    <div class="policy">登录即使表示您阅读并同意</div>
    <div class="policy-info">
    <router-link to="">《微医服务协议》《法律声明及隐私权政策》</router-link>
    </div>
  </div>
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
    username:"",
    password:"",
    show:false,
    msg:""
    }
  },
  methods:{
    getshow(){
      this.show=!this.show;
    },
    //登录
    login(){
        sessionStorage.setItem("username",this.username);
      if(!this.username || !this.password){return this.msg="账号密码不能为空"};
      this.$axios.post("http://localhost:5050/login",`username=${this.username}&password=${this.password}`).then(res=>{
        this.msg = res.data;
        if(this.msg=="登录成功"){
          this.$toast({
          message:"登录成功",
          position:"middle"
          })
        this.$router.push({path:'/home/personage'});
        }
      })
    }
  },
}
</script>

<style scoped>
div.inner-index img{
  height: 20px;
  width: 20px;
  margin-top:10px;
  margin-left: 13px;
}
div.action{
  width: 100%;
  margin: 0 auto;
}
div.action-gbn button{
  border: 1px solid #2F7FE2;
  text-align: center;
  color: #FFFFFF;
  background: #2F7FE2;
  display: block;
  width: 100%;
  height:45px;
  line-height: 45px;
  border-radius: 20px;
  margin-top:10px;
  outline: none;
}
div.inner input{
  border-radius: 20px;
}
div.inner{
  position: relative;
  box-shadow: 0px 0px 10px 5px #f6f6f7;
  height: 40px;
  line-height: 40px;
}
div.inner-index{
  position:absolute;
}
div.policy-info a{
  color: #3278EE;
}
div.policy{
  text-align: center;
}
div.inner-index-tips{
  width: 90%;
  margin-top:10px;
  margin-bottom: 10px;
  margin: 10px auto;
}
div.extra-info a{
  color: #3278EE;
}
div.inner h3{
  font-size: 18px;
  text-align: center;
  color: #28354C;
  font-weight: 400;
}
div.extra-info{
  text-align: center;
  margin:10px 0;
}
div.extra-info a{
  font-size: 14px;
  text-align: center;
}
div.policy-info{
  font-size: 14px;
  text-align: center;
  color: #3278EE;
}
/* 背景图片 */
div.inner-o{
  position: relative;
}
div.inner-t{
  position: relative;
}
div.inner-o i.inner-one{
  background-image: url("../../public/img/index/personage.png");
  width: 16px;
  height: 16px;
  display: block;
  position: absolute;
  top:7px;
  left: 10px;
}
div.inner-t i.inner-two{
  background-image: url("../../public/img/index/password.png");
  width: 16px;
  height: 16px;
  display: block;
  position: absolute;
  top:17px;
  left: 10px;
}
div.inner-o input{
  width: 100%;
  height: 32px;
  border-radius:20px;
  padding-left: 30px;
}
div.inner-t input{
  margin-top:10px;
  width: 100%;
  height: 32px;
  border-radius:20px;
  padding-left: 30px;
}
div.directory img{
  height: 45px;
  width: 45px;
}
div.directory{
  position: absolute;
  bottom:50px;
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
div.directory-listing a{
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
