<template>
    <div>
        <div class="header-contain-center UI5marginLR">
            <div style="padding-top:16px">
                <div class="center">
                    <i class="logo"></i>
                </div>
                <div class="title">华为账号</div>
                <div class="title_detail">登录华为帐号以使用云空间、华为应用及更多服务</div>
                <div>
                    <mt-field
                    lable="用户名"
                    placeholder="手机号/邮箱号/华为号"
                    type="text"
                    v-model="username"
                    ></mt-field>
                    <mt-field
                    lable="密码"
                    placeholder="密码"
                    type="password"
                    v-model="password"
                    ></mt-field>
                </div>
                <div class="auxiliary_equipment">
                    <router-link to="/login">短信验证码登录</router-link>
                    <router-link to="/login">忘记密码</router-link>
                </div>
                <div class="button">
                    <mt-button type="danger" size="large" class="btn1" @click="handle">登录/注册</mt-button>
                    <mt-button type="danger" size="large" class="btn2">注册账号</mt-button>
                </div>
                <div class="bottom">
                    <router-link to="/login">遇见问题</router-link>
                    <p>其它方式登录</p>
                    <span class="icon1">
                        <img src="../assets/login_img/qq.png" alt="">
                    </span>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                username:'',
                password:''
            }
        },
        methods:{
            //单击效验表单
            handle(){
               let username=this.username;
               let password=this.password;
               let reguser=/^[0-9a-zA-Z]{6,12}$/;
               let regpswd=/^[0-9a-zA-Z]{6,}$/;
            //    (?![0-9A-Z]+$)(?![a-zA-z]+$)
               //检查用户名
               if(reguser.test(username)){
                //    return true;
               }else{
                   //显示短消息提示框
                   this.$toast({
                       message:"用户名格式或内容错误",
                       position:"bottom",
                       duration:5000
                   });
                   return false;
               }
               //检查密码
               if(regpswd.test(password)){
                //    return true;
               }else{
                    this.$toast({
                       message:"密码错误请注意大小写",
                       position:"bottom",
                       duration:5000
                   });
                   return false;
               }
               if(reguser.test(username)==regpswd.test(password)){
                    this.axios.get("/login?username="+this.username+"&password="+this.password).then(res=>{
                        if(res.data.code==1){
                            this.$router.push('/mine');
                            this.$toast({
                                message:"登陆成功",
                                position:"bottom",
                                duration:5000
                            });
                            this.$store.state.username="你好！"+this.username;
                            this.$store.state.integral=res.data.userInfo.integral;
                            this.$store.state.youhuiquan=res.data.userInfo.youhuiquan;
                            this.$store.state.daijinquan=res.data.userInfo.daijinquan;
                            this.$store.state.avatar=require("../assets/avatar_img/"+res.data.userInfo.avatar) ;
                        }
                        console.log(res);
                    });
                   //  /index    
                   //提示消息
               }

              
                // this.axios.post('/register','username='+this.username+'&password='+this.password).then(res=>{
                //     if(res.data.code==1){
                //         this.$router.push('/login');
                //     }else{
                //         this.$messagebox("提示信息","用户已存在");
                //     }
                // });
            }
        }
    }
</script>

<style scoped>
    .center{
        text-align: center;
        justify-content: center;
        -webkit-box-align: center;
    }

    .center .logo{
        width: 40px;
        height: 40px;
        display:inline-block;
        margin-bottom: 16px;
        background-image: url(../assets/login_img/1.png);
        background-size:100%;
        background-repeat: no-repeat;
        background-position:50%;
    }
    .header-contain-center{
        padding: 10% 0;
    }
    .UI5marginLR{
        margin: 0 24px;
    }
    .title{
         font-weight: 700;
         font-size: 25px;
         color: #333;
         margin-bottom: 10px;
    }
    .title_detail{
        font-size: 14px;
        color: #666;
        margin-bottom: 60px;
    }
    .mint-cell{
        /* background-color:#666 !important; */
        border-bottom: 1px solid #f2f2f2 !important;
    }
    .mint-field-core{
        margin-bottom: -20px;
    }
    .auxiliary_equipment{
        margin-top: 20px;
        display: flex;
        justify-content: space-between;
    }
    .auxiliary_equipment a{
        color: #0aa1ed;
        text-decoration:none;
        margin-bottom: 20px;
    }
    .mint-button--danger{
        background-color:#ca141d;
    }
    .mint-button{
        border-radius:20px !important;
    }
    .btn1{
        margin-bottom: 20px;
        color: #fff !important;
    }
    .btn2{
        background-color: #f2f2f2 !important;
    }
    .btn2>.mint-button-text{
        color: #ca141d !important;
    }
    .bottom{
        margin-top: 14rem;
        text-align: center;
        position: relative;
        margin-bottom: 24px;
        min-height: 40px;
    }
    .bottom a{
        color: #0aa1ed;
        text-decoration: none;
        display: inline-block;
        padding-bottom:10px;
    }
    .bottom p{
        color: #999;
        display:block;
        padding-bottom:10px;
    }
    .bottom .icon1{
        display: inline-block;
        width: 68px;
        text-align: center;
    }
    .bottom img{
        width: 40px;
        height: 40px;
    }
</style>