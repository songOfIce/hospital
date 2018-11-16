import Vue from 'vue'
import Router from 'vue-router'
import index from './components/index.vue'
import homes from './components/homes.vue'
import health from './components/health.vue'
import myselflogin from './components/myselflogin.vue'
import discover from './components/discover.vue'
import myselfregister from './components/myselfregister.vue'
import news from './components/news.vue'
import personage from './components/personage.vue'
import search from './components/search.vue'
import product from './components/product.vue'
import shoppingcar from './components/shopping/shoppingcar.vue'
import shopping from './components/shopping/shopping.vue'
Vue.use(Router)

export default new Router({
  // mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path:'/',
      component:index,
       meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/homes',
      component: homes,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/index',
      component:index,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/health',
      component:health,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/myselflogin',
      component:myselflogin,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/myselfregister',
      component:myselfregister,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/discover',
      component:discover,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/news',
      component:news,
      meta:{
        keepAlive:false
      }
    },
     {
      path:'/home/personage',
      component:personage,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/search',
      component:search,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/product',
      component:product,
      meta:{
        keepAlive:false
      }
    },
    {
      path:'/home/shoppingcar',
      component:shoppingcar,
      meta:{
        keepAlive:false
      }
    },
     {
      path:'/home/shopping',
      component:shopping,
      meta:{
        keepAlive:false
      }
    }
  ]
})
