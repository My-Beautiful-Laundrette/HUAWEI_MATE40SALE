<template>
    <div>
        <div id="mine">
          <!-- 整个页面的头部 -->
           <header class="mine-head">
              <!-- 固定的头部 -->
              <mt-header title="" fixed>
                  <div id="hide" slot="left" style="opacity:0">
                    <!-- 固定头部左边的头像和登录注册 -->
                    <!-- src="../assets/mine_img/defaultface_user_after.png" -->
                      <img class="myicon" style="height:30px" :src="this.$store.state.avatar" alt="">
                      <span>&nbsp;{{this.$store.state.username}}</span>
                  </div>
                  <div slot="right">
                    <!-- 固定头部右边的两个图标，系统和消息，指向页面待定 -->
                    <router-link slot="right" to="">
                       <img class="myicon" src="../assets/mine_img/system.png" alt="">
                    </router-link>
                    <router-link slot="right" to="">
                       <img class="myicon" src="../assets/mine_img/message.png" alt="">
                    </router-link>
                  </div>
              </mt-header>
           </header>
              <!-- 头部，登录部分 -->
              <section class="myhead">
                   <div>
                     <!-- ../assets/mine_img/defaultface_user_after.png -->
                     <img :src="this.$store.state.avatar" alt="">
                   </div>
                   <div>
                     <p>{{this.$store.state.username}}</p>
                     <p><img src="../assets/mine_img/day.png" alt=""> 签到领积分</p>
                   </div>
              </section>
              <!-- 优惠券和积分部分 -->
              <section class="myticket">
                  <div>
                    <p>{{this.$store.state.integral}}</p>
                    <p>积分</p>
                  </div>
                  <div>
                    <p>{{this.$store.state.youhuiquan}}</p>
                    <p>优惠券</p>
                  </div>
                  <div>
                    <p>{{this.$store.state.daijinquan}}</p>
                    <p>代金券</p>
                  </div>
              </section>
              <!-- 我的订单部分 -->
              <section class="myorderform">
                <div>
                  <div style="font-size:16px">我的订单</div>
                  <div>全部订单></div>
                </div>
                <div>
                  <div>
                    <img src="../assets/mine_img/wait1.png" alt="">
                    <p>待付款</p>
                  </div>
                  <div>
                    <img src="../assets/mine_img/wait21.png" alt="">
                    <p>待收货</p>
                  </div>
                  <div>
                    <img src="../assets/mine_img/wait3.png" alt="">
                    <p>待评价</p>
                  </div>
                  <div>
                    <img src="../assets/mine_img/wait4.png" alt="">
                    <p>退换/退款</p>
                  </div>
                  <div>
                    <img src="../assets/mine_img/wait5.png" alt="">
                    <p>回收单</p>
                  </div>
                </div>
                <mt-swipe class="swipe" :auto="4000">
                  <mt-swipe-item>
                    <img src="../assets/mine_img/swipe1.png" alt="">
                  </mt-swipe-item>
                  <mt-swipe-item>
                      <img src="../assets/mine_img/swipe2.jpg" alt="">
                  </mt-swipe-item>
                  <mt-swipe-item>
                      <img src="../assets/mine_img/swipe3.jpg" alt="">
                  </mt-swipe-item>
                  <mt-swipe-item>
                      <img src="../assets/mine_img/swipe4.jpg" alt="">
                  </mt-swipe-item>
                  <mt-swipe-item>
                      <img src="../assets/mine_img/swipe5.png" alt="">
                  </mt-swipe-item>
                </mt-swipe>
              </section>
              <!-- 我的VMALL部分 -->
              <section class="myvmall">
                 <div>
                   <div >我的VMALL</div>
                 </div>
                 <div>
                   <div>
                     <img src="../assets/mine_img/vmall1.png" alt="">
                     <p>会员频道</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall2.png" alt="">
                     <p>邀请有礼</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall3.png" alt="">
                     <p>教育优惠</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall4.png" alt="">
                     <p>优购码</p>
                   </div>
                 </div>
                 <div>
                   <div>
                     <img src="../assets/mine_img/vmall5.png" alt="">
                     <p>我的拼团</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall6.png" alt="">
                     <p>收货地址</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall7.png" alt="">
                     <p>预约记录</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall8.png" alt="">
                     <p>企业购</p>
                   </div>
                 </div>
              </section>
              <!-- 我的service服务部分 -->
              <section class="myservice">
                <div>
                   <div>我的服务</div>
                   <div>联系客服</div>
                 </div>
                 <div>
                   <div>
                     <img src="../assets/mine_img/service1.png" alt="">
                     <p>自助服务</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/service2.png" alt="">
                     <p>特色服务</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/service3.png" alt="">
                     <p>零售店</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/service4.png" alt="">
                     <p>实名认证</p>
                   </div>
                 </div>
                 <div>
                   <div>
                     <img src="../assets/mine_img/vmall5.png" alt="">
                     <p>以旧换新</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall6.png" alt="">
                     <p>补购保障</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall7.png" alt="">
                     <p>换电池</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/vmall8.png" alt="">
                     <p>常见问题</p>
                   </div>
                 </div>
              </section>
              <!-- 华为生活 -->
              <section class="mylife">
                <div>
                  华为生活
                </div>
                <nut-scroller>
                    <div slot="list" class="nut-hor-list-item" v-for="(item, index) of listData" :key="index">
                        <dl class="nut-scroller-item-info">
                          <img class="img" :src="item.name" alt="">
                        </dl>
                    </div>
                    <!-- <slot slot="more"><div class="nut-hor-jump-more">查看更多</div></slot> -->
                </nut-scroller>
              </section>
              <!-- 推荐 -->
              <section class="recommend">
                 <p>为您推荐</p>
                 <div>
                 <img class="recommend_img" src="../assets/mine_img/swipe5.png" alt="">
                 </div>
                 <div>
                 <img class="recommend_img" src="../assets/mine_img/swipe2.jpg" alt="">
                 </div>
                 <div>
                 <img class="recommend_img" src="../assets/mine_img/swipe3.jpg" alt="">
                 </div>
              </section>
              <!-- 底部部分 -->
              <footer class="footer">
                 <p><a href=""  class="black">登录</a><a href=""  class="black">反馈</a></p>
                 <div>
                   <div>
                     <img src="../assets/mine_img/foot1.png" alt="">
                     <p>客户端</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/foot2.png" alt="">
                     <p>触屏版</p>
                   </div>
                   <div>
                     <img src="../assets/mine_img/foot3.png" alt="">
                     <p>电脑版</p>
                   </div>
                 </div>
                 <p>
                    <a href="">隐私政策</a>
                    <a href="">用户协议</a>
                    <a href="">关于cookie</a>
                 </p>
                 <p class="small">Copyright 2012- VMALL COM 版权所有</p>
                 <p class="small">营业执照 备案主体编号:44201919072182</p>
                 <p class="small">粤ICP备19015064号&nbsp; 粤公网安备44190002003939号</p>
                 <p class="small">增值电信业务经营许可证:粤B2-20190762</p>
              </footer>
        </div>
           <!-- <div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam, minima quibusdam sapiente, omnis voluptatibus cupiditate distinctio ad provident natus doloremque fuga vel facere modi corporis cumque veniam eveniet facilis non magni ratione suscipit libero numquam iste. Quos iusto assumenda praesentium, perspiciatis iure quia aliquid delectus. Inventore numquam repellat, consequuntur atque iusto tempora suscipit minima in iste! Ea voluptates, dolor consequuntur cumque dolorem provident unde veniam, cupiditate perferendis repellendus rerum ducimus dolorum tempora. Aperiam numquam deleniti blanditiis, dolorem dicta odit modi illo corporis provident animi ducimus suscipit quo nihil repellat eius ut quisquam mollitia magnam possimus saepe tempora, excepturi omnis? Corrupti hic nesciunt eum nemo aliquam sunt. Amet quo vero eveniet, incidunt itaque illo sit ut repudiandae quidem dicta ducimus sequi dolor inventore nulla excepturi neque. Aliquid soluta nihil debitis optio placeat quam dolore est quis, aut saepe obcaecati commodi eaque doloremque earum impedit at consequuntur iure doloribus sint pariatur iste blanditiis magni, id rem. Ducimus laborum distinctio eveniet culpa voluptatum voluptates consequuntur quasi deleniti voluptatibus, fuga alias, ratione repellendus hic sapiente similique nam nesciunt voluptatem earum. Voluptas, fuga magni sit nihil quaerat eligendi autem odio consequatur eveniet voluptatum deserunt sint optio, ad adipisci hic quia ex! Earum atque, vero magni exercitationem ratione nam sed commodi tempore quia accusantium. Impedit fugit saepe sit dignissimos cumque quibusdam rem maiores nam debitis, alias nihil consequuntur fuga dicta praesentium temporibus delectus provident officia quam! Vitae possimus vero debitis enim deserunt. Assumenda repudiandae ex rem, cum corrupti tenetur deleniti. Facilis blanditiis consectetur iusto ducimus nesciunt veritatis in nemo vero reprehenderit consequatur numquam architecto at ex sint, maiores incidunt totam labore, ut similique vitae ea repellat! Soluta est distinctio provident esse qui omnis eligendi eaque minus excepturi fugiat commodi eos amet aspernatur dolore corporis enim mollitia aperiam, consectetur perferendis error cupiditate temporibus nulla. Aperiam voluptates voluptas dolores molestias nihil. Eos dignissimos obcaecati, ad vel reprehenderit vero nesciunt amet saepe repudiandae minus dolor temporibus minima sint dolorem, aliquam maxime! Possimus ad dolores ut temporibus consequatur ea explicabo eaque assumenda, culpa quos fugiat maiores recusandae officiis sequi praesentium. Qui hic reprehenderit natus excepturi vero. Repellendus dolorum fuga nam! Cumque, alias amet aspernatur sapiente impedit ducimus cupiditate iste in beatae voluptate! Veritatis reiciendis eius nostrum nesciunt perferendis voluptates facere! Quasi rem eveniet, optio repellendus vel eos provident eligendi voluptatum iste ex sed laboriosam maiores, veritatis veniam ullam illum reprehenderit blanditiis saepe cupiditate debitis laborum. Blanditiis veritatis eligendi, voluptas minima eius iste quos harum magnam ipsum molestias facere cum qui repellendus! Necessitatibus quam autem nihil fugit quasi consectetur magni animi. Delectus culpa quod quisquam. Aut voluptate nihil velit eius, amet beatae commodi asperiores saepe fuga repellendus, fugit dignissimos nesciunt. Itaque ut cumque tempora? Fuga accusantium optio velit? Fugit ad cumque at cum harum, quisquam culpa facilis officiis quam eveniet ab omnis unde libero reprehenderit ipsum repellendus, adipisci corporis quod dolore consectetur modi beatae? Eius quos et, ad, sed rerum atque assumenda distinctio veniam non incidunt iure, nesciunt ullam consequatur corporis ratione hic excepturi blanditiis sequi sint ut ipsam aspernatur error! Doloremque distinctio illum ex unde et veniam, beatae iste dolor eveniet ipsum aliquam dolores sapiente dolore obcaecati necessitatibus provident maxime eum illo, quidem earum cupiditate repellendus sit. Asperiores odit rem inventore perspiciatis natus voluptates nemo cumque nobis a dolorum sint possimus consequatur excepturi id voluptate hic accusantium praesentium soluta optio iure itaque, porro adipisci aliquid? Vitae cupiditate dolore obcaecati? Quia expedita architecto soluta deleniti molestiae. Tempora reiciendis iure distinctio alias odio maxime quia ea, molestiae et. Corrupti repudiandae eligendi officia, libero dolorem natus necessitatibus eum voluptates tempora id, quis in praesentium quae possimus architecto odit dignissimos. Saepe cupiditate minus exercitationem, alias totam expedita dolorum rerum, nobis vitae ab itaque, in a et dolore est. Voluptatem quaerat exercitationem quae alias quas tempora voluptatibus unde sunt iste, quo nulla dicta eligendi veritatis blanditiis non molestiae aliquid soluta ad itaque. Non, praesentium perferendis, nam maxime error, iusto itaque quaerat minima suscipit eligendi ut nemo obcaecati dolore possimus doloribus perspiciatis temporibus? Ullam suscipit voluptas exercitationem id fuga natus, ipsa, ducimus cum nemo quasi recusandae consectetur voluptatibus voluptatum obcaecati quisquam veniam similique. Autem eaque iste necessitatibus, deleniti tempore ex quaerat repellendus totam consequuntur soluta fuga excepturi corrupti consequatur dignissimos aperiam dolorem illum? Quasi cum temporibus doloremque quam labore omnis quod nemo, illum magnam animi quisquam nisi quidem. Pariatur earum consequatur quas iusto debitis similique placeat enim odio voluptatibus quos dolorum laborum qui temporibus non iure molestias, ut vero corporis. Assumenda laborum non ut nihil doloribus dicta. Nesciunt, cumque dolor facilis neque fugiat provident, obcaecati officiis repudiandae, sint in quasi. Beatae, necessitatibus quia impedit dolore iusto quibusdam deserunt eius voluptas est corrupti voluptate? Ea inventore accusantium fugiat, fuga saepe veniam possimus minus molestias, sunt odio dicta amet! Magni qui, quia non maiores sed fuga! Ipsam, vero et molestiae vitae reprehenderit, veritatis veniam, cum quis harum voluptas nemo? Deleniti dolor dolorem, porro error, nostrum laborum reprehenderit illum ipsam doloribus obcaecati sed sit maxime qui commodi molestiae animi iure corporis consectetur necessitatibus eius corrupti, id ducimus. Cum quasi exercitationem quae voluptate sapiente illo eaque enim tenetur similique fugiat, vitae laudantium deleniti, repudiandae ad quas veniam, labore a rerum distinctio magnam? Iusto et optio totam laborum, in officia nisi. Iusto necessitatibus vitae esse magnam ratione facere ad quasi minus, a sit ducimus reprehenderit quisquam sunt veritatis dolorem laborum incidunt! Voluptates modi similique fugiat, illum commodi illo exercitationem obcaecati veritatis eius inventore architecto eveniet quis. Officiis distinctio quis eos? Ullam velit nisi natus temporibus tempore placeat nostrum. Placeat ex exercitationem, atque non animi, ea perferendis vitae praesentium velit explicabo dolores sapiente a molestias odio laudantium consequuntur et ipsum. Velit facere hic animi. Similique molestiae illum quibusdam, dolore consectetur ipsa culpa voluptates, reprehenderit cum eveniet, omnis cupiditate! Totam eligendi obcaecati nihil libero, nobis dicta cum ullam perferendis ducimus culpa assumenda temporibus quisquam esse laborum earum tempora, dignissimos sequi, repellat ea numquam illum soluta unde vero impedit? Maiores hic porro necessitatibus dolorum quae corrupti reprehenderit deleniti excepturi, magni qui, aliquam vero explicabo perspiciatis! Nesciunt sapiente sequi quos, fugit dignissimos facilis optio dolorem.</div> -->
           <!-- 引入页脚 -->
           <Mete-footer></Mete-footer>
    </div>
    <!-- </div> -->
</template>


<style scoped>
    body,p,div,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,form,input,select,table,tr,td,th{
      margin: 0;
      padding: 0;
    }
    ul,ol{
      list-style: none;
    }
    /* 响应式调整fixed标签和图片的格式大小 */
    @media (min-width: 720px){
      #mine{
        width: 720px;
      }
      #mine [class^='mint-header']{
        width: 720px;
        left: 50%;
        margin-left: -360px;
      }
      #mine .swipe{
        height: 190px;
      }
      #mine .img{
        width: 295px;
      }
    }
    @media (max-width: 719.99px){
      #mine{
        width: 100%;
      }
      #mine [class^='mint-header']{
        width:100%;
      }
      #mine .img{
        width:40vw;
      }
      #mine .swipe{
        height: 26vw;
      }
    }
    #mine{
        color: #666;
        background-color: #f9f9f9;
        margin: 0 auto;
    }
    /* 头部固定部分，用了组件所以只改部分样式 */
    #mine .mint-header span,#mine .myhead p{
      color: #fff;
    }
    #mine .mint-header{
      background-color: #e73832;
      padding-top: 10px;
      padding-bottom: 10px;
      font-size: 17px;
    }
    #mine .myicon{
      height: 22px;
      margin-left: 10px;
      border-radius: 50%;
    }
    /* 头部登录部分 */
    #mine .myhead{
      padding-top: 50px;
      width: 100%;
      height: 150px;
      background-color: #e73832;
      border-bottom-left-radius: 20px;
      border-bottom-right-radius: 20px;
      color: #fff;
    }
    #mine .myhead>div>img{
      width: 62.49px;
      border-radius: 50%;
    }
    #mine .myhead>div{
      float: left;
      margin-left: 20px;
    }
    #mine .myhead>div:nth-child(2){
      height: 62.49px;
      display: flex;
      flex-direction: column;
      justify-content:space-around;
      align-items: left;
    }
    #mine .myhead>div:nth-child(2)>p{
      width: 100%;
    }
    #mine .myhead>div:nth-child(2)>p:first-child{
      font-size: 22px;
    }
    #mine .myhead>div:nth-child(2)>p:nth-child(2){
      padding-top: 5px;
      padding-bottom: 5px;
      display: block;
      font-size: 12px;
      background-color:  #ce302c;
      border-radius: 11px;
      width: 100px;
      
    }
    #mine .myhead>div:nth-child(2)>p:nth-child(2)>img{
      height: 12px;
    }
    /* 优惠券部分 */
    #mine .myticket{
      display: flex;
      justify-content: space-around;
      flex-direction: row;
      background-color: #fff;
      margin-top: -30px;
      width: 94%;
      margin-left: 3%;
      padding-top: 18px;
      padding-bottom: 18px;
      box-shadow: #ccc 0px 3px 5px;
      border-radius: 10px;
    }
    #mine .myticket>div>p{
      color: #000;
      font-size: 12px;
      margin-top: 7px;
    }
    /*用户订单状态部分*/
    #mine .myorderform{
      margin-top: 10px;
      background-color: #fff;
      width: 94%;
      margin-left: 3%;
      font-size: 12px;
      font-weight: bold;
      border-radius: 10px;
    }
    #mine .myorderform>div:first-child{
      color: #000;
      padding: 10px;
      display: flex;
      justify-content: space-between;
    }
    #mine .myorderform>div:nth-child(2){
      display: flex;
      justify-content: space-around;
    
    }
    #mine .myorderform img{
      width: 40px;
      height: 40px;
      margin-top: 5px;
      margin-bottom: 8px;
    }
    #mine .myorderform>div:nth-child(2)>div:nth-child(2)>img{
      width: 34px;
      height: 34px;
      margin-top: 8px;
      margin-bottom: 11px;
    }
    /* 轮播图部分 */
    #mine .swipe{
      width: 94%;
      /* height: 26vw; */
      margin-top: 10px;
      margin-bottom: 10px;
      border-radius: 10px;
      margin-left: 3%;
    }
    #mine .swipe img {
      height: 100%;
      width: 100%;
      border-radius: 10px;
    }
    /* 我的VMALL部分 myvmall */
    /* 我的服务部分 myservice*/
    /* 华为生活部分 mylife*/
    /* 底部信息部分 */
    #mine .myvmall,#mine .myservice,#mine .mylife,#mine .footer{
      border-radius: 10px;
      width: 94%;
      margin-top: 10px;
      margin-left: 3%;
      display: flex;
      justify-content: center;
      flex-direction: column;
      background-color: #fff;
    }
    #mine .myvmall>div:first-child,
    #mine .myservice>div:first-child,
    #mine .mylife>div:first-child{
      display: flex;
      justify-content: left;
      font-size: 16px;
      font-weight: bold;
      padding: 10px;
      color: #000;
    }
    #mine .myservice>div:first-child{
      justify-content: space-between;
    }
    #mine .myvmall>div:nth-child(2),#mine .myvmall>div:nth-child(3),
    #mine .myservice>div:nth-child(2),#mine .myservice>div:nth-child(3){
      display: flex;
      justify-content: space-around;
    }
    #mine .myvmall>div:nth-child(2) img,#mine .myvmall>div:nth-child(3) img,
    #mine .myservice>div:nth-child(2) img,#mine .myservice>div:nth-child(3) img,
    #mine .footer img{
      width: 40px;
      height: 40px;
      margin-top: 20px;
      margin-bottom: 10px;
    }
    #mine .myvmall>div:nth-child(3)>div:first-child>p,
    #mine .myservice>div:nth-child(3)>div:first-child>p{
      margin-bottom: 20px;
    }
    /* 推荐部分图片部分 */
    #mine .recommend_img{
      width: 100%;
      border-radius: 10px;
      margin-top: 5px;
      margin-bottom: 5px;
    }
    #mine .recommend>p{
      margin-top: 20px;
      margin-bottom: 20px;
      font-size: 4vw;
      font-weight: bold;
    }
    #mine .recommend>div{
      width: 94%;
      margin-left: 3%;
      background-color: #fff;
      border-radius: 10px;
      margin-top: 1px;
    }
    /* 底部信息部分 */
    #mine .footer{
      text-align: center;
    }
    #mine .footer p,#mine .footer a{
      font-size: 14px;
      color: #9b9b9b;
      line-height: 18px;
    }
    #mine .footer .small{
      font-size: 12px;
      line-height: 14px;
    }
    #mine .footer>p:first-child>a{
      display: block;
      float: left;
      width: 20%;
      margin-top: 10px;
      margin-bottom: 10px;
    }
    #mine .footer>p:first-child>a:first-child{
      margin-left: 30%;
    }
    #mine .footer>div{
      display: flex;
      justify-content: center;
    }
    #mine .footer .black{
      color: #333;
    }
    #mine .footer>div>div{
      margin-left:5% ;
      margin-right: 5%;
      /* padding-left: 20px;
      padding-right: 20px; */
    }
    #mine .footer>p:nth-child(2){
      margin-top: 10px;
      margin-bottom: 10px;
    }
    #mine .footer::after{
      content: "";
      width: 100%;
      display: block;
      height: 65px;
    }
</style>
<script scoped>
export default {
   data(){
     return{
         listData:[
           {name:'life1.png'},
           {name:'life2.png'},
           {name:'life3.png'}
           ]
     }
   },
   methods:{
        
   },
   mounted(){
     if(!this.$store.state.avatar){
       this.$store.state.avatar=require("../assets/mine_img/defaultface_user_after.png");
     }
    //  this.$store.state.avatar=require("../assets/mine_img/defaultface_user_after.png");
     this.listData.forEach(item=>{
       item.name=require('../assets/mine_img/'+item.name);
     })
     this.scrollevent=function(){
        let hide=Math.min(window.pageYOffset,180);
        if(document.getElementById('hide')){
           document.getElementById('hide').style.opacity=hide/180;
        }
        
     }
    window.addEventListener("scroll", this.scrollevent,true)
   }
   
}
</script>