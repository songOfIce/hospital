<template>
  <div class="footer">
    <hr>
     <div class="footer-nav" >
     <router-link :to="link[i]" v-for="(p,i) in list" :key="i">
       <i :class="i==index?'active':' '"></i>
       <p>{{p}}</p>
     </router-link>
     <!-- <router-link to="/home/homes">
       <i></i>
       <p>严选</p>
     </router-link>
     <router-link to="/home/health">
       <i></i>
       <p>健康</p>
     </router-link>
     <router-link to="/home/discover">
       <i></i>
       <p>发现</p>
     </router-link>
     <router-link to="/home/myselflogin">
       <i></i>
       <p>我</p>
     </router-link> -->
    </div>
  </div>
</template>

<script>
export default {
  name:"footer-box",
  data() {
    return {
      list:["微医","严选","健康","发现","我"],
      link:["/home/index","/home/homes","/home/health","/home/discover","/home/myselflogin"],
      index:0
    };
  },
  created() {
    this.index=this.link.indexOf(this.$route.path)
  },
  methods:{

  }
};
</script>
<style>
div.footer {
  background: #ffffff;
  bottom: 0;
  position: fixed;
  width: 95%;
}
div.footer-nav a:first-child i{
  display: block;
  background-image:url("../../public/img/index/index1.png");
  background-size: 25px 22px;
  width: 25px;
  height: 22px;
}
div.footer-nav a:first-child i.active{
  background-image: url("../../public/img/index/index2.png");
}
div.footer-nav a p{
  margin-top: 2px;
  margin-bottom: 0px;
  font-size: 10px;
}
div.footer-nav a:nth-child(2) i{
  display: block;
  background-image:url("../../public/img/index/homes1.png");
  background-size: 25px 22px;
  width: 25px;
  height: 22px;
}
div.footer-nav a:nth-child(2) i.active{
  background-image: url("../../public/img/index/homes2.png");
}
div.footer-nav a:nth-child(3) i{
  display: block;
  background-image:url("../../public/img/index/jiankang1.png");
  background-size: 25px 22px;
  width: 25px;
  height: 22px;
}
div.footer-nav a:nth-child(3) i.active{
  background-image: url("../../public/img/index/jiankang2.png");
}
div.footer-nav a:nth-child(4) i{
  display: block;
  background-image:url("../../public/img/index/faxian1.png");
  background-size: 25px 22px;
  width: 25px;
  height: 22px;
}
div.footer-nav a:nth-child(4) i.active{
  background-image: url("../../public/img/index/faxian2.png");
}
div.footer-nav a:last-child i{
  display: block;
  background-image:url("../../public/img/index/myself1.png");
  background-size: 25px 22px;
  width: 25px;
  height: 22px;
}
div.footer-nav a:last-child i.active{
  background-image: url("../../public/img/index/myself2.png");
}
div.footer-nav{
  display: flex;
  justify-content: space-around;
  text-align: center;
}
</style>
