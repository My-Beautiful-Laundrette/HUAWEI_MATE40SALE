<template>
    <div>
        <div id="details">
            <div class="fuqi">
                <router-link to="/" class="details_back"></router-link>
                <router-link to="/" class="details_more"></router-link>
            </div>
            <nut-tab @tab-switch="tabSwitch" :line-width="10">
            
                <!-- 商品介绍开始 -->
                <nut-tab-panel tab-title="商品">
                    <!-- 轮播图开始 -->
                    <div class="swiper">
                        <mt-swipe :auto="3000">
                            <mt-swipe-item v-for="(n,k) of carousel" :key="k">
                                <img :src="require(`../assets/swiper_img/`+n)" alt="">
                            </mt-swipe-item>   
                        </mt-swipe>
                    </div>
                    <!-- 轮播图结束 -->

                    <div class="pro-property">
                        <p class="details_price">¥{{carousel_nl.price}}</p>
                        <p class="details_title">开售时间：11月16日 10:08</p>
                        <div class="details_p_time">
                            <span class="time_star">距离开始还有<br>
                                <nut-countdown 
                                    :start-tiem="asyncStart"
                                    :show-days="days"
                                    :show-plain-text="text" 
                                    :end-time="asyncEnd" 
                                >
                                </nut-countdown>
                            </span>
                        </div>
                    </div>


                    <div class="details_primary">
                        <span id="pro_name">{{carousel_nl.title}}</span>
                        <router-link to="/"><span>{{carousel_nl.activity}}</span></router-link>
                        <div class="pro-meta-sku-content">
                            <!-- 颜色规格开始 -->
                            <dl>
                                <dt>颜色</dt>
                                <dd>
                                    <span v-for="(n,k) of color" :key="k">  
                                        <nut-button v-if="k==0" type="actived" shape="circle" small>{{n}}</nut-button>
                                        <nut-button v-else type="light" shape="circle" small>{{n}}</nut-button>
                                    </span>
                                </dd>
                            </dl>
                            <!-- 颜色规格结束 -->

                            <!-- 版本规格开始 -->
                            <dl>
                                <dt>版本</dt>
                                <dd>
                                    <span v-for="(n,k) of versions" :key="k">
                                        <nut-button v-if="k==0" type="actived" shape="circle" small>{{n}}</nut-button>
                                        <nut-button v-else type="light" shape="circle" small >{{n}}</nut-button>
                                    </span>
                                </dd>  
                            </dl>
                            <!-- 版本规格结束 -->

                            <!-- 类型规则开始 -->
                            <dl class="three_detail">
                                <dt>类型</dt>
                                <dd>
                                    <span v-for="(n,k) of type" :key="k">
                                        <nut-button v-if="k==0" type="actived" shape="circle" small>{{n}}</nut-button>
                                        <nut-button v-else type="light" shape="circle" small >{{n}}</nut-button>
                                    </span>
                                </dd>
                            </dl>
                            <!-- 类型规则开始 -->

                            <!-- 商品订购数量开始 -->
                            <dl class="four_detail">
                                <dt>
                                    数量
                                </dt>
                                <dd>
                                    <nut-stepper 
                                        :value="value"
                                        :min="min" 
                                        :max="max"
                                        :transition="false" 
                                        :simple="false"
                                        @add-no-allow="addNoAllow" 
                                        @reduce-no-allow="reduceNoAllow">
                                    </nut-stepper>
                                </dd>
                            </dl>
                            <!-- 商品订购数量结束 -->
                        </div>
                    </div>

                    <!-- 商品图片介绍开始 -->
                    <div class="img">
                        <img v-for="(n,k) of recommend" :key="k" :src="require(`../assets/detail/` + n)" alt="">
                    </div>
                    <!-- 商品图片介绍结束 -->
                </nut-tab-panel>
                <nut-tab-panel tab-title="评价">页签2</nut-tab-panel>
                <nut-tab-panel tab-title="参数">页签3</nut-tab-panel>
                <nut-tab-panel tab-title="详情">页签4</nut-tab-panel>
            </nut-tab>
            <div class="bottom_lable">
                <p class="time_left">11月17日 10:08开售,敬请期待</p>
                <div class="lable_icon">
                    <mt-tabbar v-model="selected">
                        <mt-tab-item id="index">首页
                            <img slot="icon" src="../assets/details_lable/home_icon_normal.png">
                        </mt-tab-item>
                        <mt-tab-item id="serve">客服
                            <img slot="icon" src="../assets/details_lable/icon_contact_service.png">
                        </mt-tab-item>
                        <mt-tab-item id="toll_free">免费登记
                            <img slot="icon" src="../assets/details_lable/icon_easyBuy_red.png">
                        </mt-tab-item>
                    </mt-tabbar>
                </div>
            </div>
           <div class="lable_last">
                <a href="#">活动即将开启</a>
           </div>
           <!-- 回到顶部开始 -->
            <nut-backtop :bottom="100">
                <div class="return"><img src="../assets/img/top.png" alt=""></div>
            </nut-backtop>
            <!-- 回到顶部结束 -->

            <!-- 浏览器标选项卡标题 -->
            <div class="main" v-title data-title="HUAWEI Mate 40 Pro 5G 全网通 8GB+256GB（亮黑色）- 华为商城"></div>

        </div>
    </div>
</template>

<script>
import { Toast } from 'mint-ui';
        export default {
            data(){
                return{
                    lineWidth:10,
                    asyncStart:1605613161736,
                    asyncEnd:1605628800000,
                    days:false,
                    text:false,
                    min:1,
                    max:100,
                    //储存商品订购数量
                    value:1,
                    // 储存页脚位置id/
                    selected:'toll_free',

                    //储存商品数据
                    carousel_nl:[],
                    //储存商品轮播图
                    carousel:[],
                    //储存商品的颜色规格
                    color:[],
                    //储存商品的版本规格
                    versions:[],
                    //储存商品的类型规格
                    type:[],
                    //储存商品的介绍
                    recommend:[],    
                    // 储存标题
                    title:[]
                }
            },
            mounted(){
                // 从地址栏获取id
                let id = this.$route.params.id;
                //axios请求商品详情信息
                this.axios('/details?id=' + id).then(res=>{
                    this.carousel_nl = res.data.results
                    this.carousel = res.data.results.carousel.split('|')
                    this.color = res.data.results.color.split('|')
                    this.versions = res.data.results.versions.split('|')
                    this.type = res.data.results.type.split('|')
                    this.recommend = res.data.results.recommend.split('|')
                });
            },
            methods:{
                tabSwitch(index,event){
                    console.log(index+'--'+event);
                },
                addNoAllow(){
                    Toast({
                        message: '超出最大限制',
                        position: 'bottom',
                        duration: 3000
                    });
                },
                reduceNoAllow(){
                    Toast({
                        message: '超出最小限制',
                        position: 'bottom',
                        duration: 3000
                    });
                },
            },
            watch:{
                selected(value){
                    console.log(value)
                     if(value == 'index'){
                        this.$router.push('/').catch(e=>{});
                    }
                }
            },
        };
</script>

    
<style>
    /* 回到顶部 */
    #details .return{
        display: flex;
        height: 35px;
        width: 35px;
        align-items: center;
        justify-content: center;
        background-image: linear-gradient(90deg,#000000eb,#000000c9);
        border-radius: 50%;
    }

    .mint-toast-text{
        color: #fff;
    }

   #details .nut-tab{
       background:#fff !important;
    }
   #details .swiper{
        /* margin: 0 auto;
        width: 100%; */
        height: 360px;
    }
   #details .swiper img{
        /* width: 100%; */
        height: 100%;
    }
   #details .nut-tab{
        padding: 0 !important;
    }
    #details .nut-tab-item{
        padding: 0 !important;
        height: 100%;
    }
   #details .nut-tab-title{
        width: 70% !important;
        /* text-align: center; */
        margin: 0 auto;
        border-bottom:none !important;
    }
   #details .pro-property{
        position: relative;
        /* overflow: hidden; */
        background: -webkit-linear-gradient(left, #ff3950, #fe3699);
        padding: 3px 10px 3px 10px;
        height: 3.2rem;
        /* padding-bottom: .2rem; */
    }
   #details .details_back{
        display: inline-block;
        background-image: url(../assets/swiper_img/icon_black_1.png);
        width: 1.2rem;
        height: 1.2rem;
        background-size: cover;
        position: absolute;
        top: 16px;
        z-index: 999;
        left: 16px;
    }
   #details .details_more{
        display: inline-block;
        background-image: url(../assets/swiper_img/icon_header_nav.png);
        width: 1.2rem;
        height: 1.2rem;
        background-size: cover;
        position: absolute;
        top: 16px;
        z-index: 999;
        right: 16px;
    }
   #details .details_price{
        color: #fff !important;
        font-weight: 600 !important;
        font-size: 22px !important;
        float: left;
        margin-top: 6px;
    }
   #details .details_price>span{
        color: #fff !important;
        font-weight: 400 !important;
        font-size:18px;
        float: left;
        margin-top: 4px;
    }
   #details .details_title{
        color: #fff !important;
        font-style: normal;
        /* float: left; */
        position: absolute;
        top: 35px;
        left: 10px;
    }
   #details .details_p_time{
        position: absolute;
        right: 0;
        top: 0;
        bottom: 0;
        width: 6rem;
        text-align: center;
        background-color: rgba(255,255,255,.9);
        font-size: .55rem;
        color: #fe3681 !important;
        padding-top: .29rem;
    }
   #details .time_star{
        display: inline-block;
        color: #fe3681 !important;
        margin-top: 4px;
    }
   #details .nut-cd-dot{
        color: #fe3681 !important;
        padding-right: 5px;
    }
   #details .nut-cd-block{
        display: inline-block;
        margin-top: 10px;
        margin-right: 5px;
        min-width: .75rem;
        height: .85rem;
        color: #fff;
        background-color: #fe3681;
        border-radius: .125rem;
        line-height: .9rem;
    }
   #details .details_primary #pro_name{
        display: inline-block;
        font-size: 1rem !important;
        margin: 10px 10px 10px 10px;
        text-align: left !important;
        /* margin-left:15px; */
        /* overflow: hidden; */
        /* box-sizing: border-box; */
        font-weight: bold;
        color:#383838;
        /* padding-right: 20px; */
    }
   #details .details_primary a span{
        display: inline-block;
        color: #ca141d !important;
        background-position: left bottom !important;
        /* background-image: -webkit-gradient(linear, left top, left bottom, color-stop(1, transparent), color-stop(0.5, #ca141d), to(#ca141d)) !important; */
        background-repeat: repeat-x !important;
        text-align: left !important;
        margin: 0 15px 0 15px;
        padding: 0 0 15px 0;
        border-bottom: 2px solid #f2f2f2;
    }
   #details .pro-meta-sku-content dl{
           margin: 15px 0px 15px 0px;
        display: flex;
    }
   #details .pro-meta-sku-content dl dt{
        /* display: inline-block; */
        flex: 0 0 15%;
        font-weight: bold;
        font-size: .85rem;
        color: black;
    }
   #details .pro-meta-sku-content dl dd{
        display: inline-block;
        /* padding-left: 1.5rem; */
        /* margin-top: -20px; */
        box-sizing: border-box;
        text-align: left !important;
         /* flex: 0 0 85%; */
         margin-left: 20px;
    }
   #details .pro-meta-sku-content dl dt span{
        font-size: .85rem;
        line-height: 1.4;
        color: #333;
        /* display: inline-block; */
        font-weight: bold;
        padding-right: .1rem;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        padding-left: .9rem;
        padding-bottom: 3rem;
        box-sizing: border-box;
        margin-top: 5px;
        box-sizing: border-box;
    }
   /* #details .pro-meta-sku-content .nut-button{
        margin-right: 5px;
    } */
   #details .nut-button.small{
        height: 25px;
        /* line-height: 0px; */
        margin-bottom: 5px;
        /* text-align: left !important; */
        margin: 0px 3px 5px 3px;
    }
   #details .two_detail dd button:last-child{
         margin-bottom: 8px;
    }
   #details .four_detail{
        margin-top: -1.6rem;
    }
   #details .img{
        width: 100%;
    }
   #details .img img{
        width: 100%;
    }
   #details .bottom_lable .time_left{
        position: fixed;
        font-size: .6rem;
        line-height: 3.083;
        text-align: center;
        color: #333;
        border-bottom: 1px solid #eaeaea;
        background-color: #faede5;
        box-sizing: border-box;
        bottom: 44px;
        width: 100%;
    }
   #details .lable_icon{
        position: fixed;
        bottom: -1px;
        /* height: 50px; */
        width: 51%;
        background-color: #fff;
    }
   #details .lable_last{
        width: 50%;
        background-color: #fff;
        height: 55px;
        position: fixed;
        bottom: -1px;
        margin-left: 50%;
    }
   #details .lable_last a{
        display: inline-block;
        width: 208.53;
        height: 38.36;
        background-color:#e43e2d;
        padding:10px 30px;
        color: #fff;
        border-radius: 20px;
        text-align: center;
        margin-top: .5rem;
    }
   #details .mint-tabbar>.mint-tab-item.is-selected{
        background-color:#fff !important;
        color: #e43e2d !important;
    }
    #details .nut-tab-link{
        font-size: 16px;
    }
</style>