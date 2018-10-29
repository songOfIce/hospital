import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Axios from 'axios'
import Mock from './mock'
Vue.config.productionTip = false
Vue.prototype.$axios = Axios;
import "mint-ui/lib/style.css"
import Footer from './components/footer.vue'
import Header from './components/header.vue'
import { Swipe, SwipeItem} from 'mint-ui'
Vue.component(Footer.name,Footer)
Vue.component(Header.name,Header)
Vue.component(Swipe.name,Swipe)
Vue.component(SwipeItem.name,SwipeItem)



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
