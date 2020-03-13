<template>
  <div id="app" class="container-fluid">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld msg="VueJS com Bootstrap4"/>
    
    <div class="card-deck">
      <div class="col-lg-3 col-md-6 col-sm-12 ma-auto flex" v-for="photo in photos" :key="photo.id">
        <div class="card mb-4">
            <img class="card-img-top img-fluid" :src="photo.url" alt="Card image cap">
            <div class="card-body">
                <h4 class="card-title">{{ photo.title }}</h4>
            </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import axios from 'axios'

export default {
  name: 'App',
  components: {
    HelloWorld
  },
  data() {
    return {
      photos: []
    }
  },
  beforeCreate() {
    axios.get('https://jsonplaceholder.typicode.com/photos?albumId=1')
    .then(response => (this.photos = response.data))
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
