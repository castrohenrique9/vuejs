<template>
  <div id="app" class="container-fluid">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld msg="VueJS com Bootstrap4 e Axios"/>

    <b-card-group columns>
      <b-card no-body class="overflow-hidden" style="max-width: 540px;" v-for="photo in photos" :key="photo.id">
        <b-row no-gutters id="b-row">
          <b-col md="6">
            <b-card-img v-bind:src="photo.url" class="rounded-0"></b-card-img>
          </b-col>
          <b-col md="6">
            <b-card-body>
              <b-card-text>
                {{ photo.title }}
              </b-card-text>
            </b-card-body>
          </b-col>
        </b-row>
      </b-card>
    </b-card-group>

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
      photos: null,
      url: 'https://via.placeholder.com/150/92c952'
    }
  },
  created() {
    axios.get('https://jsonplaceholder.typicode.com/photos?albumId=1').then(response => (this.photos = response.data))
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
