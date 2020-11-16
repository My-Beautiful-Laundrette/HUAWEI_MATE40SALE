<template>
    <div class="header_2">
      <div class="Boutique">
          <nut-scroller>
            <div slot="list" v-for="(item, index) of miao" :key="index">
              <dl>
                  <p class="intro_">{{item.intro}}</p>
              </dl>
            </div>
          </nut-scroller>
      </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            dao:[
                {title:'华为专区',on:'http://baidu.com'},
                {title:'荣耀专区',on:'http://baidu.com'},
                {title:'P40系列',on:'http://baidu.com'},
                {title:'mate40系列',on:'http://baidu.com'},
                {title:'智能家居',on:'http://baidu.com'},
                {title:'拼团',on:'http://baidu.com'}
            ],
            miao:[
            {name:'miao_1.png',intro:'MateBook X Pro',title:'享3期免息'},
            {name:'miao_2.png',intro:'荣耀手环6',title:'预订立省10元'},
            {name:'miao_3.png',intro:'MatePad Pro',title:'享3期免息'},
            {name:'miao_5.png',intro:'荣耀猎人游戏本',title:'晒单赢好礼'},
            {name:'miao_4.png',intro:'Mate 30E Pro',title:'新品3期免息'},
            {name:'miao_6.png',intro:'WATCH GT 2',title:'享3期免息'}
           ]
        }  
    },
     mounted(){
     this.miao.forEach(item=>{
       item.name=require('../assets/home_img/'+item.name);
     })
   } 
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