<template>
<div>
<div class="news-hot">
    <ul>
      <li class="news-hotcomments" v-for="item of comment" :key="item.index">       
            <comgive :item="item"></comgive>
      </li>
    </ul>
</div>
  <div class="comment-footer">
    <div class="textarea-box">
      <i class="up-i"><img src="../../../public/img/details/pencil.png" alt=""></i>
      <form action="">
        <router-link :to="!uname?'/home/myselflogin':''">
        <textarea name="" id="" cols="40" rows="1" placeholder="评论一下" v-model="comments"></textarea>
        <button @click="getcomments()">发送</button>
        </router-link>
      </form>
    </div>
</div>
</div>
</template>

<script>
import comgive from './give'
export default {
  components:{
    comgive:comgive
  },
  props:["pid"],
  data(){
    return{
      comment:[],
      give:0,
      comments:[],
      uname:sessionStorage['username'],
      img:[],
      result:[],
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
      this.$axios.post("http://localhost:5050/savecomment",`pid=${this.pid}&hotcommentsimg=${this.img}&hotcommentsuser=${this.uname}&hotcommentwords=${this.comments}&give=${this.give}`).then(res=>{
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
div.comment-area{
  background-image: url(../../../public/img/details/all-like.png);
  background-position:bottom;
  background-size: 18px 30px;
  height: 15px;
  width: 18px;
}
div.comment-area.active{
  background-position:top;
}
div.comment-total{
  margin-bottom: 0px;
}
div.comment-footer{
  width: 100%;
  position: fixed;
  bottom: -20px;
  text-align: center;
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
  right: 25px;
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
div.textarea-box{
  position: relative;
}
div.textarea-box textarea{
  border-radius: 20px;
  margin-bottom: -5px;
  border:1px solid #F9F9F9;
  padding-left:26px;
  outline: none;
}
div.comment-footer{
  height: 50px;
  border-top:1px solid #F2F2F2;
  background: #FFFFFF;
  line-height: 25px;
}
div.textarea-box button{
  border-radius: 20px;
  background: #83CDFF;
  outline: none;
  border:1px solid #83CDFF;
}
i.up-i img{
  height: 15px;
  width: 15px;
}
i.up-i{
  position: absolute;
  left:15px;
}
i.comment-user{
  position: absolute;
  right:-15px;
  font-style: normal;
  font-size: 14px;
  color: #6EB1EC;
}
</style>
