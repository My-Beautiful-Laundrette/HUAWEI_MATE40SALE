<template>
    <div>
       <div class="lable_width">
           <router-link to="../views/details.vue">
               <div>
                    <img src="../assets/lable_img/lable.png" alt="">
               </div>
           </router-link>
           <router-link to="../views/details.vue">
               <div class="lable_bottom">
                   <img src="../assets/lable_img/lable_bottom.png" alt="">
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