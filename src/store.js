import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    // 共享数据
    index:false
  },
  mutations: {
    // 操作共享数据
      getgiveone(state){
        state.index = !state.index
      }
  },
  getters:{
    //获得并监听数据的方法
    storeIndex:function(state){
      return state.index;
    }
  },
  actions: {

  }
})
