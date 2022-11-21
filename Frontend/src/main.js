import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import {ApiUrl} from "./environments"
import axios from "axios"
import VueAxios from 'vue-axios'
console.log(process.env)
axios.defaults.baseURL=ApiUrl;

Vue.config.productionTip = false

Vue.use(VueAxios, axios)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
