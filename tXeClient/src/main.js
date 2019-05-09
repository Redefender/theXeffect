import Vue from 'vue';
import App from './App.vue';
import axios from 'axios';
import VueAxios from 'vue-axios';

Vue.prototype.$axios = axios
Vue.config.productionTip = true;

Vue.prototype.$http = VueAxios
new Vue({
    render: h => h(App),

}).$mount('#app');
