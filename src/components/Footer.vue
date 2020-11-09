<template>
  <!-- 底部选项卡组件 -->
  <div id="footer">
    <!-- 底部选项卡开始 -->
     <mt-tabbar class="d1" fixed>
      <mt-tab-item id="s1">首页
        <img src="../assets/img/home.png" alt="" slot="icon" >
      </mt-tab-item>
      <mt-tab-item id="s1">分类
        <img src="../assets/img/home.png" alt="" slot="icon" >
      </mt-tab-item>
      <mt-tab-item id="s1">
        <img class="bfb" src="../assets/img/hoem_3.gif" alt="" slot="icon" >
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

.bfb{
  width: 55px;
  height: 50px;
 
}



#footer{
  background: red;
}

#footer .d1{
  background: #cd2d33;
  background-image: linear-gradient(-8deg,#ff0000db,#fc1d61);
  /* background: url(../assets/img/bei.jpg); */
  /* background-size:contain; */

}

*{
  color: rgb(238, 238, 238);
}


#footer .mint-tab-item{
  /* border-left: 1px solid #d3d3d359; */
}



</style>