<template>
    <div>
        <div>
                <router-link to="/" class="details_back"></router-link>
                <router-link to="/" class="details_more"></router-link>
                <nut-tab @tab-switch="tabSwitch" :line-width="10">
                <nut-tab-panel tab-title="商品">
                    <div class="swiper">
                        <mt-swipe :auto="6000" :show-indicators="false">
                                <mt-swipe-item >
                                <img src="../assets/swiper_img/1.png" alt="">
                                </mt-swipe-item>
                                <mt-swipe-item >
                                    <img src="../assets/swiper_img/2.png" alt="">
                                </mt-swipe-item>
                                <mt-swipe-item >
                                <img src="../assets/swiper_img/3.png" alt="">
                                </mt-swipe-item>
                                <mt-swipe-item >
                                    <img src="../assets/swiper_img/4.png" alt="">
                                </mt-swipe-item>
                                <mt-swipe-item >
                                    <img src="../assets/swiper_img/5.png" alt="">
                                </mt-swipe-item>
                        </mt-swipe>
                    </div>
                    <div class="pro-property">
                        <p class="details_price"><span>¥</span>6900.00</p>
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
                            <h1>
                                <span id="pro_name">HUAWEI Mate 40 Pro 5G 全网通 8GB+256GB（亮黑色）</span>
                            </h1>
                            <router-link to="/"><span>【10:08限量开售】①赠手机摄影课程，抽国内机票 ②点击前往老用户专场>>> ③晒图前1000名赠50元花币卡</span></router-link>
                            <div class="pro-meta-sku-content">
                                    <dl>
                                        <dt>
                                            <span>颜色</span>
                                        </dt>
                                        <dd>
                                        <nut-button 
                                            type="actived" 
                                            shape="circle" 
                                            small
                                            >
                                            亮白色
                                            </nut-button>
                                            <nut-button 
                                            type="light" 
                                            shape="circle" 
                                            small
                                            >
                                            釉白色
                                            </nut-button>
                                            <nut-button 
                                            type="light" 
                                            shape="circle" 
                                            small
                                            >
                                            秘银色
                                            </nut-button><br>
                                            <nut-button 
                                            type="light" 
                                            shape="circle" 
                                            small
                                            >
                                            夏日白羊
                                            </nut-button>
                                            <nut-button 
                                            type="light" 
                                            shape="circle" 
                                            small
                                            >
                                            秋日白色
                                            </nut-button><br>
                                        </dd>
                                    </dl>
                                    <dl class="two_detail">
                                        <dt>
                                           <span>版本</span>
                                        </dt>
                                        <dd>
                                          <nut-button 
                                            type="light" 
                                            shape="circle" 
                                            small
                                            >
                                            5G全网通 8GB+256GB
                                            </nut-button>
                                            <nut-button 
                                            type="light" 
                                            shape="circle" 
                                            small
                                            class="actived"
                                            >
                                            5G全网通 8GB+256GB
                                            </nut-button>
                                        </dd> 
                                    </dl>
                                      <dl class="three_detail">
                                        <dt>
                                           <span>类型</span>
                                        </dt>
                                        <dd>
                                           <nut-button 
                                            type="light" 
                                            shape="circle" 
                                            small
                                            class="actived"
                                            >
                                            官方标配
                                            </nut-button>
                                        </dd>
                                    </dl>
                                    <dl class="four_detail">
                                        <dt>
                                           <span>数量</span>
                                        </dt>
                                        <dd>
                                            <nut-stepper 
                                            :value="val2"
                                            :min="min" 
                                            :max="max"
                                            :transition="false" 
                                            :simple="false"
                                            @add-no-allow="addNoAllow" 
                                            @reduce-no-allow="reduceNoAllow"
                                            ></nut-stepper>
                                        </dd>
                                    </dl>
                            </div>
                    </div>
                    <div class="img">
                        <img src="../assets/detail/1.jpg" alt="">
                        <img src="../assets/detail/2.jpg" alt="">
                        <img src="../assets/detail/3.jpg" alt="">
                        <img src="../assets/detail/4.jpg" alt="">
                        <img src="../assets/detail/5.jpg" alt="">
                        <img src="../assets/detail/6.jpg" alt="">
                        <img src="../assets/detail/7.jpg" alt="">
                        <img src="../assets/detail/8.jpg" alt="">
                        <img src="../assets/detail/9.jpg" alt="">
                    </div>
                </nut-tab-panel>
                <nut-tab-panel tab-title="评价">页签2</nut-tab-panel>
                <nut-tab-panel tab-title="参数">页签3</nut-tab-panel>
                <nut-tab-panel tab-title="详情">页签4</nut-tab-panel>
            </nut-tab>
            <div class="bottom_lable">
                <p class="time_left">11月17日 10:08开售,敬请期待</p>
                <div class="lable_icon">
                        <mt-tabbar v-model="selected">
                            <mt-tab-item id="index">
                                <img slot="icon" src="../assets/details_lable/home_icon_normal.png">
                                首页
                            </mt-tab-item>
                            <mt-tab-item id="serve">
                                <img slot="icon" src="../assets/details_lable/icon_contact_service.png">
                                客服
                            </mt-tab-item>
                            <mt-tab-item id="toll_free">
                                <img slot="icon" src="../assets/details_lable/icon_easyBuy_red.png">
                                免费登记
                            </mt-tab-item>
                            </mt-tabbar>
                     </div>
                </div>
           <div class="lable_last">
                 <a href="#">活动即将开启</a>
           </div>
        </div>
    
    </div>
</template>

<script>
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
                    val2:1,
                    selected:'toll_free'
                }
            },
            methods: {
                tabSwitch(index,event){
                    console.log(index+'--'+event);
                    },
                    addNoAllow(){
                    alert('超出最大限制')
                    },
                    reduceNoAllow(){
                    alert('超出最小限制')
                    },
                }

                };
</script>

    
<style>
    .nut-tab{
       background:#fff !important;
    }
    .swiper{
        margin: 0 auto;
        width: 100%;
        height: 360px;
    }
    .swiper img{
        width: 100%;
        height: 100%;
    }
    .nut-tab{
        padding: 0 !important;
    }
    .nut-tab-item{
        padding: 0 !important;
    }
    .nut-tab-title{
        width: 80% !important;
        text-align: center;
        margin: 0 auto;
        border-bottom:none !important;
    }
    .pro-property{
        position: relative;
        overflow: hidden;
        background: -webkit-linear-gradient(left, #ff3950, #fe3699);
        padding-left: .8rem;
        height: 3.2rem;
        padding-bottom: .2rem;
    }
    .details_back{
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
    .details_more{
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
    .details_price{
        color: #fff !important;
        font-weight: 600 !important;
        font-size: 22px !important;
        float: left;
        margin-top: 6px;
    }
    .details_price>span{
        color: #fff !important;
        font-weight: 400 !important;
        font-size:18px;
        float: left;
        margin-top: 4px;
    }
    .details_title{
        color: #fff !important;
        font-style: normal;
        /* float: left; */
        position: absolute;
        top: 35px;
        left: 10px;
    }
    .details_p_time{
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
    .time_star{
        display: inline-block;
        color: #fe3681 !important;
        margin-top: 4px;
    }
    .nut-cd-dot{
        color: #fe3681 !important;
        padding-right: 5px;
    }
    .nut-cd-block{
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
    .details_primary #pro_name{
        display: inline-block;
        font-size: 1rem !important;
        margin-top: 15px;
        margin-bottom: 10px;
        text-align: left !important;
        margin-left:15px;
        overflow: hidden;
        box-sizing: border-box;
        /* padding-right: 20px; */
    }
    .details_primary a span{
        display: inline-block;
        color: #ca141d !important;
        background-position: left bottom !important;
        /* background-image: -webkit-gradient(linear, left top, left bottom, color-stop(1, transparent), color-stop(0.5, #ca141d), to(#ca141d)) !important; */
        background-repeat: repeat-x !important;
        text-align: left !important;
        margin-bottom: 15px;
        margin-left:15px;
    }
    .pro-meta-sku-content dl{
        display: flex;
    }
    .pro-meta-sku-content dl dt{
        display: inline-block;
        flex: 0 0 15%;
    }
    .pro-meta-sku-content dl dd{
        display: inline-block;
        padding-left: 1.5rem;
        /* margin-top: -20px; */
        box-sizing: border-box;
        text-align: left !important;
         flex: 0 0 85%;
    }
    .pro-meta-sku-content dl dt span{
        font-size: .6rem;
        line-height: 1.4;
        color: #333;
        display: inline-block;
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
    .pro-meta-sku-content .nut-button{
        margin-right: 5px;
    }
    .nut-button.small{
        height: 25px !important;
        line-height: 0px;
        margin-bottom: 5px;
        text-align: left !important;
    }
    .two_detail dd button:last-child{
         margin-bottom: 16px;
    }
    .four_detail{
        margin-top: -1.6rem;
    }
    .img{
        width: 100%;
    }
    .img img{
        width: 100%;
    }
    .bottom_lable .time_left{
        position: fixed;
        font-size: .6rem;
        line-height: 2.083;
        text-align: center;
        color: #333;
        border-bottom: 1px solid #eaeaea;
        background-color: #faede5;
        box-sizing: border-box;
        bottom: 50px;
        width: 100%;
    }
    .lable_icon{
        position: fixed;
        bottom: 0px;
        height: 50px;
        width: 50%;
        background-color: #fff;
    }
    .lable_last{
        width: 50%;
        background-color: #fff;
        height: 50px;
        position: fixed;
        bottom: 0;
        margin-left: 50%;
    }
    .lable_last a{
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
    .mint-tabbar>.mint-tab-item.is-selected{
        background-color:#fff !important;
        color: #e43e2d !important;
    }
</style>