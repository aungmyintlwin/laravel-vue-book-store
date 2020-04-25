require('./bootstrap');
import Vue from 'vue';
import VueRouter from 'vue-router';
import routes from './routers';
import App from './App.vue';
import vuetify from './plugin/vuetify';
import {asset} from '@codinglabs/laravel-asset'

Vue.use(VueRouter);
const router = new VueRouter({
    mode: 'history',
    routes: routes
});

Vue.mixin({
    methods: {
        asset: asset
    }
})

const app = new Vue({
    el: '#app',
    vuetify,
    router: router,
    render: h => h(App)
})
