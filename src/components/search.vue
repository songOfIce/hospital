<template>
<div>
   <div class="title">
      <h4>微医(挂号网)-互联网医院在线诊疗平台</h4>
      <hr>
    </div>
  <!-- 搜索框 -->
  <div class="header">
    <div class="header_search">
      <div class="search">
        <i></i>
        <input type="text" placeholder="搜索医院,医生,科室,疾病,资讯" v-model="key">
      </div>
      <router-link to="/home/index">
        <span class="header_cancel">
          取消
        </span>
      </router-link>
    </div>
  </div>
   <div class="body" v-for="item of discover" :key="item.index" @click="getpid(item.pid)" v-if="discover[0]">
      <section class="left-right-layout">
        <div class="left-title">
          <p class="title">
            {{item.title}}
          </p>
          <p class="description">{{item.description}}</p>
        </div>
        <div class="right-right-img">
          <img :src="item.img" alt="">
        </div>
      </section>  
    <!-- 健康资讯 -->
    <div class="health-footer">
      <span>{{item.titleconsult}}</span>
      <div class="health-footer-list">...</div>
    </div>
    <div class="div-hr"></div>
    </div>
  </div>
</template>
<script>
export default {
  name:"header-box",
  data(){
    return{
      discover:[],
      key:"",
      
    }
  },
  methods:{
    getdata(){
      this.$axios.get("http://localhost:5050/search?key="+this.key).then(data=>{
        this.discover = data.data;
        if(this.discover == 301){
          this.discover=[];
          return;
        }
      })
    },
    getpid(pid){
      this.pid=pid;
      sessionStorage.setItem("pid",this.pid);
      this.$router.push({path:"/home/news"});
    }
  },
  watch:{
    "key":"getdata"
  }
};
</script>
<style scoped>
div.header{
  display: flex;
  justify-content: space-around;
  margin-bottom: 10px;
}
div.header_search input {
  width: 320px;
  height: 32px;
  border-radius: 30px;
  font-size: 14px;
}
div.header_search {
  display: flex;
  font-size: 14px;
  justify-content: space-around;
}
div.search{
  position: relative;
}
div.search i{
  background-image: url("../../public/img/index/search.png");
  width: 16px;
  height: 16px;
  display: block;
  position:absolute;
  top:8px;
  left:10px;
}
span.header_cancel{
  height: 32px;
  line-height: 32px;
}
div.search input{
  padding-left:30px;
}
div.header_search span.header_text{
  color: #D8C29E;
  font-size: 10px;
}
div.header_search span img {
  display: block;
  width: 25px;
  height: 17px;
}
div.home-main-entry--item {
  display: flex;
  justify-content: space-between;
  text-align: center;
}
div.home-main-entry--item a{
  width: 138px;
  height: 120px;
}
div.home-main-entry--item a p.home-main-entry--item-p{
  font-size: 20px;
  color: black;
  font-weight: 700;
}
div.home-main-entry--item a p.home-main-entry--item-description{
  font-size: 11px;
}
div.home-main-entry--item a img{
  width: 37px;
  height: 37px;
}

div.home-internet-hospital-top-entry img{
  width: 100%;
  height:87px;
}
div.body{
  margin-top:60px;
}
div.tab-find ul{
  display: flex;
  justify-content: space-around;
  list-style: none;
  padding: 0px;
}
div.tab-find ul{
  margin: 0px;
  margin-bottom: 10px;
}
section.left-right-layout{
  display: flex;
  justify-content: space-between;
  width: 90%;
  margin: 0 auto;
  margin-top:10px;
  margin-bottom: 10px;
}
section.left-right-layout div.right-right-img img{
  height: 75px;
  width: 100px;
}
div.health-footer{
  display: flex;
  justify-content: space-between;
  width: 90%;
  margin: 0 auto;
  margin-top:10px;
  margin-bottom: 10px;
}
div.health-footer{
  font-size: 14px;
}
div.left-title{
  width: 60%;
}
p.title{ 
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 14px;
  font-weight: 900;
}
p.description{
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 14px;
}
</style>