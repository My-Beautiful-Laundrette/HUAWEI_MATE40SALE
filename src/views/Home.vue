<template>
  <div id="home">
 
    <!-- 导航头开始 -->
    <div class="header">
      <div class="header_1">
        <img class="logo" src="../assets/img/vmall_logo.png" alt="">
        <input type="text" placeholder="超级11.11">
        <img style="width:6%;" src="../assets/img/x.png" alt="">
        <router-link to="/login" class="span_1">登录</router-link>
      </div>
      <div class="header_2">
        <div class="Boutique2">
            <nut-scroller>
              <div slot="list" v-for="(item, index) of dao" :key="index">
                <dl>
                    <p class="intro_ index_" v-if="(item.on=='/')">
                      <router-link :to="item.on" class="active">{{item.title}}</router-link>
                    </p>
                    <p class="intro_" v-else>
                      <router-link :to="item.on">{{item.title}}</router-link>
                    </p>
                </dl>
              </div>
            </nut-scroller>
        </div>
      </div>
    </div>
    <!-- 导航头结束 -->

    <!-- 主体内容开始-------------- -->
    <div class="subject">

      <!-- 轮播图开始 -->
      <div class="slideshow">
        <mt-swipe :auto="4000" class="ss">
          <mt-swipe-item  v-for="(n,k) of slideshow" :key="k">
            <a :href="n.link"><img :src="n.path" alt=""></a>
          </mt-swipe-item>
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
              <ul >
                <li v-for="(n,k) in option.slice(0,5)" :key="k">
                    <p><img :src="n.name" alt=""></p>
                    <p>{{n.intro}}</p>
                </li>
              </ul>
            </mt-swipe-item>
            <mt-swipe-item >
              <ul>
                <li v-for="(n,k) in option.slice(5,10)" :key="k"> 
                  <p><img :src="n.name" alt=""></p>
                  <p>{{n.intro}}</p>
                </li>
              </ul>
            </mt-swipe-item>
        </mt-swipe>
      </div>
      <!-- 滑动导航结束 -->

      <!-- 商城头条开始 -->
      <div class="notice">
        <img width="15%" src="../assets/img/totiao.png" alt="">
        <marquee width="65%"  style="color:red" scrolldelay="1100" direction=up><p>微信支付选交行信用卡满2000减100元</p></marquee>
        <p>更多</p>
      </div>
      <!-- 商城头条结束 -->

      <!-- 限时购开始 -->
      <div class="qq">
        <div class="Boutique1">
          <h1>限时购</h1>
            <nut-scroller>
              <div slot="list" class="nut-hor-list-item" v-for="(item, index) of miao" :key="index">
                <dl class="nut-scroller-item-info">
                    <img :src="item.name" alt="">
                    <p class="intro_">{{item.intro}}</p>
                    <p class="title_">{{item.title}}</p>
                </dl>
              </div>
            </nut-scroller>
        </div>
    </div>
      <!-- 限时购结束 -->

      <!-- 图片商品排版开始 -->
      <div class="goods">
        <div class="z"> 
            <img src="../assets/home_img/home_1.png" alt="">
            <img src="../assets/home_img/home_2.jpg" alt="">
            <img src="../assets/home_img/home_3.png" alt="">
        </div>
        <div class="y">
          <img src="../assets/home_img/home_4.png" alt="">
          <img src="../assets/home_img/home_5.jpg" alt="">
          <img src="../assets/home_img/home_6.png" alt="">
          <img src="../assets/home_img/home_7.png" alt="">
        </div>
      </div>
      <div class="tan1">
        <div class="s10">
          <img src="../assets/home_img/home_8.png" alt="">
          <p>华为畅享20 Plus</p>
          <p>¥2299</p>
        </div>
        <div class="s10">
          <img src="../assets/home_img/home_9.png" alt="">
          <p>荣耀Play4 Pro</p>
          <p>¥2299</p>
        </div>
        <div class="s10">
          <img src="../assets/home_img/home_10.png" alt="">
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
                  <img  :src="item.name" alt="">
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
                  <img  :src="item.name" alt="">
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

    <!-- 回到顶部开始 -->
    <nut-backtop :bottom="100">
      <div class="return"><img src="../assets/img/top.png" alt=""></div>
    </nut-backtop>
    <!-- 回到顶部结束 -->

  </div>
</template>

<style>
/* 回到顶部 */
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

#home .Boutique .nut-scroller-item-info>img{
    width: 65%;
    margin: 25px 0 5px 0;
}

#home .Boutique>h1{
  padding: 15px 0 10px 0;
  font-size: 20px;
  font-weight: 600;
  font-family:"黑体"
}

/* 简介 */
#home .Boutique .intro_{
  background: #eeeeee;
  padding: 5px 0 5px 0;
  margin: 5px 0 0px 0;
  color: #9b9b9b;
  font-size: 12px;
}
/* 标题 */
#home .Boutique .title_{
  background: #ffffff;
  padding: 10px 0 5px 0;
  color: #252525;
  font-size: 13px;
}

/* 价格 */
#home .Boutique .price_{
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
    padding: 5px 5px 5px 5px;
}
/* 导航logo图 */
#home .header .logo{
    width: 28%;
    margin: 10px 0 10px 0;
}
/* 导航搜索框 */
#home .header .header_1>input{
    border-radius: 1rem;
    padding: 8px 0px 8px 20px;
    border: 0;
    width: 40%;
    background: #f3f3f3;
}

/* 被选中时 */
#home  .active{
    border-bottom: 3px solid rgb(247, 5, 5);
    padding-bottom: 3px;
}

/* 内容主体,最外层容器盒子------------------------- */
#home .subject{
  padding: 75px 0 60px 0;
}

/* 1.轮播图最外层容器盒子 */
#home .subject .slideshow{padding: 5px 7px 5px 7px;}
/* 2.轮播图容器盒子 */
#home .subject .slideshow>.ss{
    width: 100%;
    height: 180px;
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



/*商品图片弹性布局 */
#home .subject .goods{display:flex;}
#home .subject .goods img{
  width: 100%;
}
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


/* #home .nut-hor-list>div{
  width: 80px;
  
} */



/* 媒体查询 */
@media (min-width:575px) { 
    #home,#home .header{width: 500px;}
    .div2>p{font-size: 14px;}
    #home .option ul>li>p{font-size: 14px;}
    #home .slideshow>.ss{height: 210px !important;}
    #home .subject{padding: 85px 0 60px 0;
}
}

.qq {
  background-image: linear-gradient(-180deg, #f2f2f2f0 0%, #FFFFFF 100%);
}

.qq .Boutique1 .nut-scroller-item-info{
    background:#ffffff;
    overflow:hidden;
    margin: 4px;
    width: 90px;
    border-radius: 0.7rem;
    overflow:hidden;
    border: 1px solid#f0f0f0;
}

.qq .Boutique1 .nut-scroller-item-info>img{
    width: 70%;
    padding: 5px 5px 5px 5px;
}

.qq .Boutique1>h1{
  padding: 15px 0 10px 0;
  font-size: 20px;
  font-weight: 600;
  font-family:"黑体"
}

/* 简介 */
.qq .Boutique1 .intro_{
  padding: 5px 0 5px 0;
  color: #9b9b9b;
  font-size: 10px;
}
/* 标题 */
.qq .Boutique1 .title_{
  background: #ffffff;
  padding: 5px 0 5px 0;
  color: #fd0707;
  font-size: 10px;
}




.header_2 .Boutique2 dl{
    overflow:hidden;
    margin: 4px;
    width: 75px;

}


.header_2 .Boutique2 .intro_ a{
  color: #676666;
  font-size: 14px;
}

.header_2 .Boutique2 .intro_{
 padding-bottom:8px ;
 text-align: left;
}

#home .index_{
  text-align: center;
}

</style>




<script>
export default {
    data(){
        return{
          // 储存导航栏
            dao:[
                {title:'推荐',on:'/'},
                {title:'华为专区',on:'http://baidu.com'},
                {title:'荣耀专区',on:'http://baidu.com'},
                {title:'P40系列',on:'http://baidu.com'},
                {title:'mate40',on:'/index'},
                {title:'智能家居',on:'http://baidu.com'},
                {title:'拼团',on:'http://baidu.com'}
            ],
            //储存轮播图图片
            slideshow:[
              {path:'4.jpg',link:'www.baidu.com'},
              {path:'1.jpg',link:'www.baidu.com'},
              {path:'2.jpg',link:'www.baidu.com'},
              {path:'3.jpg',link:'www.baidu.com'}
            ],
            //储存滑块内容
            option:[
              {opid:1,name:'option_1.png',intro:'会员领卷',on:'www.baidu.com'},
              {opid:1,name:'option_2.png',intro:'华为数码',on:'www.baidu.com'},
              {opid:1,name:'option_3.png',intro:'mate优选',on:'www.baidu.com'},
              {opid:1,name:'option_4.png',intro:'荣耀数码',on:'www.baidu.com'},
              {opid:1,name:'option_5.png',intro:'以旧换新',on:'www.baidu.com'},
              {opid:2,name:'option_6.png',intro:'邀请有礼',on:'www.baidu.com'},
              {opid:2,name:'option_7.png',intro:'众测',on:'www.baidu.com'},
              {opid:2,name:'option_8.png',intro:'正在直播',on:'www.baidu.com'},
              {opid:2,name:'option_9.png',intro:'积分商城',on:'www.baidu.com'},
              {opid:2,name:'option_10.png',intro:'精选特卖',on:'www.baidu.com'}
            ],
            // 储存限时购
          miao:[
            {name:'miao_1.png',intro:'MateBook X Pro',title:'享3期免息'},
            {name:'miao_2.png',intro:'荣耀手环6',title:'预订立省10元'},
            {name:'miao_3.png',intro:'MatePad Pro',title:'享3期免息'},
            {name:'miao_5.png',intro:'荣耀猎人游戏本',title:'晒单赢好礼'},
            {name:'miao_4.png',intro:'Mate 30E Pro',title:'新品3期免息'},
            {name:'miao_6.png',intro:'WATCH GT 2',title:'享3期免息'}
           ],
            // 储存精品推荐
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
      //ajax请求轮播图
      // this.axios.get('/carousel').then(res=>{
      //   this.slideshow = res.data.results;
      // });
      //重新渲染轮播图图片
      this.slideshow.forEach(item=>{
        item.path=require('../assets/home_img/'+item.path);
      });


      //重新渲染滑动选项卡图片
      this.option.forEach(item=>{
        item.name=require('../assets/img/huan/'+item.name);
      });
      //重新渲染精品推荐图片
      this.listData.forEach(item=>{
        item.name=require('../assets/home_img/'+item.name);
      });
      //重新渲染限时购图片
      this.miao.forEach(item=>{
        item.name=require('../assets/home_img/'+item.name);
      })
    } 
}

</script>
