const express=require('express');
const cors=require('cors');
const mysql=require('mysql');
const pool=mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'mojack',
    charset:'utf8',
    database:'huaweishop',
    connectionLimit:20
})
const server=express();
server.use(cors({
    origin:["http://localhost:8080","http://127.0.0.1:8080"]
}));
// server.get('category',(req,res)=>{
//     let sql='SELECT id,category_name FROM xzqa_category';
//     pool.query(sql,(err,results)=>{
//         if(err) throw err;
//         res.send({message:1,code:1,results:results});
//     })
// })
// server.post('/login',(req,res)=>{
//   //获取用户名和密码
//   let username=req.body.username;
//   let password=req.body.password;
//   let sql='SELECT id,username,avatar,article_number,nickname FROM xzqa_author WHERE username=? AND password=MD5(?)';
//   pool.query(sql,[username,password],(error,results)=>{
//       if(error) throw error;
//       if(results.length){
//           res.send({message:'登录成功',code:1,userInfo:results[0]});
//       }else{
//           res.send({message:'登录失败，请检查用户名和密码',code:0});
//       }
//   });
// });
server.get('/login',(req,res)=>{
  //获取用户名和密码
  let username=req.query.username;
  let password=req.query.password;
  console.log(username,password);
  let sql='SELECT id,username,password,integral, youhuiquan,daijinquan,avatar FROM user WHERE username=? AND password=?';
  pool.query(sql,[username,password],(error,results)=>{
      if(error) throw error;
      if(results.length){
          res.send({message:'登录成功',code:1,userInfo:results[0]});
      }else{
          res.send({message:'登录失败，请检查用户名和密码',code:0});
      }
  });
});
server.listen(3000);