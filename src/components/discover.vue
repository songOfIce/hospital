<template>
  <div>
    <div class="go-find-container">
      <div class="tab-find">
        <ul>
          <li><div class="tab-text">资讯</div></li>
          <li><div class="tab-text">工具</div></li>
        </ul>
      </div>
    </div>
    <!-- 资讯 -->
    <div class="body" v-for="item of discover" :key="item.index" @click="getpid(item.pid)">
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
    <!-- policy -->
    <footer-box></footer-box>
  </div>
</template>
<script>
import Footer from './footer.vue';
export default {
components:{
  FooterBox:Footer
},
  data(){
    return {
      discover:[],
      pid:[]
    }
  },
  created() {
    this.getHealth();
  },
  methods:{
    getHealth(){
      this.$axios.get("http://localhost:5050/discover").then(data=>{
        this.discover = data.data;
      })
    },
    getpid(pid){
      this.pid=pid;
      sessionStorage.setItem("pid",this.pid);
      this.$router.push({path:"/home/news"});
    }
  }
}
</script>

<style scoped>
div.tab-find{
  width: 100%;
  margin: 0 auto;
  height: 40px;
  line-height: 40px;
  position: fixed;
  z-index: 1;
  background: #ffffff;
  top:0px;
  box-shadow: 0px 0px 5px 5px #F8F8F8;
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
