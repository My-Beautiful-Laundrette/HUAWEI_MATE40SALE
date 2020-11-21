import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import qs from 'qs'



// 全局导入axios组件
import axios from 'axios'
axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.prototype.axios = axios;
Vue.config.productionTip = false


//1.全局导入Mintui组件和样式,注册为VUE组件 
import MintUI from 'mint-ui';
import 'mint-ui/lib/style.min.css';
Vue.use(MintUI);


//2.全局引入Mutui组件和样式,注册为VUE组件
import NutUI from '@nutui/nutui';
import '@nutui/nutui/dist/nutui.css';
NutUI.install(Vue);


//全局导入VUE无限滚动组件
import infiniteScroll from 'vue-infinite-scroll'
Vue.use(infiniteScroll);


// 全局导入时间戳组件
import moment from 'moment';
Vue.prototype.moment = moment;








// 设置页面浏览器选项卡标题
Vue.directive('title', {
  inserted: function (el, binding) {
    document.title = el.dataset.title
  }
});



// 让页脚变成全局组件
import Footer from "./components/Footer" 
Vue.component("Mete-footer",Footer);



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
