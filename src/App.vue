<template>
  <div id="app">

    <!-- 占位符 -->
    <router-view/>


  </div>
</template>

<style>
#app {
  text-align: center;
  margin: 0 auto;
  color: #ffffff;
  /* width: 1025px; */
  
}

/* 全站字体样式,a去除下划线, 暗灰色字体*/
p,a,div,h1,span{
  font-family: Arial,Helvetica,sans-serif,"Lucida Grande",Verdana;
  text-decoration:none;
  color: #363636;
}





#nav {
  padding: 30px;
  background: red;
}


body{
  margin: 0;
  bottom: 0;
}
</style>
