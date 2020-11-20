<template>
    <div>
       <div class="lable_width">
           <router-link to="/">
               <div>
                    <img src="../assets/lable_img/cart.jpg" alt="">
               </div>
           </router-link>
           <router-link to="/">
               <div class="lable_bottom">
                   <img src="../assets/lable_img/cart_bottom.jpg" alt="">
               </div>
            </router-link>
       </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style>
     .lable_width{
         width: 100%;
     }
     .lable_width img{
         width: 100%;
         overflow: hidden;
     }
     .lable_bottom img{
         position:fixed;
         bottom: 0px;
         left: 0px;
     }
</style>