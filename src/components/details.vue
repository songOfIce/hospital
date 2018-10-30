<template>
  <div>
    <div class="details">
      <div class="swiper-slide" v-for="item of details" :key="item.index">
        <img :src="item.img" alt="">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      details:[]
    }
  },
  created() {
    this.getdetail();
  },
  methods:{
    getdetail (){
      this.$axios.get("http://localhost:8080/abc").then(data=>{
        this.details = data.data.details;
      })
    }
  }
}
</script>

<style>

</style>
