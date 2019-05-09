    <template>
    <div>
      
        <form v-if="loggedIn" v-on:submit.prevent="onSubmit">
              <h1>Login</h1>
            <!-- <input type="text" placeholder="Username" v-model="name" />
            <input type="text" placeholder="Password" v-model="password" />
            <input  type="submit" v-on:click="callLogin"/>-->
            <input type="button"  value="call Login"  v-on:click="callLogin"/>

        </form>
        <div v-else>
            <h1>Welcome!</h1>
        </div>
        
    </div>
</template>

<script>
    export default {
        name: 'Login',
        // data:{
        // myData: {}
        // },
        methods: {
            getFormValues() {
                // console.log(this.name, this.password);
            },
            callLogin : function(){
                // alert('password, name', this.password + ' ' + this.name );

                const BaseURI = 'https://api.coindesk.com/v1/bpi/currentprice.json';
                this.$axios.get(BaseURI)
                .then((response)=>{
                    alert(JSON.stringify(response))
                    // this.myData.push(result.data) 
                })
            }
        },
        data:function(){
            return{
                myData: {}
            }
        },

        computed:{
           loggedIn(){
                return true;
                //if(localStorage.getItem('habit-token') === null) return false;
               
           }
        },
    
    };
</script>

<style scoped>
</style>
