<template>
  <div>
      <div id="shopping">
          <h1>购物车</h1>
      </div>
      <!-- 内容开始 -->
      <div class="shopping_1">
            <div style="width:10%">√</div>
            <div style="width:30%"><img width="75%" src="../assets/home_img/miao_3.png" alt="">  </div>    
            <div style="width:60%">
                <p>荣耀智慧屏X1系列 50英寸 4K超清全面屏 8K解码 鸿鹄818芯片 大小屏互动 高色域 开机无广告</p>
                <p>12345元</p>
            </div>   
      </div>
      <div class="shopping_1">
            <div style="width:10%">√</div>
            <div style="width:30%"><img width="75%" src="../assets/home_img/miao_3.png" alt="">  </div>    
            <div style="width:60%">
                <p>荣耀智慧屏X1系列 50英寸 4K超清全面屏 8K解码 鸿鹄818芯片 大小屏互动 高色域 开机无广告</p>
                <p>12345元</p>
            </div>   
      </div>

        <!-- 引入页脚 -->
    <Mete-footer></Mete-footer>

  </div>
</template>

<script>
export default {

}
</script>

<style>
#shopping h1{
    width: 100%;
    padding: 10px 0 10px 0;
    font-size: 22px;
    background: #fff;
    margin-bottom: 10px;
}

.shopping_1{
    width: 100%;
    background: #fff;
    display:flex;
    justify-content: center;
    align-items:center;
    margin-bottom: 10px;
}
</style>