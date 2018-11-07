<template>
<div>
<div class="news-hot">
    <ul>
      <li class="news-hotcomments" v-for="item of comment" :key="item.index">
        <div class="news-hotcomments-comment">
          <img :src="item.hotcommentsimg" alt="">
          <p class="user-name">{{item.hotcommentsuser}}</p>
        </div>
        <div class="comment-area">
          <img src="../../public/img/details/hot-comment.png" alt="">
        </div>
        <span class="city">不限 {{item.hotcity}}</span>
        <p class="comment-words">{{item.hotcommentwords}}</p>
      </li>
    </ul>
</div>
  <div class="comment-footer">
    <div class="textarea-box">
      <i class="up-no"></i>
      <form action="">
        <router-link :to="!uname?'/home/myselflogin':''">
        <textarea name="" id="" cols="50" rows="2" placeholder="评论一下" v-model="comments"></textarea>
        <mt-button type="primary" size="large" @click="getcomments()">发表评论</mt-button>
        </router-link>
      </form>
    </div>
    <div class="comment-total">
      <img src="" alt="">
    </div>
</div>
</div>
</template>

<script>
export default {
  props:["pid"],
  data(){
    return{
      comment:[],
      comments:[],
      uname:sessionStorage['username'],
      img:[],
      result:[]
    }
  },
  created() {
    this.getcomment();  
    if(this.uname){
    this.personage();
    }
  },
  methods:{
    getcomments(){
      this.$axios.post("http://localhost:5050/savecomment",`pid=${this.pid}&hotcommentsimg=${this.img}&hotcommentsuser=${this.uname}&hotcommentwords=${this.comments}`).then(res=>{
        this.result = res.data;
        if(this.result.code==1){
          this.getcomment();
          this.comments="";
          this.$toast({
            message:this.result.msg,
            postion:"middle",
            duration:3000
          })
        }else{
          this.$toast({
            message:this.result.msg,
            postion:"middle",
            duration:3000 
          })
        }
      })
    },
    personage(){
      this.$axios.post("http://localhost:5050/personage",`username=${this.uname}`).then(res=>{
        this.res = res.data;
        this.img=this.res[0].img;
      })
    },
     getcomment(){
      this.$axios.post("http://localhost:5050/comment",`pid=${this.pid}`).then(res=>{
        this.comment = res.data;
      })
    },
}
}
</script>

<style scoped>
div.news-hot{
  margin-bottom: 100px;
}
div.comment-area img{
  height: 18px;
  width: 18px;
}
div.comment-footer{
  text-align: center;
  }
div.comment-total{
  margin-bottom: 0px;
}
  div.comment-footer{
    width: 100%;
    position: fixed;
    bottom: -20px;
  }
  div.news-hotcomments-comment{
  display: flex;
}
div.news-hotcomments-comment img{
  height: 40px;
  width: 40px;
  border-radius: 50%;
}
li.news-hotcomments{
  position: relative;
  padding-left: 13px;
  padding-right: 13px;
  border-bottom: 1px solid #F0F0F0;
  height: 80px;
}
ul{
  list-style: none;
  padding: 0px;
}
div.comment-area{
  position: absolute;
  right: 13px;
  top:0px;
}
li.news-hotcomments span{
  position: absolute;
  top:20px;
  left: 80px;
  font-size: 12px;
  color: #999999;
}
li.news-hotcomments ul li p{
  position: absolute;
  left: 80px;
}
li.news-hotcomments p.user-name{
  position: absolute;
  color: #999999;
  font-size: 12px;
  left: 80px;
}
p.comment-words{
  position: absolute;
  top:40px;
  left: 80px;
  color: #999999;
  font-size: 12px;
}
</style>
