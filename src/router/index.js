import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Index from '../views/index.vue'
import Login from '../views/login.vue'

Vue.use(VueRouter)

const routes = [
  {path: '/',component: Home},
  {path:'/index',component:Index},
  {path:'/login',component:Login},

  //设置懒加载页面
  {
    path: '/home',
    // route level code-splitting
    // this generates a separate chunk (home.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "home" */ '../views/Home.vue')
  } 
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
}) 

export default router
