<template>
    <div>
      <ul>
            <li v-for="(value,key) in obj" :key="key">{{ value }}</li>
        </ul>
    </div>
</template>

<script>
export default {
    data(){
        return{
            obj: {
                    name: "图片1",
                    age: "图片2",
                    sex: "图片3"
                }
        }  
    },
  //    mounted(){
  //    this.miao.forEach(item=>{
  //      item.name=require('../assets/home_img/'+item.name);
  //    })
  //  } 
  }

  </script>

<style>
.header_2 .Boutique dl{
    overflow:hidden;
    margin: 4px;
    width: 90px;
    /* border-radius: 0.7rem;
    overflow:hidden; */
}



/* 简介 */
.header_2 .Boutique .intro_{
  padding: 5px 0 5px 0;
  color: #9b9b9b;
  font-size: 10px;
}


</style>