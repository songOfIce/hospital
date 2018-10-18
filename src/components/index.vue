<template>
  <div>
    <!-- 挂号,医生 -->
 <div class="home-main-entry--item">
    <router-link to="">
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
  <div class="home-internet-hospital-top-entry">
    <img src="../../public/img/index/pic-internet-hospital.fe75ca6398fa9c09353c776104189dd9.png" alt="">
  </div>
  <!-- 挂号,医生 -->
    <section class="home-internet-hospital-entries--item">
      <router-link to="" v-for="tmp of list" :key="tmp.id">
        <img :src="tmp.img" alt="">
        <span class="home-internet-hospital-entries--item-title">{{tmp.item-description}}</span>
      </router-link>
    </section>
  </div>
</template>

<script>
export default {
  data(){
    return{
      msg:"Vue mock",
      list:[]
    }
  },
  created () {
    this.getData()
  },
  methods: {
    getData () {
      this.$axios.get("http://localhost:8080/abc").then(data=>{
        console.log(data);
        this.list = data.data.stu;
      })
    }
  }
}
</script>

<style>

</style>
