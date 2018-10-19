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
      <router-link to="">
        <img src="../../public/img/index/pic-internet-hospital.fe75ca6398fa9c09353c776104189dd9.png" alt="">
      </router-link>
    <!-- 挂号,医生 -->
      <section class="home-internet-hospital-entries--item">
        <router-link to="" v-for="tmp of entry" :key="tmp.id">
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
      <div class="home-internet-hospital-departments--header">
        <h3>特色专科</h3>
        <router-link to="">全部科室 ></router-link>
      </div>
      <div class="home-internet-hospital-departments--content">
      <div class="home-internet-hospital-departments--item">
        <router-link to="" v-for="department of departments" :key="department.id" class="home-internet-hospital-departments-item">
          <img :src="department.img" alt="">
          <p>{{department.title}}</p>
          <p>{{department.doctor}}</p>
        </router-link>
      </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      msg:"Vue mock",
      entry:[],
      departments:[]
    }
  },
  created () {
    this.getData()
  },
  methods: {
    getData () {
      this.$axios.get("http://localhost:8080/abc").then(data=>{
        console.log(data);
        this.entry = data.data.entry;
        this.departments = data.data.departments;
      })
    }
  }
}
</script>

<style>
  *{
      box-sizing: border-box;
  }
  div.home-internet-hospital-top,div.home-main-entry--item{
      display: flex;
      justify-content: center;
  }
  
  div.home-internet-hospital-top-entry{
      width: 90%;
      box-shadow:0px 0px 10px 10px #F6F6F7;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
  }
  img{
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
  }
  section.home-internet-hospital-entries--item{
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      height: 150px;
  }
  section.home-internet-hospital-entries--item a{
      display: block;
      width: 45%;
  }
  section.home-internet-hospital-entries--item a img{
    width: 27px;
    height: 22px; 
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
  }
  /* 特色专科 */
  div.home-internet-hospital-departments--header{
    display: flex;
    justify-content: space-between;
  }
  div.home-internet-hospital-departments--header h3{
    font-weight:700px;
    font-size: 20px;
    margin-left: 13px;
  }
  div.home-internet-hospital-departments--header a{
    margin-top:5px;
    margin-right: 13px;
    color: #83889A;
    font-size: 14px;
  }
  /* 特色专科--目录 */
  div.home-internet-hospital-departments--content{
    display: flex;
    justify-content: center;
    width: 90%;
  }
  div.home-internet-hospital-departments--item{
    display: flex;
    justify-content: space-between;
    width: 90%;
  }
  div.home-internet-hospital-departments--item img{
    width: 25%;
    
  }
</style>
