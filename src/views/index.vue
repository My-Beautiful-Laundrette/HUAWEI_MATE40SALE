<template>
    <div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/5.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/2.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/3.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/4.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/6.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/7.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/8.png" alt="">
            </router-link>
        </div>
        <div class="nth9">
            <router-link to="/">
            <img src="../assets/index_img/9.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/7.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/10.png" alt="">
            </router-link>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/12.png" alt="">
            </router-link>
        </div>
        <div class="min">
            <mt-swipe :auto="6000" :show-indicators="false">
                <mt-swipe-item>
                    <img src="../assets/index_img/15.png" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../assets/index_img/16.png" alt="">
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <div>
            <router-link to="/">
            <img src="../assets/index_img/13.png" alt="">
            </router-link>
        </div>
        <div>
            <img src="../assets/index_img/18.png" alt="">
        </div>
        <div class="bottom_index">
             <img src="../assets/index_img/1.png" alt="">
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style>
    .min{
        width: 100%;
        height: 388px;
        margin: 0 auto;
        max-width: 100%;
    }
    .bottom_index{
        width: 100%;
        height: 90px;
        position: fixed;
        z-index:999;
        bottom: 0rem;
    }
    .nth9{
        width: 100%;
    }
    .nth9 img{
        text-align: center;
    }
</style>