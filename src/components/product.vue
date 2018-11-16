<template>
  <div>
   <div class="product-preview-imges">
     <ul>
       <li><img src="../../public/img/product/52987_O1.jpg" alt=""></li>
     </ul>
   </div>
   <div class="product-info">
     <p class="product-name">康美（山药） 150g/瓶</p>
     <div class="product-price">
       <span class="product-price-one">32元</span>
       <span class="product-price-market">98元</span>
     </div>
   </div>
   <div class="div-hr"></div>
   <div class="product-intr">
     <p class="product-title">保健品说明书</p>
     <ul>
       <li><label for="">功能主治:</label><p>补脾养胃，生津益肺，用于脾虚食少</p></li>
       <li><label for="">规&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</label><p>150g/瓶</p></li>
       <li><label for="">用法用量:</label><p>15~30g</p></li>
       <li><label for="">有&nbsp;&nbsp;效&nbsp;&nbsp;期:</label><p>36个月</p></li>
       <li><label for="">执行标准:</label><p>《中国药典》2015年版</p></li>
       <li><label for="">批文准字:</label><p>1</p></li>
     </ul>
   <div class="div-hr"></div>
   </div>
   <div class="product-footer">
     <ul>
       <li>
        <router-link to="/home/shoppingcar">
           <img src="../../public/img/product/car.png" alt="">
        </router-link>
         <span class="product-car">0</span>
       </li>
       <li>
         <router-link to="">加入清单</router-link>
       </li>
       <li>
         <router-link to="">立即购买</router-link>
       </li>
     </ul>
   </div>
  </div>
</template>
<script>
export default {

}
</script>

<style scoped>
 div.product-preview-imges ul{
   list-style: none;
   padding: 0px;
   margin: 0px;
 }
 div.product-preview-imges{
   border-bottom: 1px solid #EEEEEE;
 }
 div.product-preview-imges ul li img{
   width: 100%;
 }
 div.product-info{
   width: 90%;
   margin: 0 auto;
 }
 div.product-intr p{
   text-align: center;
   height: 40px;
   line-height: 40px;
 }
 div.product-intr{
   border-bottom: 1px solid  #EEEEEE;
 }
 div.product-intr ul{
   list-style:none;
   padding: 0px;
 }
 div.product-intr ul li{
   font-size: 12px;
   display: flex;
   border-bottom:1px solid #EEEEEE;
 }
 div.product-intr ul li label{
   line-height: 40px;
   width: 60px;
   text-align: center;
 }
 div.product-info{
   font-size: 14px;
 }
 div.product-price{
   font-size: 24px;
 }
 div.product-price span:first-child{
   color: #FF695C;
 }
 div.product-price span:last-child{
   font-size: 14px;
 }
 div.product-intr p.product-title{
   font-size: 14px;
   border-bottom: 1px solid #EEEEEE;
 }
 div.product-footer{
   position:fixed;
   bottom: 0px;
   width: 100%;
   height: 50px;
   background: #FFFFFF;
   border-top:1px solid #EEEEEE;
   margin-top:10px;
   line-height: 50px;
 }
 div.product-footer ul{
    list-style: none;  
 }
 div.product-footer ul{
   display: flex;
   padding: 0px;
   margin: 0px;
 }
 div.product-footer ul li a img{
   height:30px;
   width:30px;
   margin-top:10px;
 }
 div.product-footer span.product-car{
   position: absolute;
   height: 16px;
   width: 16px;
   left:40px;
   top:5px;
   line-height: 16px;
   text-align: center;
   border-radius: 50%;
   font-size: 12px;
   color:#FFFFFF;
   background: #FF3C00;
 }
 div.product-footer ul li{
   border:1px solid #EEEEEE;
   width: 50%;
   text-align: center;
 }
 div.product-footer ul li:first-child{
   width: 20%;
 }
 div.product-footer ul li:last-child{
   background: #FEB70F;
 }
 div.product-footer ul li:last-child a{
    color: #FFFFFF;
 }
</style>
