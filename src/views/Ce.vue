<template>
  <div>
    <nut-scroller>
        <div slot="list" class="nut-hor-list-item" v-for="(item, index) of listData" :key="index">
            <dl class="nut-scroller-item-info"><img :src="item.name" alt=""></dl>
            <p>{{item.title}}</p>
        </div>
    </nut-scroller>
  </div>
</template>

<script>
export default {
    data(){
     return{
        listData:[
            {name:'cj_1.png',intro:'享3期免息',title:'华为平板M6 8.4',price:1799},
            {name:'cj_2.png',intro:'拼团更优惠',title:'华为平板M6 8.4',price:1799},
            {name:'cj_3.png',intro:'预订最高省3000+',title:'华为平板M6 8.4',price:1799},
            {name:'cj_4.png',intro:'6期免息',title:'华为平板M6 8.4',price:1799},
            {name:'cj_5.png',intro:'6期免息',title:'华为平板M6 8.4',price:1799},
            {name:'cj_6.png',intro:'6期免息',title:'华为平板M6 8.4',price:1799}
           ]
     }
   },
   mounted(){
     this.listData.forEach(item=>{
       item.name=require('../assets/home_img/'+item.name);
     })
   }
}
</script>

<style>
/* .nut-scroller-item-info{
    background:red;
    margin: 2px;
    width: 130px;
    border-radius: 0.5rem;
} */


</style>