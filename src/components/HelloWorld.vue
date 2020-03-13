<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <p>Este App consome um end-point com Axios e mostra a lista de Cards com o resultado</p>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  margin: 20px;
}
</style>
