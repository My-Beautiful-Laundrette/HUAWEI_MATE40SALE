<template>
  <div id="header">
      <div class="header_1">
            <img src="../assets/img/logo.png" alt="">
            <input type="text" class="input" placeholder="超级11.11">
            <img class="img" src="../assets/img/x.png" alt="">
            <div>登录</div>
      </div>
       <div class="header_1 header_2">
            <p class="active">推荐</p>
            <p>华为专区</p>
            <p>荣耀专区</p>
            <p>P40专区</p>
            <p>v</p>
      </div>

      
  </div>
</template>

<script>
export default {

}
</script>

<style>

#header {
    /* background: red; */
    /* background-image: linear-gradient(-8deg,#ff0000db,#fc1d61); */

     background: url(../assets/img/bei.jpg);
     /* background-size:contain; */
}

/* 弹性布局 */
#header .header_1{
   display:flex;
   justify-content:space-around;
   align-items:center;
   padding: 2px 0 2px 0;
   
}

#header .active{
    border-bottom: 2px solid #fff;
    padding-bottom: 5px;
}


.header_2{
    padding:5px 0 5px 0;
}

#header .header_2>p{
    padding-bottom: 5px;
    font-size: 16px;
    font-family: fantasy;
}

#header .img{
    width: 7%;
}

#header img{
    width: 17%;
    padding: 5px;
    margin: 3px 0 3px 0;
}

#header input{
    border-radius: 1.2rem;
    padding: 8px 0 8px 15px;
    margin: 3px 0 3px 0;
    border: 0;
    width: 45%;
}
</style>