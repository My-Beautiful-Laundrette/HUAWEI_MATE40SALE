<template>
  <!-- 底部选项卡组件 -->
  <div id="footer">
    <!-- 底部选项卡开始 -->
     <mt-tabbar class="d1" fixed>
      <mt-tab-item id="s1">
        <img  class="footer_png" src="https://res.vmallres.com/nwap/20200915/images/echannelWap/icon/home_active.png" alt="" slot="icon" >
      </mt-tab-item>
      <mt-tab-item id="s1">分类
        <img src="../assets/img/home.png" alt="" slot="icon" >
      </mt-tab-item>
      <mt-tab-item id="s1">发现
        <img src="../assets/img/home.png" alt="" slot="icon" >
      </mt-tab-item>
      <mt-tab-item id="s1">购物车
        <img src="../assets/img/home.png" alt="" slot="icon" >
      </mt-tab-item>
      <mt-tab-item id="s1">我的
        <img src="../assets/img/home.png" alt="" slot="icon" >
      </mt-tab-item>
    </mt-tabbar>
    <!-- 底部选项卡结束 -->
  </div>
</template>

<script>
export default {

}
</script>

<style>

#footer .bfb{
  width: 55px;
  height: 50px;
}


#footer{
  background: #f9f9f9;
}

#footer .d1{
  background:  #f9f9f9;
  /* background-image: linear-gradient(-8deg,#ff0000db,#fc1d61); */
  /* background: url(../assets/img/bei.jpg); */
  /* background-size:contain; */
  border-top: 1px solid #e8e8e8;

}

#footer .mint-tab-item-label{
  color: rgb(58, 58, 58);
  font-size: 14px;
}




</style>