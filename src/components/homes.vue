<template>
  <div class="homes-section">
    <header-box></header-box>
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
  <div class="div-hr"></div>
  <div class="home-category-main">
    <router-link to="" v-for="nav of navigation" :key="nav.index">
      <img :src="nav.img" alt="">
      <p>{{nav.title}}</p>
    </router-link>
  </div>
  <div class="div-hr"></div>
  <!-- 火爆拼团 -->
  <div class="home-product">
    <router-link to="">
      <div>火爆拼团</div>
      <div>更多 ></div>
    </router-link>
  </div>
  <div class="home-product-product" @click="getproduct()">
    <div class="home-product-item" v-for="item of product" :key="item.index">
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
    <!-- 新品首发 -->
   <div class="home-new-product">
    <router-link to="">
      <div>新品首发</div>
      <div>更多 ></div>
    </router-link>
  </div>
  <!-- 新品首发 -->
  <div class="goods-grid-item">
    <ul>
      <li v-for="item of productOne" :key="item.index">
        <router-link to="">
        <img :src="item.img2" alt="" class="goods-grid-img2">
        <p class="goods-subtitle">{{item.subtitle}}</p>
       <h3 class="goods-name">{{item.name}}</h3>
       <div class="price"><big>¥{{item.price}}</big></div>
      </router-link> 
      </li>
    </ul>
    <ul>
      <li></li>
    </ul>
  </div>
  <!-- 分类推荐 -->
  <div class="block-title-top">
    分类推荐
  </div>
  <div class="wrapper">
  <div class="category-wrapper" v-for="item of wrapper" :key="item.index">
  <router-link to="">
    <img :src="item.img" alt="">
    <p class="category-name">{{item.title}}</p>
  </router-link>
  </div>
  </div>
  <footer-box></footer-box>
  </div>
</template>
<script>
import Footer from './footer.vue';
import Header from './header.vue';
export default {
  components:{
    FooterBox:Footer,
    HeaderBox:Header
  },
  data(){
    return {
      homeSwipe:[],
      navigation:[],
      product:[],
      productOne:[],
      wrapper:[]
    }
  },
  created() {
    this.getdata();
  },
  methods: {
    getproduct(){
      this.$router.push({path:"/home/product"})
    },
    getdata() {
      this.$axios.get("http://localhost:5050/homeSwipe").then(data => {
        this.homeSwipe = data.data;
      });
       this.$axios.get("http://localhost:5050/navigation").then(data => {
        this.navigation = data.data;
      });
      this.$axios.get("http://localhost:5050/product").then(data => {
        this.product = data.data;
      });
      this.$axios.get("http://localhost:5050/productOne").then(data => {
        this.productOne = data.data;
      });
      this.$axios.get("http://localhost:5050/wrapper").then(data => {
        this.wrapper = data.data;
      });
    }
  }
}
</script>

<style>
*{
  box-sizing: border-box;
}
 div.homes-header-swipe{
   height: 150px;
   width: 100%;
   text-align: center;
 }
 div.homes-header-swipe img{
   width: 370px;
   height: 150px;
 }
 /* wapper */
 div.homes-header-wapper{
   display: flex;
   justify-content: space-around;
   color: #C6933B;
   font-size: 14px;
   margin-top:10px;
   margin-bottom: 10px;
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
   margin-bottom: 20px;
 }
 div.home-category-main a img{
   width: 33px;
   height: 36px;
 }
 div.home-category-main img:last-child{
   position: relative;
   right: 0px;
   height: 30px;
   width: 33px;
 }
 div.home-category-main p{
   color: #28354c;
   font-size: 12px;
 }
 /* 火爆拼团 */
 div.home-product{
   margin-top:20px;
 }
 div.home-product a{
   display:flex;
   justify-content: space-between;
   margin-left: 10px;
   margin-right: 10px;
   color: #83889A;
   font-size: 14px;
 }
 div.home-product-product{
   display: flex;
   justify-content:space-around;
   flex-wrap: wrap;
   width: 90%;
   margin: 0 auto;
 }
 div.home-product-item{
   background: #F4F4F4;
   width: 48%;
   margin-bottom: 5px;
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
  padding-left: 5px;
  padding-right: 5px;
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
div.home-new-product{
  height: 20px;
}
div.home-new-product a{
   display:flex;
   justify-content: space-between;
   margin-left: 10px;
   margin-right: 10px;
   color: #83889A;
   font-size: 14px;
}
/* 新品首发 */
div.goods-grid-item img.goods-grid-img1{
  position: absolute;
  right: 0px;
  width: 50px;
  height: 50px;
}
div.goods-grid-item{
  width: 90%;
  margin: 0 auto;
}
div.goods-grid-item img.goods-grid-img2{
  width: 162px;
  height: 151px;
}
div.block-title-top{
  color:#83889A;
}
div.goods-grid-item p.goods-subtitle,h3.goods-name{
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 12px;
}
div.goods-grid-item h3.goods-name{
      color: #28354c;
      font-weight: 400;
}
div.goods-grid-item p.goods-subtitle{
  background: #FAF5EE;
}
div.goods-grid-item ul{
  list-style: none;
  display: flex;
  justify-content: space-between;
  padding: 0px;
  text-align: center;
  flex-wrap: wrap;
}
div.goods-grid-item ul li{
  width: 48%;
  position: relative;
  background: #FFFFFF;
  
}
div.goods-grid-item div.price{
  font-size: 14px;
  color: #ff695c;
}
/* 分类推荐 */
div.block-title-top{
  width: 90%;
  margin: 0 auto;
}
div.wrapper{
  display: flex;
  justify-content: space-between;
  width: 90%;
  margin:0 auto;
  height: 200px;
  text-align: center;
}
p.category-name{
  font-size: 14px;
}
div.block-title-top{
  font-size: 14px;
}
div.category-wrapper img{
  height: 77px;
  width: 77px;
}
</style>
