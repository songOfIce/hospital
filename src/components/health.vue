<template>
  <div>
    <div class="entries">
      <div class="entry-card">
        <div class="entry-card-item">
          <router-link to="">
          <img src="../../public/img/health/top-entry-health.png" alt="" class="entry-card-item-img">
          </router-link>
          <div class="entry-card-text">
            <router-link to="">
              <h5 class="">找号主 <img src="../../public/img/health/arrows.png" alt=""></h5>
              <p>看科普 找大咖</p>
            </router-link>
          </div>
        </div>
        <div class="entry-card-item">
          <router-link to="">
          <img src="../../public/img/health/top-entry-help.png" alt=""
          class="entry-card-item-img">
          </router-link>
          <div class="entry-card-text">
            <router-link to="">
              <h5 class="">大家帮 <img src="../../public/img/health/arrows.png" alt=""></h5>
              <p>提问题 解疑惑</p>
            </router-link>
          </div>
        </div>
      </div>
      <!-- modules -->
      <div class="modules">
        <ul>
          <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
           <li class="modules-list">
            <img src="../../public/img/health/module-type1.png" alt="">
            <router-link to=""><h6>就医互助</h6></router-link>
          </li>
        </ul>
      </div>
      <!-- text-type -->
      <div class="text-type">
        <ul class="text-list">
          <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>身边好微医</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
           <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>身边好微医</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
           <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>身边好微医</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
           <li class="text-item">
            <router-link to="">
              <i>#</i>
              <h6>身边好微医</h6>
              <span><img src="../../public/img/health/hot.png" alt=""></span>
            </router-link>
          </li>
        </ul>
      </div>
      <!-- 精选推荐/我的关注 -->
      <div class="sns">
        <div class="sns-tabbar">
          <p class="sns-tabbar-item">精选推荐</p>
          <p class="sns-tabbar-item">我的关注</p>
        </div>
        <div class="post">
        <div class="post-header">
          <img src="../../public/img/health/gdT27810879.jpg" alt="">
          <div class="user-name">
            <router-link to="">王玉宁|主治医师</router-link>
          </div>
          <span>4小时前</span>
          <div class="ask-entry">
            向TA提问
          </div>
        </div>
        <div class="post-content-block">
          <router-link to="">
            脚静脉曲张 站出来的慢性病
          </router-link>
          <div class="post-content">
            脚静脉曲张也称下肢静脉曲张，是指下肢浅表静脉发生扩张、延长、弯曲成团状，此病多见于中年男性，或长时间站立、负重的工作者。脚静脉曲张是一个恶性循环，当静脉中一个瓣膜坏掉，没法阻止血液倒流，血液积压在静脉
          </div>
        </div>
        </div>
      </div>
    </div>
    <div class="div-hr"></div>
  </div>
</template>

<script>
export default {};
</script>

<style>
div.entry-card {
  border: 1px solid #ffffff;
  box-shadow: 0px 0px 20px 30px #f6f6f7;
  border-radius: 10px;
  width: 90%;
  margin: 0 auto;
}
div.entries div.entry-card {
  display: flex;
  justify-content: space-around;
}
div.entry-card-item {
  display: flex;
  justify-content: space-between;
}
div.entry-card-item img {
  height: 78px;
  width: 60px;
}
div.entry-card-text h5 {
  margin-top: 20px;
  font-size: 18px;
  font-weight: 700;
  color: #28354c;
}
div.entry-card-text h5 img {
  height: 16px;
  width: 16px;
  vertical-align: middle;
}
/* modules */
div.modules ul {
  list-style: none;
  justify-content: space-between;
  display: flex;
  flex-wrap: wrap;
  text-align: center;
  padding: 0px;
}
div.modules ul li img {
  height: 48px;
  width: 48px;
}
div.modules ul li {
  width: 25%;
  margin-bottom: 10px;
}
/* 身边好微医 */
ul.text-list {
  list-style: none;
  display: flex;
  justify-content: space-between;
  padding: 0px;
  flex-wrap: wrap;
}
ul.text-list li.text-item {
  width: 50%;
}
li.text-item a {
  display: flex;
  justify-content: space-around;
}
li.text-item a img {
  margin-left: -40px;
}
li.text-item a i {
  margin-right: -40px;
  color: #d4d5db;
}
div.div-hr {
  width: 100%;
  height: 8px;
  background: #f5f6f6;
  display: block;
}
/* 精选推荐/我的关注 */
div.sns-tabbar {
  display: flex;
  justify-content: space-between;
  margin-left: 20px;
  margin-right: 20px;
}
/* post-header */
div.post-header {
}
</style>
