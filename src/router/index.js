import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Mine from '../views/Mine.vue'
import Index from '../views/index.vue'
import Login from '../views/login.vue'
import Register from '../views/register.vue'
import Details from '../views/details.vue'
import Mate_404 from '../views/mate_404.vue'
import Category from '../views/category'
import Ce from '../views/Ce'

Vue.use(VueRouter)

const routes = [
  {path: '/',component: Home},
  {path:'/index',component:Index},
  {path:'/login',component:Login},
  {path:'/details',component:Details},
  {path:'/register',component:Register},
  {path: '/about',name:'About',},
  {path: '/mine',component: Mine},
  {path: '*',component: Mate_404},

  {path: '/ce',component: Ce},
  {path: '/category',component:Category},

  //首页懒加载
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
