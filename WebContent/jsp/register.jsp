<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <title>注册</title>
   	<link rel="stylesheet" href="/cms01/css/bootstrap.min.css" />
	<script src="js/jquery-1.12.4.min.js"></script>
	<script src="layui/layui.js"></script>

<style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style> 
</head>
<body>
	<div class="container">

      <form class="form-signin" action="/cms01/register" method="post">
        <h2 class="form-signin-heading">欢迎新用户注册</h2>
        <input type="text" class="input-block-level" name="username" placeholder="用户名">
        <input type="password" class="input-block-level" name="password" placeholder="密码"><br/>
        
        <button class="btn btn-large btn-primary" type="submit">注册</button>
        <button class="btn btn-large btn-primary"  type="reset" >清空</button>
      </form>

    </div>
</body>
</html>