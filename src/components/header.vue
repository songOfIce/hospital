<template>
  <!-- 搜索框 -->
  <div class="header">
    <div class="header_search">
      <div class="search">
        <i></i>
        <input type="text" placeholder="搜索医院,医生,科室,疾病">
      </div>
      <router-link to="">
        <span>
          <img src="../../public/img/index/health_coin.342179405b4b05d3f41774a1e9a58730.png">
        </span>
        <span class="header_text">
          签到
        </span>
      </router-link>
    </div>
  </div>
</template>
<script>
export default {
  name:"header-box"
};
</script>

<style>
div.header{
  display: flex;
  justify-content: space-around;
}
div.header_search input {
  width: 320px;
  height: 32px;
  border-radius: 30px;
  font-size: 14px;
}
div.header_search {
  width: 90%;
  display: flex;
  font-size: 14px;
  justify-content: space-around;
}
div.search{
  position: relative;
}
div.search i{
  background-image: url("../../public/img/index/search.png");
  width: 16px;
  height: 16px;
  display: block;
  position:absolute;
  top:8px;
  left:10px;
}
div.search input{
  padding-left:30px;
}
div.header_search span.header_text {
  color: #d8c29e;
}
div.header_search span.header_text{
  color: #D8C29E;
  font-size: 10px;
}
div.header_search span img {
  display: block;
  width: 25px;
  height: 17px;
}
div.home-main-entry--item {
  display: flex;
  justify-content: space-between;
  text-align: center;
}
div.home-main-entry--item a{
  width: 138px;
  height: 120px;
}
div.home-main-entry--item a p.home-main-entry--item-p{
  font-size: 20px;
  color: black;
  font-weight: 700;
}
div.home-main-entry--item a p.home-main-entry--item-description{
  font-size: 11px;
}
div.home-main-entry--item a img{
  width: 37px;
  height: 37px;
}

div.home-internet-hospital-top-entry img{
  width: 100%;
  height:87px;
}
</style>