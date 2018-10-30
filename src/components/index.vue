<template>
  <div>
    <!-- 挂号,医生 -->
 <div class="home-main-entry--item">
    <router-link to="" class="entry-item-img">
      <img src="../../public/img/index/icon-registered.2e3185ad9b8ed3107476b69aa06a2f84.png" alt="">
      <p class="home-main-entry--item-p">去挂号</p>
      <p class="home-main-entry--item-description">全国2894家重点医院</p>
    </router-link>
    <router-link to="">
      <img src="../../public/img/index/icon-find-doctor.d40d3bcf27af73fa7dd2cdc3b5dfe758.png" alt="">
      <p class="home-main-entry--item-p">找医生</p>
      <p class="home-main-entry--item-description">查疾病、看评论选医生</p>
    </router-link>
    <router-link to="">
      <img src="../../public/img/index/icon-wy-vip.84099f8fccd4726117bd95ddf397c4f4.png" alt="">
      <p class="home-main-entry--item-p">微医会员</p>
      <p class="home-main-entry--item-description">专享问诊、预约特权</p>
    </router-link>
  </div>
  <!-- 广告 -->
  <div class="home-internet-hospital-top">
    <div class="home-internet-hospital-top-entry">
      <router-link to="" class="top-entry">
        <img src="../../public/img/index/pic-internet-hospital.fe75ca6398fa9c09353c776104189dd9.png" alt="">
      </router-link>
    <!-- 挂号,医生 -->
      <section class="home-internet-hospital-entries--item">
        <router-link to="" v-for="tmp of entry" :key="tmp.id" class="entries--item">
          <p>
            <img :src="tmp.img" alt="">
            <span class="home-internet-hospital-entries--item-title">{{tmp.title}}</span>
          </p>
          <p>
            <span>{{tmp.description}}</span>
          </p>
        </router-link>
      </section>
      <hr>
      <!-- 特色专科 -->
      <div class="departments--header">
        <h3>特色专科</h3>
        <router-link to="">全部科室 ></router-link>
      </div>
      <div class="departments--content">
        <div class="departments--item">
          <router-link to="" v-for="department of departments" :key="department.index">
            <img :src="department.img" alt="">
            <p>{{department.title}}</p>
            <p>{{department.doctor}}</p>
          </router-link>
        </div>
      </div>
      <!-- 微医全科-->
      <div class="home-internet-hospital--qk">
      <router-link to="">
          <img src="../../public/img/index/pic-qk.28675500fe03acc028c18114fa4eb676.png" alt="">
      </router-link>
      <hr>
      </div>
      <!-- 就诊动态 -->
        <div class="hospital-dynamics">
          <div class="hospital-dynamics--header">
          <h3>就诊动态</h3>
          <router-link to="">去看病 ></router-link>
          </div>
        </div>
      <!-- 动态轮播 -->
      <mt-swipe :auto="3000" class="we-swipe--container" :show-indicators="false">
        <mt-swipe-item v-for="doc of doctor" :key="doc.index">
          <p class="hospital-dynamics--item-title">
            {{doc.title}}
          </p>
          <div class="hospital-dynamics--item-description">
            <span>【专家义诊】</span>
            <span>7分钟前</span>
          </div>
           <p class="hospital-dynamics--item-title">
            {{doc.title}}
          </p>
          <div class="hospital-dynamics--item-description">
            <span>【专家义诊】</span>
            <span>6分钟前</span>
          </div>
        </mt-swipe-item>
      </mt-swipe>
      </div>
    </div> 
    <!-- insurance -->
    <div class="insurance-entry">
      <router-link to="">
        <img src="../../public/img/index/icon-health-insurance.ccf2db7f541b133af0462bbc2a0058cd.png" alt="">
      </router-link>
      <router-link to="">
        <img src="../../public/img/index/icon-internet-hospital.6b445de78ce838fbfe63793e8a18c722.png" alt="">
      </router-link>
    </div>
      <!-- 图片轮播 -->
    <div class="home-internet-hospital-top-middle">
      <mt-swipe :auto="4000" :show-indicators="false" class="swipe">
        <mt-swipe-item v-for="sw of swipe" :key="sw.id">
          <img :src="sw.img" alt="">
        </mt-swipe-item>
      </mt-swipe>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      entry: [],
      departments: [],
      doctor: [],
      swipe: []
    };
  },
  created() {
    this.getData();
  },
  methods: {
    getData() {
      this.$axios.get("http://localhost:8080/abc").then(data => {
        console.log(data);
        this.entry = data.data.entry;
        this.departments = data.data.departments;
        this.doctor = data.data.doctor;
        this.swipe = data.data.swipe;
      });
    }
  }
};
</script>

<style>
* {
  box-sizing: border-box;
}
div.home-internet-hospital-top,
div.home-main-entry--item {
  display: flex;
  justify-content: center;
}
p.home-main-entry--item-description{
  color: #83889A;
}
div.home-internet-hospital-top-entry {
  width: 90%;
  height: 800px;
  box-shadow: 0px 0px 20px 20px #f6f6f7;
  border-radius: 10px;
}
div.home-internet-hospital-top-entry a.top-entry img {
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}
section.home-internet-hospital-entries--item {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  height: 150px;
}
section.home-internet-hospital-entries--item a {
  display: block;
  width: 40%;
  color: #83889A;
}

section.home-internet-hospital-entries--item a img {
  width: 27px;
  height: 22px;
  border-top-left-radius: 0px;
  border-top-right-radius: 0px;
}
p {
  margin: 0px !important;
}
/* 特色专科 */
div.departments--header {
  display: flex;
  justify-content: space-between;
}
div.departments--header h3 {
  font-weight: 700;
  font-size: 20px;
  margin-left: 13px;
  margin-top:0px;
}
div.departments--header{

}
div.departments--header a {
  margin-top: 5px;
  margin-right: 13px;
  color: #83889a;
  font-size: 14px;
}
/* 特色专科--目录 */
div.departments--item {
  display: flex;
  justify-content: center;
  width: 90%;
}
div.departments--content {
  display: flex;
  justify-content: center;
}
div.departments--item a.router-link-exact-active {
  display: block;
  width: 25%;
}
div.departments--item {
  flex-wrap: wrap;
}
div.departments--item a.router-link-exact-active img {
  position: relative;
  width: 35px;
  height: 35px;
  left: 10px;
  top: 5px;
}
div.departments--item a.router-link-exact-active p {
  margin: 0px;
  font-size: 10px;
  color: #5f697a;
}
div.departments--item a.router-link-exact-active {
  background: #f6f7f8;
  border: 5px solid #ffffff;
  border-radius: 10px;
}
/* 微医全科 */
div.home-internet-hospital--qk a img {
  width: 88%;
  height: 68px;
}
div.home-internet-hospital--qk a {
  display: flex;
  justify-content: center;
  border-radius: 10px;
}
hr {
  width: 90%;
}
/* 就诊动态 */
div.hospital-dynamics div.hospital-dynamics--header {
  display: flex;
  justify-content: space-between;
}
div.hospital-dynamics--header h3 {
  font-weight: 700;
  font-size: 20px;
  margin-left: 13px;
  margin-top:0px;
}
div.hospital-dynamics--header a {
  margin-top: 5px;
  margin-right: 13px;
  font-size: 14px;
  color: #ffffff;
  background: #3f86ff;
  border-radius: 20px;
  height: 25px;
  line-height: 25px;
  width: 80px;
  text-align: center;
}
/* 动态轮播 */
div.hospital-dynamics--item-description {
  display: flex;
  justify-content: space-between;
}
div.hospital-dynamics--item-description span:first-child {
  color: #feb70f;
  font-size: 14px;
  padding-left: 13px;
}
div.hospital-dynamics--item-description span:last-child {
  font-size: 14px;
  padding-right: 13px;
  color: #bbbcc7;
}
p.hospital-dynamics--item-title {
  padding-left: 13px;
}
div.we-swipe--container {
  height: 120px;
  margin-top:13px;
}
/* 图片轮播 */
div.home-internet-hospital-top-middle{
  height: 200px;
  margin-top:10px;
  width: 100%;
}
div.home-internet-hospital-top-middle img{
  width: 90%;
  height: 100px;
  border-radius: 10px;
}
div.home-internet-hospital-top-middle .swipe{
  text-align: center;
}
  /* insurance */
div.insurance-entry{
  width: 100%;
  display: flex;
  text-align: center;
  margin-top:30px;
  padding: 12px;
}
div.insurance-entry img{
  width: 90%;
  height: 90px;
}
div.insurance-entry a{
  width: 50%;
}
</style>
