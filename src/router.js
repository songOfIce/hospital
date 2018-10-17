import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import index from './components/index.vue'
import home from './components/home.vue'
import health from './components/health.vue'
import { Header } from 'mint-ui';
Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path:'/home/index',
      component:index
    },
    {
      path:'/home/health',
      component:home
    }
  ]
})
