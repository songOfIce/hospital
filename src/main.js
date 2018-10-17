import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

Vue.config.productionTip = false

import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'
import Footer from './components/footer.vue'
import Header from './components/header.vue'
Vue.component(Footer.name,Footer)
Vue.component(Header.name,Header)



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
