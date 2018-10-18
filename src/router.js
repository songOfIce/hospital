import Vue from 'vue'
import Router from 'vue-router'
import index from './components/index.vue'
import home from './components/home.vue'
import health from './components/health.vue'
import myself from './components/myself.vue'
import discover from './components/discover.vue'
Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: home
    },
    {
      path:'/home/index',
      component:index
    },
    {
      path:'/home/health',
      component:health
    },
    {
      path:'/home/myself',
      component:myself
    },
    {
      path:'/home/discover',
      component:discover
    }
  ]
})
