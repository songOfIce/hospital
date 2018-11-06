<template>
<div>
  <div v-for="item of res" :key="item.index">
    <div class="news-new">
        <router-link to="/home/discover"><img src="../../public/img/personage/back.png" alt=""></router-link>
        <h3>{{item.title}}</h3>
    </div>
    <!-- 营业频道 -->
    <div class="news-channel">
        <router-link to="">{{item.channel}}</router-link>
        <p><img src="../../public/img/details/see-more.png" alt=""></p>
    </div>
    <div class="news-title">
      <h3>{{item.title}}</h3>
      <div class="info">
        <span>微医</span>
        <span>{{item.newstime}}</span>
      </div>
    </div>
    <div class="news-img">
      <img :src="item.img1" alt="">
    </div>
    <!-- 主体 -->
    <div class="news-normal">
      <p>{{item.newsnormal}}
      <span class="news-green">{{item.newsgreenone}}</span>{{item.newsgreenone1}}
      </p>
    <!-- 高血压 -->
    <h3>{{item.newsh3two}}</h3>
    <p>
	{{item.newsptwo}}<span class="news-green">{{item.newsgreentwo}}</span> <span>{{item.newsgreentwo2}}</span></p>
  <p>
	{{item.newsptwo2}}</p>
  <!-- 高血脂 -->
  <h3>{{item.newsh3three}}</h3>
  <p>	{{item.newspthree}}<span class="news-green">{{item.newsgreenthree}}</span>{{item.newsgreenthree2}}</p>
  <p>
	{{item.newspthree2}}</p>
  <!-- 高血糖 -->
  <h3>{{item.newsh3four}}</h3>
  <p>
	{{item.newspfour}}<span class="news-green">{{item.newsgreenfour}}</span>{{item.newsgreenfour2}}</p>
  </div>
  <!-- 点赞 -->
  <div class="news-give">
    <p>*本文为微医原创，未经授权不得转载。</p>
    <p>图片来源：123RF正版图库</p>
    <img :src="item.img2" alt="">
  </div>
  <div class="div-hr"></div>
  <!-- 热门评论 -->
  <div class="hotcomments">
    <h3>热门评论</h3>
    <img src="../../public/img/details/see-more.png" alt="">
  </div>
  </div>
  <!-- 评论 -->
  <div>
    <ul>
      <li class="news-hotcomments" v-for="item of comment" :key="item.index">
        <div class="news-hotcomments-comment">
          <img src="https://h2img.guahao.com/portal_upload/userheadpic/Crb27810575_60x60.?timeStamp=1541475472075" alt="">
          <p class="user-name">{{item.hotcommentsuser}}</p>
        </div>
        <div class="comment-area">
          <img src="../../public/img/details/hot-comment.png" alt="">
        </div>
        <span class="city">不限 {{item.hotcity}}</span>
        <p class="comment-words">{{item.hotcommentwords}}</p>
      </li>
    </ul>
  </div>
  <comment-box :pid="pid"></comment-box>
  
  </div>
</template>

<script>
import comment from './comment.vue';
export default {
  components:{
    CommentBox:comment
  },
  data () {
    return {
      res:[],
      pid:[],
      comment:[]
    }
  },
  created() {
    var pid = sessionStorage.getItem("pid");
    this.pid=pid;
    this.getdetail();
    this.getcomment();
  },
  methods:{
    getdetail (){
      this.$axios.post("http://localhost:5050/news",`pid=${this.pid}`).then(res=>{
        this.res = res.data;
      })
    },
    getcomment(){
      this.$axios.post("http://localhost:5050/comment",`pid=${this.pid}`).then(res=>{
        this.comment = res.data;
      })
    },
  }
}
</script>

<style scoped>
  div.news-new {
  text-align: center;
  box-shadow: 0px 0px 1px 5px #EBECF1;
  height: 40px;
  line-height: 40px;
  position: fixed;
  width: 100%;
  background: #ffffff;
  z-index: 1;
}
div.news-new h3 {
  font-weight: 500;
}
div.news-new img{
  height: 20px;
  width: 20px;
  vertical-align: middle;
  margin-bottom: 5px;
  margin-left: 10px;
}
div.news-new a {
  position: absolute;
  left: 0px;
}
div.news-channel{
  position: relative;
  top:40px;
  margin: 0 auto;
  width:100%;
  display: flex;
  justify-content: space-between;
  height: 40px;
  background: #F3FAFF;
  line-height: 40px;
}
div.news-channel p{
  padding-right: 13px;
}
div.news-channel img{
  height: 20px;
  width: 20px;
  vertical-align: middle;
}
div.news-channel a{
  margin-left: 13px;
}
div.news-title{
  position: relative;
  top:50px;
  width: 90%;
  margin: 0 auto;
}
div.news-title h3{
  font-weight: 500;
}
div.news-title span{
  font-size: 12px;
  color: #999999;
}
div.news-img{
  width: 95%;
  margin: 0 auto;
  margin-top:60px;
}
div.news-img img{
  height: 187px;
  width: 100%;
}
div.news-normal{
  width: 95%;
  margin: 0 auto;
}
div.news-normal p{
  font-size: 14px;
  color: #333333;
  padding-top:10px;
  padding-bottom: 10px;
}
div.news-normal h3{
  color: #333333;
  font-weight: 700;
  font-size: 16px;
}
div.news-normal span.news-green{
  color: #009900;
}
/* 点赞 */
div.news-give p{
  padding-top:20px;
  padding-bottom: 20px;
  font-size: 14px;
  color: #999999;
}
div.news-give img{
  width: 100%;
}
div.news-give{
  width: 95%;
  margin:0 auto;
  margin-bottom: 40px;
}
div.news-give-a{
  height: 100px;
}
div.hotcomments{
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin: 0 auto;
  height: 40px;
  line-height: 40px;
  border-bottom: 1px solid #F5F5F5;
}
div.hotcomments img{
  height: 20px;
  width: 20px;
  margin-top:10px;
  margin-right: 13px;
}
div.hotcomments h3{
  font-size: 14px;
  font-weight: 500;
  margin-left: 13px;
}
/* 评论 */
div.news-hotcomments-comment{
  display: flex;
}
div.news-hotcomments-comment img{
  height: 40px;
  width: 40px;
}
li.news-hotcomments{
  position: relative;
  padding-left: 13px;
  padding-right: 13px;
  border-bottom: 1px solid #F0F0F0;
  height: 80px;
}
ul{
  list-style: none;
  padding: 0px;
}
div.comment-area{
  position: absolute;
  right: 13px;
  top:0px;
}
li.news-hotcomments span{
  position: absolute;
  top:20px;
  left: 80px;
  font-size: 12px;
  color: #999999;
}
li.news-hotcomments ul li p{
  position: absolute;
  left: 80px;
}
li.news-hotcomments p.user-name{
  position: absolute;
  color: #999999;
  font-size: 12px;
  left: 80px;
}
p.comment-words{
  position: absolute;
  top:40px;
  left: 80px;
  color: #999999;
  font-size: 12px;
}
</style>
