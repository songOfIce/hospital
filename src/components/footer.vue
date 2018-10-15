<template>
  <div class="footer">
    <hr>
     <div class="footer-nav">
     <router-link to="">
       <i></i>
       <p>微医</p>
     </router-link>
     <router-link to="">
       <i></i>
       <p>严选</p>
     </router-link>
     <router-link to="">
       <i></i>
       <p>健康</p>
     </router-link>
     <router-link to="">
       <i></i>
       <p>发现</p>
     </router-link>
     <router-link to="">
       <i></i>
       <p>我</p>
     </router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      list: []
    };
  }
};
</script>
<style>
div.footer {
  background: #ffffff;
  bottom: 0;
  position: fixed;
  width: 100%;
}
div.footer-nav a:first-child i{
  display: block;
  background-image:url("../../public/img/index/icon-index.8aeffb3264672ce94806c8cfb50447d1.png");
  background-size: 25px 38px;
  width: 25px;
  height: 19px;
}
div.footer-nav a p:active{
  color: #5896FF;
}
div.footer-nav a p{
  margin-top: 2px;
  margin-bottom: 0px;
  font-size: 10px;
}
div.footer-nav a:nth-child(2) i{
  display: block;
  background-image:url("../../public/img/index/icon-yanxuan.09592c1a749670089e3497e61b1cd8b5.png");
  background-size: 25px 38px;
  width: 25px;
  height: 19px;
}
div.footer-nav a:nth-child(3) i{
  display: block;
  background-image:url("../../public/img/index/icon-yyt.5b2a0ecc3edbdf99b83539ab1d13dc39.png");
  background-size: 25px 38px;
  width: 25px;
  height: 19px;
}
div.footer-nav a:nth-child(4) i{
  display: block;
  background-image:url("../../public/img/index/icon-find.05ec7e495ccefa197787f82578d3ddd8.png");
  background-size: 25px 38px;
  width: 25px;
  height: 19px;
}
div.footer-nav a:last-child i{
  display: block;
  background-image:url("../../public/img/index/icon-mine.f4d9c2218dff16e1e47df88c467cf2ed.png");
  background-size: 25px 38px;
  width: 25px;
  height: 19px;
}
div.footer-nav{
  display: flex;
  justify-content: space-around;
  text-align: center;
}
</style>
