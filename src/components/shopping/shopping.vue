<template>
  <div>
    <footer class="cart-footer-car">
      <ul>
      <li class="cart-footer">
        <span class="cart-spanone"></span>
        <span class="cart-spantwo">全选</span>
      </li>
      <li class="cart-footer-center">
        合计:
        <span>0</span>
        元
      </li>
      <li class="cart-right">
        <router-link to="">去结算</router-link>
      </li> 
      </ul>
    </footer>
  </div>
</template>

<script>
export default {
  data(){
    return {
      index:""
    }
  },
  methods:{
    
  }
}
</script>

<style scoped>
footer.cart-footer-car{
  position: fixed;
  bottom: 0px;
  width: 100%;
  display: flex;
  justify-content: space-between;
  height: 50px;
  border-top:1px solid #F7F7F8;
  line-height: 50px;
}
li.cart-footer span.cart-spanone{
  position: absolute;
  height: 22px;
  width: 22px;
  left: 13px;
  bottom: 13px;
  border:1px solid #DADDE2;
  border-radius: 50%;
  text-align: center;
}
li.cart-footer span.cart-spanone.active{
  background-image: url(../../../public/img/product/check.png);
  background-size: 22px 22px;
  background-repeat:no-repeat;
  background-position: top;
  height: 22px;
  width: 22px;
}
li.cart-footer span.cart-spantwo{
  position: absolute;
  left: 40px;
}
li.cart-footer{
  display: flex;
  justify-content: space-between;
  text-align: center;
}
ul{
  list-style: none;
  padding: 0px;
  display: flex;
  justify-content: space-between;
  margin: 0px;
  width: 100%;
}
ul li{
  width: 50%;
  text-align: center;
}
footer.cart-footer-car ul li:last-child{
  background: #FEB70F;
}
footer.cart-footer-car ul li:nth-child(2) span{
  color: #FF695C;
  font-size: 20px;
}
footer.cart-footer-car ul li:last-child a{
  color: #FFFFFF;
}
</style>
