<template>
  <div class="comment-footer">
    <div class="textarea-box">
      <i class="up-no"></i>
      <form action="">
        <router-link :to="!uname?'/home/myselflogin':''">
        <textarea name="" id="" cols="50" rows="5" placeholder="评论一下" ></textarea>
        <mt-button type="primary" size="large">发表评论</mt-button>
        </router-link>
      </form>
    </div>
    <div class="comment-total">
      <img src="" alt="">
    </div>
  </div>
</template>

<script>
export default {
  props:["pid"],
  data(){
    return{
      comments:[],
      uname:sessionStorage['username']
    }
  },
  created() {
    console.log(this.pid);
  },
}
</script>

<style>
  div.comment-footer{
    text-align: center;
  }
  button.mint-button-text{
    width: 200px;
  }
</style>
