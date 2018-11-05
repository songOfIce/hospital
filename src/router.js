import Vue from 'vue'
import Router from 'vue-router'
import index from './components/index.vue'
import homes from './components/homes.vue'
import health from './components/health.vue'
import myselflogin from './components/myselflogin.vue'
import discover from './components/discover.vue'
import myselfregister from './components/myselfregister.vue'
import news from './components/news.vue'
import personage from './components/personage'
Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path:'/home/homes',
      component: homes
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
      path:'/home/myselflogin',
      component:myselflogin
    },
    {
      path:'/home/myselfregister',
      component:myselfregister
    },
    {
      path:'/home/discover',
      component:discover
    },
    {
      path:'/home/news',
      component:news
    },
     {
      path:'/home/personage',
      component:personage
    },
  ]
})
