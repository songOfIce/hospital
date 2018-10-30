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
    <input type="text" placeholder="手机号">
    </div>
    <div class="register-section-t">
    <i></i>
    <input type="text" placeholder="验证码">
    </div>
  </div>
  <!-- 确认按钮 -->
  <router-link to="" class="affirm">确认</router-link>
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
</div>
</template>

<script>
export default {

}
</script>

<style scoped>
div.register{
  position: relative;
  width: 90%;
  margin: 0 auto;
}
div.register h3{
  text-align: center;
  color: #28354C;
  font-weight: 400;
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
a.affirm{
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
div.register-footer-bottom a,div.register-footer-header a{
  color: #3278EE;
}
div.register-footer-bottom{
  margin:10px;
}
</style>
