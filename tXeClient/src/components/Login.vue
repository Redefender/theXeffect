<template>
    <div>
        <form v-on:submit.prevent="getFormValues">
            <input type="text" placeholder="Username" v-model="name" />
            <input type="text" placeholder="Password" v-model="password" />
        </form>
    </div>
</template>

<script>
    export default {
        name: 'Login',
        methods: {
            getFormValues() {
                // console.log(this.name, this.password);
            }
        }
    };
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
