<template>
  <div>
    <div class="product-header">
      <router-link to="/home/homes"><img src="../../public/img/personage/back.png" alt=""></router-link>
      <h3>购物车(2)</h3>
    </div>
    <!-- product-top -->
    <div class="product-top">
      <ul>
        <li>
          <div class="product-left"><img src="../../public/img/product/check.png" alt=""></div>
          <div class="product-right">
            <img src="https://kano.guahao.cn/kn447624855" alt="">
            <div class="product-right-span">
              <span>【双11疯抢，买2包即送6包黑枸杞】谷生园 乌圣糕</span>
              <p></p>
            </div>
          </div>
        </li>
        <li></li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
  div.product-header {
  text-align: center;
  margin-top: -15px;
  position: fixed;
  width: 100%;
  height: 40px;
  line-height: 40px;
  background: #ffffff;
  z-index: 1;
}
div.product-header img{
  height: 20px;
  width: 20px;
  margin-top: 10px;
  margin-left: 13px;
}
div.product-header h3 {
  font-weight: 500;
}
div.product-header a {
  position: absolute;
  left: 0px;
}
/* product-top */
div.product-top{
  position: relative;
  top:40px;
  width: 90%;
  margin: 0 auto;
}
div.product-top ul{
  list-style: none;
  display: block;
  padding: 0px;
}
div.product-top ul li div.product-right{
  width: 22px;
  height: 22px;
}
div.product-right{
  display: flex;
  justify-content: space-between;
}
div.product-right img{
  height: 100px;
  width: 100px;
}
</style>
