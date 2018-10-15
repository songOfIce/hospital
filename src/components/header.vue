<template>
  <!-- 搜索框 -->
  <div class="header_search">
    <div class="search">
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
  <!-- 挂号,医生 -->
  <div>
    
  </div>

  </div>
</template>
<script>
export default {};
</script>

<style>
div.header_search input {
  width: 350px;
  height: 32px;
  border-radius: 30px;
  font-size: 14px;
}
div.header_search {
  display: flex;
  font-size: 14px;
  justify-content: space-around;
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
</style>
