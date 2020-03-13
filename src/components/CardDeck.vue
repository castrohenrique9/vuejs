<template>
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
</template>

<script>
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

export default {
  name: 'CardDeck',
  props: {
    photos: Array,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h4 {
  margin: 5px;
}
</style>
