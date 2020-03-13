import Vue from 'vue'
import App from './App.vue'
import { BootstrapVue, IconsPlugin, CardPlugin } from 'bootstrap-vue'

Vue.config.productionTip = false

// Cria nova Vue
new Vue({
  render: h => h(App),
}).$mount('#app')

// Instala BootstrapVue
Vue.use(BootstrapVue)
Vue.use(IconsPlugin)
Vue.use(CardPlugin)
