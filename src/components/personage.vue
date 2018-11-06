<template>
  <div>
    <div v-for="item of res" :key="item.index">
    <!-- 头部 -->
    <div class="personage-header">
      <router-link to="/home/index">&lt;</router-link>
      <h3>我</h3>
    </div>
    <!-- top -->
    <div class="personage-header-top">
      <img :src="item.img" alt="" class="personage-header-img">
      <div class="top-center">
        <div class="top-center-one">
        <span>{{item.realname}}</span>
        <img src="../../public/img/personage/certify.png" alt="">
        </div>
        <div class="top-center-two">
        <router-link to=""><img src="../../public/img/personage/welfare.png" alt="">领取lv{{item.rank}}福利</router-link>
        </div>
      </div>
        <div class="top-center-right-set">
        <router-link to="">
          <img src="../../public/img/personage/set.png" alt="" class="top-center-right-one">
        </router-link>
        </div>
      <div class="top-center-right">
        <router-link to="">
          <img src="../../public/img/personage/vip-tobe.png" alt=""
          class="top-center-right-two">
        </router-link>
      </div>
    </div>
    <!-- 优惠劵 健康币 健康账户 -->
    <div class="personage-special">
      <router-link to="">
        <span>{{item.coupon}}</span>
        <br>
        优惠劵(张)
      </router-link>
      <router-link to="">
        <span>{{item.healthy}}</span>
        <br>
        健康币(个)
      </router-link>
      <router-link to="">
        <span>*****</span>
        <br>
        健康账户(元)
      </router-link>
    </div>
    <div class="div-hr"></div>
    <!-- 我的订单 -->
    <h3 class="order">我的订单</h3>
    <div class="personage-tools">
      <router-link to="">
        <img src="../../public/img/personage/icon-book.png" alt="">
        <p>我的预约</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-consult.png" alt="">
        <p>我的问诊</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-order.png" alt="">
        <p>服务包订单</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-order2.png" alt="">
        <p>商品订单</p>
      </router-link>
    </div>
    <div class="div-hr"></div>
    <h3 class="order">常用工具</h3>
    <!-- 常用工具 -->
    <div class="personage-nav">
      <router-link to="">
        <img src="../../public/img/personage/icon-patients.png" alt="">
        <p>家庭联系人</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-star.png" alt="">
        <p>关注收藏</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-doctor.png" alt="">
        <p>我的医生</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-apply.png" alt="">
        <p>我的申请</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-course.png" alt="">
        <p>我的课程</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-member.png" alt="">
        <p>会员福利</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-help.png" alt="">
        <p>帮助反馈</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-more.png" alt="">
        <p>更多</p>
      </router-link>
    </div>
    <div class="div-hr"></div>
    <!-- 我的社区 -->
    <h3 class="order">我的社区</h3>
    <div class="personage-community">
      <router-link to="">
        <img src="../../public/img/personage/icon-sns-watch.png" alt="">
        <p>我的关注</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-sns-question.png" alt="">
        <p>我的提问</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-sns-post.png" alt="">
        <p>我的发帖</p>
      </router-link>
      <router-link to="">
        <img src="../../public/img/personage/icon-sns-more.png" alt="">
        <p>更多</p>
      </router-link>
    </div>
    <div class="div-hr"></div>
    <!-- 健康档案 -->
    <h3 class="order">健康档案</h3>
    <div class="swiper-container">
      <div class="personage-health">
        <span class="name">{{item.realname}}</span>
        <span class="age">{{item.realage}}岁</span>
        <span class="sex">{{item.gender}}</span>
        <div class="default-record">默认</div>
      </div>
      <div class="personage-case">
        <div class="personage-case-case">
          <span>{{item.emr}}</span>
          <div class="name">电子病历</div>
        </div>
        <div class="personage-case-doctor">
          <span>{{item.doctor}}</span>
          <div class="name">我的医生</div>
        </div>
        <div class="personage-case-health">
          <span>去完善</span> 
          <div class="name">健康信息</div>
        </div>
      </div>
      <div class="personage-info">
        <router-link to="">查看健康档案</router-link>
      </div>
      <div class="logout" @click="outlogin()">
        退出登录
      </div>
    </div>
    <div class="div-hr"></div>
    <footer-box></footer-box>
    </div>
  </div>
</template>
<script>
import Footer from "./footer.vue";
export default {
  components: {
    FooterBox: Footer
  },
  data(){
    return{
      res:[],
      img:[],
      username:[],
    }
  },
  created() {
    var username =sessionStorage.getItem("username");
    this.username = username;
    this.personage();
  },
  methods:{
    personage(){
      this.$axios.post("http://localhost:5050/personage",`username=${this.username}`).then(res=>{
        this.res = res.data;
        console.log(this.res);
      })
    },
    outlogin(){
        sessionStorage.removeItem("username");
        //返回首页
        this.$toast({
          message:"退出成功 3s 后返回首页",
          position:"middle",
          duration:3000
        })
        setTimeout(()=>{
          this.$router.push({path:"/home/index"});
        },3000);
    }
  }
};
</script>

<style scoped>
/* 头部 */
div.personage-header {
  text-align: center;
  margin-top: -40px;
  position: fixed;
  width: 100%;
  height: 40px;
  line-height: 40px;
  background: #ffffff;
  z-index: 1;
}
div.personage-header h3 {
  font-weight: 500;
}
div.personage-header a {
  position: absolute;
  left: 0px;
}
/* top */
div.personage-header-top {
  background: url(../../public/img/personage/bg.png);
  background-size: 100% 125px;
  width: 100%;
  height: 125px;
  margin-top: 40px;
}
div.personage-header-top {
  position: relative;
}
div.personage-header-top img.personage-header-img {
  position: absolute;
  height: 57px;
  width: 57px;
  bottom: 30px;
  left: 20px;
  border-radius: 50%;
}
div.top-center-one {
  position: absolute;
  bottom: 60px;
  left: 90px;
}
div.top-center-one img {
  width: 20px;
  height: 16px;
}
div.top-center-one span {
  color: #ffffff;
}
div.top-center-two {
  position: absolute;
  bottom: 40px;
  left: 90px;
}
div.top-center-two a {
  color: #ffffff;
  font-size: 12px;
}
div.top-center-two img {
  vertical-align: middle;
}
div.top-center-right {
  position: absolute;
  right: 0px;
  bottom: 20px;
}
div.top-center-right img.top-center-right-two {
  height: 65px;
  width: 70px;
}
div.top-center-right-set {
  position: absolute;
  right: 10px;
  top: 10px;
}
/* 优惠劵 健康币 健康账户 */
div.personage-special {
  display: flex;
  justify-content: space-around;
  text-align: center;
}
div.personage-special a {
  height: 70px;
  line-height: 35px;
  font-size: 14px;
}
h3.order {
  text-align: center;
  font-weight: 200;
  border-bottom: 1px solid #eeeeee;
  height: 40px;
  line-height: 40px;
}
div.personage-tools {
  display: flex;
  justify-content: space-around;
  text-align: center;
}
div.personage-tools img {
  height: 30px;
  width: 30px;
}
div.personage-tools p {
  font-size: 14px;
  color: #8388a7;
}
/* 常用工具 */
div.personage-nav {
  display: flex;
  justify-content: space-around;
  text-align: center;
  flex-wrap: wrap;
}
div.personage-nav img {
  height: 30px;
  width: 30px;
}
div.personage-nav a {
  width: 25%;
  font-size: 14px;
  margin-top: 10px;
  margin-bottom: 10px;
}
/* 我的社区 */
div.personage-community {
  display: flex;
  justify-content: space-around;
  text-align: center;
  margin-top:10px;
  margin-bottom: 10px;
}
div.personage-community img {
  height: 30px;
  width: 30px;
}
div.personage-community p {
  font-size: 14px;
}
div.swiper-container {
  height:230px;
}
div.personage-health {
  display: flex;
  justify-content: space-around;
  width: 50%;
  margin: 0 auto;
  font-size: 14px;
  margin-top: 20px;
  margin-bottom: 20px;
}
div.personage-health div.default-record {
  border: 1px solid #02d181;
  border-radius: 20px;
  color: #02d181;
  padding-left: 5px;
  padding-right: 5px;
}
div.personage-case {
  display: flex;
  justify-content: space-around;
  text-align: center;
  font-size: 14px;
  color: #83889A;
}
div.personage-case div.name{
  margin-top:10px;
}
div.personage-case-health span {
  border: 1px solid #c8d5e5;
  border-radius: 20px;
  padding-left: 10px;
  padding-right: 10px;
}
div.personage-info{
  text-align: center;
  margin-top:20px;
  margin-bottom: 20px;
  font-size: 14px;
}
div.personage-info a{
  border: 1px solid #3F86FF;
  border-radius: 20px;
  padding: 5px;
  color: #3F86FF;
}
div.logout{
  text-align: center;
  color: #E54D3F;
  box-shadow: 0px 0px 5px 5px #f6f6f7;
  height: 40px;
  line-height: 40px;
}
</style>
