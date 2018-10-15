<template>
  <div id="app-container">
    <div class="title">
      <h4>微医(挂号网)-互联网医院在线诊疗平台</h4>
      <hr>
    </div>
    <div>
      <header-box></header-box>
    </div>
    <footer-box></footer-box>
  </div>
</template>

<script>
import footer from './components/footer.vue'
import Header from './components/header.vue'
export default{
  components:{
    "footer-box":footer,
    "header-box":Header,
  }
  }
</script>
<style>
  div.title h4{
    text-align: center;
    font-weight: lighter;
    padding-top: 10px;
  }
  #app-container{
    background: #FFFFFF;
  }
</style>
