<template>
  <div class="action">
    <div class="inner">
      <div class="inner-index">
        <router-link to="/home/index"> &lt; </router-link>
      </div>
      <h1>登录</h1>
      <div class="inner-index-tips">
        微医账号可直接登录
      </div>
    </div>
   <div class="inner-o">
     <i class="inner-one"></i>
     <input type="text" placeholder="邮箱/手机号或用户名">
   </div>
   <div class="inner-t">
     <i class="inner-two"></i>
     <input type="text" placeholder="密码">
   </div>
   <div class="action-gbn">
     <router-link to="" class="action-gbn-router">登录</router-link>
   </div>
   <div class="extra-info">
   <router-link to="/home/myselfregister">快速登录/注册</router-link>
   </div>
    <div class="policy">登录即使表示您阅读并同意</div>
    <div class="policy-info">
    <router-link to="">《微医服务协议》《法律声明及隐私权政策》</router-link>
    </div>
  </div>
</template>
<script>
export default {

}
</script>

<style scoped>
div.action{
  width: 90%;
  margin: 0 auto;
}
div.action-gbn a{
  border: 1px solid #2F7FE2;
  text-align: center;
  color: #FFFFFF;
  background: #2F7FE2;
  display: block;
  height:45px;
  line-height: 45px;
  border-radius: 20px;
  margin-top:10px;
}
div.inner input{
  border-radius: 20px;
}
div.inner{
  position: relative;
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
  margin-top:10px;
  margin-bottom: 10px;
}
div.extra-info a{
  color: #3278EE;
}
div.inner h1{
  margin: 10px;
  font-size: 18px;
  text-align: center;
  color: #28354C;
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
</style>
