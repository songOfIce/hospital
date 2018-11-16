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
      <div class="cart-right">
        <router-link to="">去结算</router-link>
      </div>
      </li>
      </ul>
    </footer>
  </div>
</template>

<script>
export default {

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
div.cart-footer span.cart-spanone{
  position: absolute;
  height: 22px;
  width: 22px;
  left: 13px;
  bottom: 13px;
  border:1px solid #DADDE2;
  border-radius: 50%;
  text-align: center;
}
div.cart-footer-center ul{
  list-style: none;
}
</style>
