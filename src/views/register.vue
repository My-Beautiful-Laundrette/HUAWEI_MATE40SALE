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
                    @blur.native.capture="checkUsername"
                    ></mt-field>
                    <mt-field
                    lable="密码"
                    placeholder="密码"
                    type="password"
                    v-model="password"
                    @blur.native.capture="checkPassword"
                    ></mt-field>
                    <mt-field
                    lable="重复密码"
                    placeholder="再次输入密码"
                    type="password"
                    v-model="conpassword"
                    @blur.native.capture="checkConpassword"
                    ></mt-field>
                </div>
                <!-- <div class="auxiliary_equipment">
                    <router-link to="/login">短信验证码登录</router-link>
                    <router-link to="/login">忘记密码</router-link>
                </div> -->
                <div class="button">
                    <mt-button type="danger" size="large" class="btn1" @click="handle">注册</mt-button>
                    <!-- <mt-button type="danger" size="large" class="btn2">注册账号</mt-button> -->
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
import { Toast } from 'mint-ui';
  export default {
  data() {
    return {
      //用户名、密码及确认密码的变量
      username: "",
      password: "",
      conpassword: ""
    //   usernameState:"",
    //   passwordState:"",
    //   conpasswordState:""
    };
  },
  methods: {
    //单击免费注册按钮时校验表单
    handle(){
      //会引发短路现象
      if(this.checkUsername() && this.checkPassword() && this.checkConpassword()){
        // let obj={
        //   username:this.username,
        //   password:this.password
        // }
        //现在要发送相关的用户名、密码到WEB服务器
        this.axios.post('/register',"username="+this.username+"&password="+this.password).then(res=>{
            // this.qs.stringify(obj)
                //代表用户注册成功
                if(res.data.code==1){
                    Toast('注册成功,请登录');
                   this.$router.push('/login');
                }else{
                   this.$messagebox('提示信息','用户名已存在');
                }
        });
      }
    },
    //检测用户名
    checkUsername() {
      let username = this.username;
      let usernameReg = /^[0-9a-zA-Z]{6,12}$/;
      if (usernameReg.test(username)) {
        return true;
        this.usernameState="success";
      } else {
        //终止函数的执行
        this.usernameState="danger";
        return false;
      }
    },
    //检测密码
    checkPassword() {
      let password = this.password;
      let passwordReg = /^[0-9A-Za-z\.\-_]{8,15}$/;
      if (passwordReg.test(password)) {
        return true;
        this.passwordState="success";
      } else {
        this.passwordState="danger";
        return false;
      }
    },
    //检测两次密码是否一致
    checkConpassword() {
      //校验两次密码是否一致
      let password = this.password;
      let conpassword = this.conpassword;
      if (password == conpassword) {
        return true;
        this.conpasswordState="success";
      } else {
        this.conpasswordState="danger";
        return false;
      }
    },
  },
};
</script>

<style scoped>
    .center{
        text-align: center;
        justify-content: center;
        -webkit-box-align: center;
    }

    .logo{
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
        margin-top: 40px;
        margin-bottom: 20px;
        color: #fff !important;
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