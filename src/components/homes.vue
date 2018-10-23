<template>
  <div class="homes-section">
    <!-- 轮播图 -->
    <mt-swipe :auto="3000" class="homes-header-swipe">
      <mt-swipe-item v-for="hs of homeSwipe" :key="hs.index">
        <img :src="hs.img" alt="">
      </mt-swipe-item>
    </mt-swipe>
  <!-- wapper -->
  <div class="homes-header-wapper">
    <div>
      <span>
        <img src="../../public/img/home/tick.png" alt="">
      </span>
      <span class="homes-header-wapper-span">微医品质保障</span>
      </div>
    <div>
      <span>
        <img src="../../public/img/home/tick.png" alt="">
      </span>
      <span class="homes-header-wapper-span">100%正品</span>
      </div>
    <div>
      <span>
        <img src="../../public/img/home/tick.png" alt="">
      </span>
      <span class="homes-header-wapper-span">售后无忧</span>
      </div>
  </div>
  <!-- 导航栏 -->
  <div class="home-category-main">
    <router-link to="" v-for="nav of navigation" :key="nav.index">
      <img :src="nav.img" alt="">
      <p>{{nav.title}}</p>
    </router-link>
  </div>
  <!-- 火爆拼团 -->
  <div class="home-product">
    <router-link to="">
      <div>火爆拼团</div>
      <div>更多 ></div>
    </router-link>
  </div>
  <div class="home-product-product">
    <div class="home-product-item" v-for="item of product" :key="item.index" >
      <h3>{{item.title}}</h3>
      <div class="home-product-item-home">
      <div class="home-product-item-left">
        <p><big>¥{{item.price}}</big></p>
      <p class="home-product-item-one">2人团</p>
      </div>
      <div class="home-product-item-right">
      <img :src="item.img" alt="">
      </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
export default {
  data(){
    return {
      homeSwipe:[],
      navigation:[],
      product:[]
    }
  },
  created() {
    this.getdata();
  },
  methods: {
    getdata() {
      this.$axios.get("http://localhost:8080/abc").then(data => {
        this.homeSwipe = data.data.homeSwipe;
        this.navigation = data.data.navigation;
        this.product = data.data.product;
      })
    }
  }
}
</script>

<style>
 div.homes-header-swipe{
   height: 150px;
   width: 100%;
   text-align: center;
 }
 /* wapper */
 div.homes-header-wapper{
   display: flex;
   justify-content: space-around;
   color: #C6933B;
   font-size: 14px;
 }
 div.homes-header-wapper img{
   height: 13px;
   width: 12px;
   vertical-align: middle;
 }
 span.homes-header-wapper-span{
   margin-left: 5px;
 }
 /* 导航栏 */
 div.home-category-main{
   display: flex;
   justify-content: space-around;
   color: black;
   text-align: center;
   margin-top:20px;
 }
 div.home-category-main img{
   height: 30px;
   width: 33px;
 }
 div.home-category-main p{
   color: #28354c;
   font-size: 12px;
 }
 /* 火爆拼团 */
 div.home-product a{
   display:flex;
   justify-content: space-between;
   margin-left: 10px;
   margin-right: 10px;
   color: #83889A;
   font-size: 12px;
 }
 div.home-product-product{
   display: flex;
   justify-content:space-around;
   flex-wrap: wrap;
 }
 div.home-product-item{
   background: #F4F4F4;
   width: 49%;
 }
 div.home-product-item div.home-product-item-home{
   margin-left: 10px;
 }
div.home-product-item h3{
  color: #333333;
  font-size: 12px;
  margin: 10px;

}
div.home-product-item p.home-product-item-one{
  background: #E0A658;
  background-image:linear-gradient(left,#D39440 0%, #ECB770 100%);
  text-align: center;
  color: #FFFFFF;
  font-size: 12px;
  line-height: 21px;
  

}
div.home-product-item-home{
  display: flex;
  justify-content: space-between;
  font-size: 12px;
  margin: 10px;
}
div.home-product-item-right img{
  height: 90px;
  width: 90px;
}
div.home-product-item-left p big{
  font-size: 12px;
}
</style>
