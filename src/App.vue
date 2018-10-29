<template>
  <div id="app-container">
    <div class="title">
      <h4>微医(挂号网)-互联网医院在线诊疗平台</h4>
      <hr>
    </div>
    <div>
      <header-box></header-box>
    </div>
      <router-view></router-view>
      <footer-box></footer-box>
  </div>
</template>

<script>
export default {};
</script>
<style>
div.title h4 {
  text-align: center;
  font-weight: lighter;
  padding-top: 10px;
  margin: 0px;
}
a{
  text-decoration: none;
  color: #5f697a;
}
input{
  border: 1px solid #EBECF1;
  outline: none;
  background:#EBECF1;
}
</style>
