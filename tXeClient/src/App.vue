<template>
    <div id="app">
        <NavBar></NavBar>
        <Home/>
    </div>
</template>

<script>
    import Home from './components/Home.vue';
    import NavBar from './components/NavBar.vue'
    export default {
        name: 'app',
        components: {
            Home, NavBar
        }
    };
</script>

<style>
</style>
