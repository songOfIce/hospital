import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Axios from 'axios'
import Mock from './mock'
Vue.config.productionTip = false
Vue.prototype.$axios = Axios;
import "mint-ui/lib/style.css"
import { Swipe, SwipeItem} from 'mint-ui'
// 引入toast组件
import{Toast} from 'mint-ui'
Vue.component(Swipe.name,Swipe)
Vue.component(SwipeItem.name,SwipeItem)
Vue.component(Toast.name,Toast)



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
