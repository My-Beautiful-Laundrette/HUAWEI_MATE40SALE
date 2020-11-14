<template>
  <div id="home">
 
    <!-- 导航头开始 -->
    <div class="header">
      <div class="header_1">
        <img class="logo" src="../assets/img/logo_vmall.png" alt="">
        <input type="text" placeholder="超级11.11">
        <img style="width:6%;" src="../assets/img/x.png" alt="">
        <router-link to="/login" class="span_1">登录</router-link>
      </div>
      <div class="header_2">
        <div class="s-ctn">
          <div><a class="active">推荐</a></div>
          <div v-for="(n,k) of dao" :key="k"><a href="www.baidu.com">{{n.title}}</a></div>
        </div>
      </div>
    </div>
    <!-- 导航头结束 -->

    <!-- 主体内容开始-------------- -->
    <div class="subject">

      <!-- 轮播图开始 -->
      <div class="slideshow">
        <mt-swipe :auto="4000" class="ss">
          <mt-swipe-item ><img src="https://res.vmallres.com/pimages//pages/picImages/90032369150616323009.jpg" alt=""></mt-swipe-item>
          <mt-swipe-item ><img src="../assets/home_img/2.jpg" alt=""></mt-swipe-item>
          <mt-swipe-item ><img src="../assets/home_img/3.jpg" alt=""></mt-swipe-item>
        </mt-swipe>
      </div>
      <!-- 轮播图结束 -->

      <div class="div2">
        <p>√官网商城</p>
        <p>√正品保障</p>
        <p>√售后无忧</p>
      </div>

      <!-- 滑动选项卡开始 -->
      <div class="option">
        <mt-swipe :auto="0" :continuous="false" class="ss1">
            <mt-swipe-item>
              <ul>
                <li> 
                  <p><img src="../assets/img/huan/1.png" alt=""></p>
                  <p>会员领奖</p>
                </li>
                <li>
                   <p><img src="../assets/img/huan/2.png" alt=""></p>
                  <p>华为数码</p>
                </li>
                <li>
                  <p><img src="../assets/img/huan/3.png" alt=""></p>
                  <p>mate优选</p>
                </li>
                <li>
                  <p><img src="../assets/img/huan/4.png" alt=""></p>
                  <p>荣耀数码 </p>
                </li>
                <li>
                   <p><img src="../assets/img/huan/5.png" alt=""></p>
                  <p>以旧换新</p>
                </li>
              </ul>
            </mt-swipe-item>
            <mt-swipe-item >
              <ul class="div1">
                <li> 
                  <p><img src="../assets/img/huan/6.png" alt=""></p>
                  <p>邀请有礼</p>
                </li>
                <li>
                   <p><img src="../assets/img/huan/7.png" alt=""></p>
                  <p>众测</p>
                </li>
                <li>
                  <p><img src="../assets/img/huan/8.png" alt=""></p>
                  <p>正在直播</p>
                </li>
                <li>
                  <p><img src="../assets/img/huan/9.png" alt=""></p>
                  <p>积分商城</p>
                </li>
                <li>
                   <p><img src="../assets/img/huan/10.png" alt=""></p>
                  <p>精选特卖</p>
                </li>
              </ul>
            </mt-swipe-item>
        </mt-swipe>
      </div>
      <!-- 滑动导航结束 -->

      <!-- 商城头条开始 -->
      <div class="notice">
        <img width="15%" src="https://res.vmallres.com/nwap/20200915/images/echannelWap/logo/logo_wapHeadNews.png" alt="">
        <marquee width="65%"  style="color:red" scrolldelay="1000" direction=up><p>微信支付选交行信用卡满2000减100元</p></marquee>
        <p>更多</p>
      </div>
      <!-- 商城头条结束 -->

      <!-- 限时购开始 -->
      <div class="time">
          <div class="t-ctn">
            <div class="s-ctn">
              <div><img src="https://res.vmallres.com/pimages//product/6941487202126/142_142_9A430FF774BE12470EC8CF7C2F7201BB60341FE48E6B7A8Bmp.png" alt=""><p>FreeBuds Pro</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6941487204878/142_142_6C5E6B7BACB1C8218D089477B4F33851E84B7DE7B212CB75mp.png" alt=""><p>荣耀手环6</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6901443293209/142_142_89A14977D05520B9C24C8C36110EA92521DD0ACE23D3F736mp.png" alt=""><p>MatePad Pro</p></div>
              <div><img src="https://res.vmallres.com/pimages//pages/rushBuy/79733291440619233797.png" alt=""><p>荣耀智慧屏系列</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6972453169693/142_142_B44197A568DF33725A00C91C919E4D673253D40DA2846C28mp.png" alt=""><p>Mate 30E Pro</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6941487204656/142_142_FB7BAC2D86AA8CA5DF84BE54FBE5FD73150052C815ADC835mp.png" alt=""><p>荣耀猎人游戏本</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6901443401703/142_142_C87EFEE1636151629AB635316B00DEF08ACF73EEB8864EAFmp.png" alt=""><p>荣耀手环</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6901443320202/142_142_A8033BCC8CCFFF9199371E71953A1B8B9730D5ACACA293D0mp.png" alt=""><p>荣耀手环</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6901443364848/142_142_FD4FCDA05CD9734500C1F30C2224781613DD08967CC7194Emp.png" alt=""><p>荣耀手环</p></div>
              <div><img src="https://res.vmallres.com/pimages//product/6901443414277/142_142_8D4CA852B05FD61B83CC56E25A8FE1331DA7C16C76481D44mp.png" alt=""><p>荣耀手环</p></div>
            </div>
          </div>
      </div>
      <!-- 限时购结束 -->

      <!-- 图片商品排版开始 -->
      <div class="goods">
        <div class="z"> 
            <img style="width:100%" src="https://res.vmallres.com/pimages//pages/picImages/88475369150616357488.png" alt="">
            <img style="width:100%" src="https://res.vmallres.com/pimages//pages/picImages/59906839050613860995.png" alt="">
            <img style="width:100%" src="https://res.vmallres.com/pimages//pages/picImages/14380316140611308341.png" alt="">
        </div>
        <div class="y">
          <img style="width:100%" src="https://res.vmallres.com/pimages//pages/picImages/93418369150616381439.jpg" alt="">
          <img style="width:100%" src="https://res.vmallres.com/pimages//pages/picImages/90116369150616361109.png" alt="">
          <img style="width:100%" src="https://res.vmallres.com/pimages//pages/picImages/96542089150618024569.jpg" alt="">
          <img style="width:100%" src="https://res.vmallres.com/pimages//pages/picImages/46248384040618384264.png" alt="">
        </div>
      </div>
      <div class="tan1">
        <div class="s10">
          <img src="https://res.vmallres.com/pimages//product/6941487202294/428_428_C872B27DB9F580B87F1B877905E8429F65724D6CD860252Dmp.png" alt="">
          <p>华为畅享20 Plus</p>
          <p>¥2299</p>
        </div>
        <div class="s10">
          <img src="https://res.vmallres.com/pimages//product/6941487202294/428_428_C872B27DB9F580B87F1B877905E8429F65724D6CD860252Dmp.png" alt="">
          <p>荣耀Play4 Pro</p>
          <p>¥2299</p>
        </div>
        <div class="s10">
          <img src="https://res.vmallres.com/pimages//product/6941487202294/428_428_C872B27DB9F580B87F1B877905E8429F65724D6CD860252Dmp.png" alt="">
          <p>MatePad 5G 10.4</p>
          <p>¥2299</p>
        </div>
      </div>
      <!-- 图片商品排版结束 -->

      <!-- 精品推荐开始 -->
      <div class="Boutique">
          <h1>精品推荐</h1>
          <nut-scroller>
            <div slot="list" class="nut-hor-list-item" v-for="(item, index) of listData" :key="index">
              <dl class="nut-scroller-item-info">
                  <img :src="item.name" alt="">
                  <p class="intro_">{{item.intro}}</p>

                  <p class="title_">{{item.title}}</p>
                  <p class="price_">¥ {{item.price}}</p>
              </dl>
            </div>
          </nut-scroller>
      </div>
      <!-- 精品推荐结束 -->

      <!-- 手机开始 -->
      <div class="Boutique">
          <h1>手机推荐</h1>
          <nut-scroller>
            <div slot="list" class="nut-hor-list-item" v-for="(item, index) of listData" :key="index">
              <dl class="nut-scroller-item-info">
                  <img :src="item.name" alt="">
                  <p class="intro_">{{item.intro}}</p>

                  <p class="title_">{{item.title}}</p>
                  <p class="price_">¥ {{item.price}}</p>
              </dl>
            </div>
          </nut-scroller>
      </div>
      <!-- 手机结束 -->

    </div>
    <!-- 主体内容结束 -->

    <!-- 引入页脚 -->
    <Mete-footer></Mete-footer>

    <!-- 回到顶部 -->
    <nut-backtop :bottom="100" @click="handleClick">
      <div class="return"><img src="../assets/img/top.png" alt=""></div>
    </nut-backtop>

  </div>
</template>

<style>
#home .return{
  display: flex;
  height: 35px;
  width: 35px;
  align-items: center;
  justify-content: center;
  background-image: linear-gradient(90deg,#9d67e1eb,#3987edc9);
  border-radius: 50%;
}

#home .Boutique .nut-scroller-item-info{
    background:#f8f8f8;
    margin: 2px;
    width: 130px;
    border-radius: 0.7rem;
    overflow:hidden;
    border: 1px solid #f0f0f069;
}

.Boutique .nut-scroller-item-info>img{
    width: 65%;
    margin: 25px 0 5px 0;
}

.Boutique>h1{
  margin: 20px 0 20px 0;
  font-size: 22px;
}

/* 简介 */
.Boutique .intro_{
  background: #eeeeee;
  padding: 5px 0 5px 0;
  margin: 5px 0 0px 0;
  color: #9b9b9b;
  font-size: 12px;
}
/* 标题 */
.Boutique .title_{
  background: #ffffff;
  padding: 10px 0 5px 0;
  color: #252525;
  font-size: 13px;
}

/* 价格 */
.Boutique .price_{
  background: #ffffff;

  padding: 5px 0 0px 0;
  color: #f00d0d;
  font-size: 14px;
}



#home{
  background: #fff;
  margin: 0 auto;
}

/* 整个导航条,最外层盒子样式 */
#home .header{
    background: #fff;
    margin: 0 auto;
    position: fixed;
    z-index:100;
    width: 100%;
} 
/* logo,搜索框,登录,会话,外层盒子样式---------------------------------- */
#home .header .header_1{
    display:flex;
    justify-content:space-around;
    align-items:center;
    padding: 5px;
}
/* 导航logo图 */
#home .header .logo{
    width: 18%;
    margin: 10px 0 10px 0;
}
/* 导航搜索框 */
#home .header .header_1>input{
    border-radius: 1rem;
    padding: 8px 0px 8px 20px;
    border: 0;
    width: 50%;
    background: #e3e3e39e;
}
/* 滑块字体导航条,盒子样式------------------------------------ */
#home .header .header_2 {
    overflow-x: auto;
}
#home .header .header_2 .s-ctn {
    white-space: nowrap;
    padding: 5px 0 10px 0;
}
/*弹性横行布局*/
#home .header .header_2 .s-ctn div {
    display: inline-block;   
} 

/* 字体 */
#home .header .s-ctn a{ 
    font-size: 14px;
    margin: 0 15px 0 15px;
    text-align: left;
    color: #848484;      
}
/* 被选中时 */
#home .header .header_2 .active{
    border-bottom: 3px solid rgb(247, 5, 5);
    padding-bottom: 5px;
}

/* 内容主体,最外层容器盒子------------------------- */
#home .subject{
  padding: 75px 0 60px 0;
}

/* 1.轮播图最外层容器盒子 */
#home .subject .slideshow{padding: 5px 5px 5px 5px;}
/* 2.轮播图容器盒子 */
#home .subject .slideshow>.ss{
    width: 100%;
    height: 155px;
    border-radius: 0.5rem;
    box-shadow: 0 3px 7px -1px #7e7e7e8f;
}
/* 3.轮播图,图片 */
#home .subject .slideshow img{
   height: 100%;
   width: 100%; 
}

/* 服务承诺---------------------------- */
.div2{
  display:flex;
  justify-content:space-between;
  padding:10px 20px 10px 20px;
}
.div2>p{
  color:#9e9e9ead;
  font-size: 12px;
  font-weight: 600;
  font-family:"宋体"; 
}

/*滑动选项卡---------------------------------------- */
#home .subject .option{
  height: 80px;
  border-bottom: 1px solid #d8cfcf42;
}
#home .option ul{display:flex;}
#home .option ul>li{width: 100%;}
/* 定义图标 */
#home .option ul img{width:35px;}
/* 定义字体 */
#home .option ul>li>p{
 text-align: center;
 color: #464646;
 margin: 10px 0 10px 0;
 font-size: 12px;
}

/* 修改指示器标志 */
#home .option .mint-swipe-indicator{
  width:  10px;
  height: 2px;
  border-radius: 0;
}
.ss1 .mint-swipe-indicators{bottom: 3px;}
/* 选中状态 */
.ss1 .mint-swipe-indicator.is-active{background: #666666;}
/* 未选中 */
.ss1 .mint-swipe-indicator{opacity: 1;background: #b1b1b159;}


/* 商城头条-------------------------- */
#home .subject .notice{
  color:#000;
  display:flex;
  justify-content:space-around;
  align-items:center;
  padding: 10px 0 10px 0;
}
#home .subject .notice p{
  color: rgb(56, 56, 56);
  font-size: .8rem;
}


/* 左右拖动盒子--------------------------------------- */
#home .subject .time{
  background-image: linear-gradient(-180deg, #ededed 0%, #FFFFFF 100%);
}

#home .subject .time .t-ctn{
  overflow-x: auto;
}

#home .time .s-ctn{
  white-space: nowrap;
  padding: 10px 0 10px 0;
  border-bottom: 1px solid #ebe9e9;
}

#home .time .t-ctn .s-ctn div {
  display: inline-block;  
  background: #fff;
  width: 70px;
  text-align: center;
  padding:5px ;
  margin: 0 5px 0 5px;
  border-radius: 0.5rem;
}

#home .time .s-ctn img{width: 85%;}

#home .time .s-ctn p{
  color: #9a9a9a;
  font-size: 10px;
  margin: 5px 0 5px 0;
  overflow:Hidden;  
}

/*商品图片弹性布局 */
#home .subject .goods{display:flex;}
#home .goods .z,#home .goods .y{width: 50%;}

#home .subject .tan1{
  display:flex;
  justify-content:space-around;
  margin: 2px;
  border-radius: 0.25rem;
}

#home .subject .tan1 .s10{
  width: 32%;
  background-color: #f9f9f9;
  padding:10px 10px 10px 10px;
  margin: 2px;
  border: 1px solid #f0f0f069;
  border-radius: 0.7rem;
}

#home .subject .s10>img{
  width: 65%;
  padding: 0 0 15px 0;
  
}
#home .subject  .s10>p{
  font-size: 13px;
  padding:2px 0 2px 0 ;
}






/* 媒体查询 */
@media (min-width:575px) { 
    #home,#home .header{width: 500px;}
    .div2>p{font-size: 14px;}
    #home .option ul>li>p{font-size: 14px;}
    #home .slideshow>.ss{height: 175px !important;}
    #home .subject{padding: 80px 0 60px 0;
}
}


</style>




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
