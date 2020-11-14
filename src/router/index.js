import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Index from '../views/index.vue'
import Login from '../views/login.vue'
import Register from '../views/register.vue'
import Details from '../views/details.vue'

Vue.use(VueRouter)

const routes = [
  {path: '/',component: Home},
  {path:'/index',
   component:Index
  },
  {path:'/login',
  component:Login
 },
 {path:'/details',
  component:Details
  },
  {path:'/register',
  component:Register
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
