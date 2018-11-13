<template>
  <div id="app-container">
    <keep-alive>
      <router-view class="app-view" v-if="$route.meta.keepAlive"></router-view>    
    </keep-alive>
    <router-view v-if="!$route.meta.keepAlive"></router-view>
  </div>
</template>

<script>
export default {};
</script>
<style>
body{
  margin: 0px !important;
}
h3{
  margin: 0px;
}
div.title h4 {
  text-align: center;
  font-weight: lighter;
  padding-top: 10px;
  margin: 0px;
}
a{
  text-decoration: none;
  color: #5f697a;
  -webkit-tap-highlight-color: transparent;
}
input{
  border: 1px solid #EBECF1;
  outline: none;
  background:#EBECF1;
}
</style>
