<template>
  <div>
    <div class="shoppingcar-header">
      <div class="shoppingcar-span">
        <span></span>
      </div>
      <div class="shoppingcar-right">
      <div class="shoppingcar-img">
        <img src="../../../public/img/product/52987_O1.jpg" alt="">
      </div>
      <div class="shoppingcar-info">
        <div>康美 当归（头） 100g/瓶</div>
        <span class="shoppingcar-title">
          保健品
        </span>
        <div class="shoppingcar-price">
          <span>29元</span>
          <span>98元</span>
        </div>
        <div class="shoppingcar-num">
          <div>
            <button>-</button>
              <input type="text" value="1">
            <button>+</button>
          </div>
          <div class="shoppingcar-del">
            <router-link to="/home/shopping">
            <img src="../../../public/img/product/dustbin.png" alt="">
            </router-link>
          </div>
          <div class="">
          </div>
        </div>
      </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
div.shoppingcar-header{
  display: flex;
  justify-content: space-between;
  padding: 10px;
  border-bottom: 1px solid #EEEEEE;
}
div.shoppingcar-span{
  position: relative;
}
div.shoppingcar-span span{
  position: absolute;
  height: 22px;
  width: 22px;
  left:10px;
  top:35px;
  border:1px solid #DADDE2;
  border-radius: 50%;
}
div.shoppingcar-img img{
  height: 100px;
  width: 100px; 
}
div.shoppingcar-right{
  display: flex;
  justify-content: space-between;
  width: 300px;
}
div.shoppingcar-info div{
  font-size: 14px;
}
div.shoppingcar-info{
  width: 200px;
}
div.shoppingcar-info span.shoppingcar-title{
  color: #D6B681;
  border:1px solid #D6B681;
  border-radius: 20px;
  font-size: 5px;
  padding-left: 5px;
  padding-right: 5px;
}
div.shoppingcar-price span:last-child{
  text-decoration: line-through;
  margin-left: 10px;
  font-size: 10px;
}
div.shoppingcar-price span:first-child{
  color: #FF695C;
}
div.shoppingcar-num input{
  height: 24px;
  width: 50px;
  text-align: center;
  margin-left: 10px;
  margin-right: 10px;
}
div.shoppingcar-num{
  display: flex;
  justify-content: space-between;
}
div.shoppingcar-num div.shoppingcar-del img{
  height: 20px;
  width: 22px;
}
div.shoppingcar-num button{
  background: #F0F0F0;
  border:0px solid #ADADAD;
  outline: none;
  height: 24px;
  width: 25px;
}
</style>
