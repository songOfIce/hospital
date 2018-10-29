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
    <div class="div-hr"></div>
    <div class="body" v-for="item of discover" :key="item.index">
      <section class="left-right-layout">
        <div>
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
      <span>健康资讯</span>
      <div class="health-footer-list">...</div>
    </div>
    <div class="div-hr"></div>
    </div>
    <!-- policy -->
  </div>
</template>

<script>
export default {
  data(){
    return {
      discover:[]
    }
  },
  created() {
    this.getHealth();
  },
  methods:{
    getHealth(){
      this.$axios.get("http://localhost:8080/abc").then(data=>{
        this.discover = data.data.discover;
      })
    }
  }
}
</script>

<style scoped>
div.tab-find{
  width: 90%;
  margin: 0 auto;
}
div.tab-find ul{
  display: flex;
  justify-content: space-around;
  list-style: none;
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
</style>
