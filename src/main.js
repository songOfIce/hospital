import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

Vue.config.productionTip = false

import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'
import {Header,Swipe,SwipeItem,Button} from "mint-ui"
Vue.component(Header.name,Header)



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
