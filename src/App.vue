<template>
  <div id="app" class="container-fluid">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld msg="VueJS com Bootstrap4"/>
    <CardDeck :photos="photos"/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import CardDeck from './components/CardDeck.vue'
import axios from 'axios'

export default {
  name: 'App',
  components: {
    HelloWorld,
    CardDeck
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
