<template>
  <div>
    <header-box></header-box>
    <div class="entries">
      <div class="entry-card">
        <div class="entry-card-item">
          <router-link to="">
          <img src="../../public/img/health/top-entry-health.png" alt="" class="entry-card-item-img">
          </router-link>
          <div class="entry-card-text">
            <router-link to="">
              <h5 class="">找号主 <img src="../../public/img/health/arrows.png" alt=""></h5>
              <p>看科普 找大咖</p>
            </router-link>
          </div>
        </div>
        <div class="entry-card-item">
          <router-link to="">
          <img src="../../public/img/health/top-entry-help.png" alt=""
          class="entry-card-item-img">
          </router-link>
          <div class="entry-card-text">
            <router-link to="">
              <h5 class="">大家帮 <img src="../../public/img/health/arrows.png" alt=""></h5>
              <p>提问题 解疑惑</p>
            </router-link>
          </div>
        </div>
      </div>
      <!-- modules -->
      <div class="modules">
        <ul>
          <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type2.png" alt="">
            <router-link to=""><h6>女性健康</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/2018-11-01_202043.png" alt="">
            <router-link to=""><h6>亲子育儿</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type4.png" alt="">
            <router-link to=""><h6>慢病调理</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/2018-11-01_202126.png" alt="">
            <router-link to=""><h6>皮肤疾病</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type6.png" alt="">
            <router-link to=""><h6>肿瘤癌症</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type7.png" alt="">
            <router-link to=""><h6>生活情感</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type8.png" alt="">
            <router-link to=""><h6>两性之间</h6></router-link>
          </li>
        </ul>
      </div>
      <!-- text-type -->
      <div class="text-type">
        <ul class="text-list">
          <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>身边好微医</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
           <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>癌症早期症状...</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
           <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>测iphone X...</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
           <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>更多话题/活动</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
        </ul>
      </div>
    <div class="div-hr"></div>
      <!-- 精选推荐/我的关注 -->
      <div class="sns">
        <div class="sns-tabbar">
          <p class="sns-tabbar-item">精选推荐</p>
          <p class="sns-tabbar-item">我的关注</p>
        </div>
        <div class="post-h" v-for="item of Selection" :key="item.index">
        <div class="post" >
        <div class="post-header">
          <img :src="item.img1" alt="">
          <div class="user-name">
            <router-link to="">{{item.username}}</router-link>
            <p>{{item.titletext}}</p>
          </div>
          <router-link class="ask-entry" to="">
            向TA提问
          </router-link>
        </div>
        <div class="post-content-block">
          <router-link to="">
            <span><img class="post-content-block-img" src="../../public/img/health/2018-10-26_204319.png" alt=""></span>{{item.content}}
          </router-link>
          <div class="post-content">
            {{item.section}}
          </div>
        </div>
        <img :src="item.img2" alt="" class="post-content-img">
        <footer class="post-footer-block">
          <div class="footer-link">
            <i class="icon">#</i>
            <router-link to="">
              {{item.cicle}}
            </router-link>
          </div>
          <div class="footer-msg">
            <span>回复&nbsp;{{item.msgreply}}&nbsp;</span>
            <span>.&nbsp;点赞&nbsp;{{item.msglike}}</span>
          </div>
        </footer>
        </div>
        <div class="div-hr-selction"></div>
        </div>
      </div>
    </div>
    <footer-box></footer-box>
  </div>
</template>
<script>
import Footer from './footer.vue';
import Header from './header.vue'
export default {
components:{
  footerBox:Footer,
  HeaderBox:Header
},
  data(){
    return {
      Selection:[]
    }
    
  },
  created() {
    this.getsection();
  },
  methods:{
    getsection() {
      this.$axios.get("http://localhost:5050/selection").then(data=>{
        this.Selection = data.data;
      })
    }
  }
};
</script>

<style>
div.entry-card {
  border: 1px solid #ffffff;
  box-shadow: 0px 0px 20px 10px #f6f6f7;
  border-radius: 10px;
  width: 90%;
  margin: 0 auto;
}
div.entries div.entry-card {
  display: flex;
  justify-content: space-around;
}
div.entry-card-item {
  display: flex;
  justify-content: space-between;
}
div.entry-card-item img {
  height: 78px;
  width: 60px;
}
div.entry-card-text h5 {
  margin-top: 20px;
  margin-bottom: 0px;
  font-size: 18px;
  font-weight: 700;
  color: #28354c;
}
div.entry-card-text h5 img {
  height: 16px;
  width: 16px;
  vertical-align: middle;
}
/* modules */
div.modules ul {
  list-style: none;
  justify-content: space-between;
  display: flex;
  flex-wrap: wrap;
  text-align: center;
  padding: 0px;
}
div.modules ul li img {
  height: 48px;
  width: 48px;
}
div.modules ul li {
  width: 25%;
  margin-bottom: 10px;
}
h6{
  margin: 0px;
}
div.post-h a{
  color: #478BFF;
}
/* 身边好微医 */
ul.text-list {
  list-style: none;
  display: flex;
  justify-content: space-between;
  padding: 0px;
  flex-wrap: wrap;
}
ul.text-list li.text-item {
  width: 50%;
}
li.text-item a {
  display: flex;
  justify-content: space-around;
}
li.text-item a img {
  margin-left: -40px;
}
li.text-item a i {
  margin-right: -40px;
  color: #d4d5db;
}
div.div-hr {
  width: 100%;
  height: 8px;
  background: #f5f6f6;
  display: block;
}
/* 精选推荐/我的关注 */
div.sns-tabbar {
  display: flex;
  justify-content: space-around;
  margin-left: 20px;
  margin-right: 20px;
}
/* post-header */
div.post-header div.user-name{
  margin-left:-50px;
  color: #4F5264;
}
div.post-header a{
  font-size: 14px;
  margin-bottom: 10px;
}
div.post{
  width: 90%;
  margin: 0 auto;
}
div.post-header img{
  height: 36px;
  width: 36px;
}

div.post-header{
  display: flex;
  justify-content: space-between;
  margin-top:10px;
  margin-bottom: 10px;
}
a.ask-entry{
  margin-top:10px;
  font-size: 14px;
  border: 1px solid #3F86FF;
  border-radius: 20px;
  height: 25px;
  width: 70px;
  line-height:25px;
  text-align: center;
}
div.post div.post-content-block a{
  font-size:16px;
  font-weight:700;
  color: #28354c;
}
div.post-content{
  margin-top:10px; 
}
div.post div.post-content-block  div.post-content{
  font-size: 14px;
  color: #4F5264;
}
img.post-content-block-img{
  vertical-align: middle;
  margin-right: 10px;
}
footer.post-footer-block{
  display: flex;
  justify-content: space-between;
  font-size: 14px;
  color: #a6a8b6;
}
footer.post-footer-block a{
  color: #2F4E98;
}
img.post-content-img{
  height: 117px;
  width: 208px;
  margin-top:10px;
  margin-bottom: 10px;
}
div.div-hr-selction{
  width: 100%;
  height: 8px;
  background: #f5f6f6;
  display: block;
}
</style>
