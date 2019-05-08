<template>
    <div class="home">
        <!-- <component v-bind:is="Login"></component> -->
        <Login></Login>
      
    </div>
</template>

<script>
    import Login from './Login.vue'
    export default {
        name: 'Home',
        components: {Login }
    };
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
