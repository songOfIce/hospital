<template>
  <div class="news-hotcomments">
    <div class="news-hotcomments-comment">
          <img :src="item.hotcommentsimg" alt="">
          <p class="user-name">{{item.hotcommentsuser}}</p>
        </div>
        <div class="comment-area" :class="index?'active':''" @click="getgive(item.id,item.give)">
          <i class="comment-user">{{item.give}}</i>
        </div>
        <span class="city">不限 {{item.hotcity}}</span>
        <p class="comment-words">{{item.hotcommentwords}}</p>
  </div>
</template>

<script>
export default {
  props:["item"],
  data(){
    return {
      index:false
    }
  },
  // 点击时添加active
  methods:{
    getgive(id, give){
      this.index = !this.index
      if(this.index){
         this.item.give = parseInt(this.item.give)+1;
          this.$axios.get("http://localhost:5050/give?give="+this.item.give+"&id="+id).then(data=>{
          })
      }else{
        this.item.give = parseInt(this.item.give)-1;
        this.$axios.get("http://localhost:5050/give?give="+this.item.give+"&id="+id).then(data=>{
        })
      }
    }
  }
};
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
