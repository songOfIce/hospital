<template>
  <div class="comment-footer">
    <div class="textarea-box">
      <i class="up-no"></i>
      <form action="">
        <router-link :to="!uname?'/home/myselflogin':''">
        <textarea name="" id="" cols="50" rows="5" placeholder="评论一下" v-model="comments"></textarea>
        <mt-button type="primary" size="large" @click="getcomments()">发表评论</mt-button>
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
      uname:sessionStorage['username'],
      img:[]
    }
  },
  created() {
    if(this.uname){
    this.personage();
    }
  },
  methods:{
    getcomments(){
      this.$axios.post("http://localhost:5050/savecomment",`pid=${this.pid}&hotcommentsimg=${this.img}&hotcommentsuser=${this.uname}&hotcommentwords=${this.comments}`).then(res=>{
        this.res = res.data;
      })
    },
    personage(){
      this.$axios.post("http://localhost:5050/personage",`username=${this.uname}`).then(res=>{
        this.res = res.data;
        this.img=this.res[0].img;
      })
    },
}
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
