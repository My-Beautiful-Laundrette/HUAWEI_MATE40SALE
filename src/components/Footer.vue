<template>
  <!-- 底部选项卡组件 -->
  <div id="footer">
    <!-- 底部选项卡开始 -->
     <mt-tabbar class="d1" v-model="tabbar" fixed>
      <mt-tab-item id="index">
        <img  class="footer_png" src="../assets/img/footer/home_1.png"  v-if="tabbar=='index'" slot="icon" >
        <img  class="footer_png" src="../assets/img/footer/home.png"  slot="icon"  v-else>
        首页
      </mt-tab-item>

      <mt-tab-item id="fl">
        <img src="../assets/img/footer/fl_1.png"  slot="icon" v-if="tabbar=='fl'">
        <img src="../assets/img/footer/fl.png"  slot="icon" v-else>
        分类
      </mt-tab-item>

      <mt-tab-item id="fx">
        <img src="../assets/img/footer/fx_1.png"  slot="icon" v-if="tabbar=='fx'">
        <img src="../assets/img/footer/fx.png"  slot="icon" v-else>
        发现
      </mt-tab-item>

      <mt-tab-item id="gwc">
        <img src="../assets/img/footer/gwc_1.png"  slot="icon" v-if="tabbar=='gwc'">
        <img src="../assets/img/footer/gwc.png"  slot="icon" v-else>
        购物车
      </mt-tab-item>



      <mt-tab-item id="wo">
        <img src="../assets/img/footer/wo_1.png"  slot="icon" v-if="tabbar=='wo'">
       <img src="../assets/img/footer/wo.png"  slot="icon" v-else >
       我的
      </mt-tab-item>


    </mt-tabbar>
    <!-- 底部选项卡结束 -->
  </div>
</template>

<script>
export default {
  data(){
    return{
      tabbar:'index',
    }
  },
  watch:{
    tabbar(value){
      console.log(value)
      if(value == 'index'){
        this.$router.push('/').catch(e=>{});
      }
      if(value == 'gwc'){
        this.$router.push('/shopping').catch(e=>{});
        
      }
       if(value == 'wo'){
        this.$router.push('/mine').catch(e=>{
          this.tabbar = ''
          this.tabbar = 'wo'
          
        });
      }
    }
  }
}
</script>

<style>

#footer .bfb{
  width: 55px;
  height: 50px;
}


#footer{
  background: #ffff;
}
#footer .d1{
  background:  #f9f9f9;
  /* background-image: linear-gradient(-8deg,#ff0000db,#fc1d61); */
  /* background: url('../assets/img/timg.jpg'); */
  /* background-size:contain; */
  border-top: 1px solid #e8e8e8;

}

#footer .mint-tab-item-label{
  color: rgb(58, 58, 58);
  font-size: 14px;
}




</style>