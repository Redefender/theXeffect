<template>
    <div>
      
        <form v-if="loggedIn" v-on:submit.prevent="onSubmit">
              <h1>Login</h1>
            <input type="text" placeholder="Username" v-model="name" />
            <input type="text" placeholder="Password" v-model="password" />
            <input  type="submit" v-on:click="callLogin"/>
       
        </form>
        <div v-else>
            <h1>Welcome!</h1>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Login',
        data:{
        myData: {}
        },
        methods: {
            getFormValues() {
                // console.log(this.name, this.password);
            },
            callLogin(){
                alert('password, name', this.password + ' ' + this.name );

                axios
                .get('https://api.coindesk.com/v1/bpi/currentprice.json')
                .then(response => { 
                    myData.push(this.info)
                });
            }
        },

        computed:{
           loggedIn(){
                return true;
                //if(localStorage.getItem('habit-token') === null) return false;
               
           }
        },
        watch:{
            myData: function(){
                alert(myData);
            }
        }
    };
</script>

<style scoped>
</style>
