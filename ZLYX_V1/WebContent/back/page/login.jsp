<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理-登陆</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="back/lib/layui-v2.5.5/css/layui.css" media="all">
<style>
        body {background-image:url("back/images/bg.jpg");height:100%;width:100%;}
        #container{height:100%;width:100%;}
        input:-webkit-autofill {-webkit-box-shadow:inset 0 0 0 1000px #fff;background-color:transparent;}
        .admin-login-background {width:300px;height:300px;position:absolute;left:50%;top:40%;margin-left:-150px;margin-top:-100px;}
        .admin-header {text-align:center;margin-bottom:20px;color:#ffffff;font-weight:bold;font-size:40px}
        .admin-input {border-top-style:none;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;height:50px;width:300px;padding-bottom:0px;}
        .admin-input::-webkit-input-placeholder {color:#a78369}
        .layui-icon-username {color:#a78369 !important;}
        .layui-icon-username:hover {color:#9dadce !important;}
        .layui-icon-password {color:#a78369 !important;}
        .layui-icon-password:hover {color:#9dadce !important;}
        .admin-input-username {border-top-style:solid;border-radius:10px 10px 0 0;}
        .admin-input-verify {border-radius:0 0 10px 10px;}
        .admin-button {margin-top:20px;font-weight:bold;font-size:18px;width:300px;height:50px;border-radius:5px;background-color:#a78369;border:1px solid #d8b29f}
        .admin-icon {margin-left:260px;margin-top:10px;font-size:30px;}
        i {position:absolute;}
        .admin-captcha {position:absolute;margin-left:205px;margin-top:-40px;}
</style>
</head>
<body>
<div id="container">
    <div></div>
    <div class="admin-login-background">
        <div class="admin-header">
            <span>ZLYX后台管理</span>
        </div>
        <form class="layui-form" action="">
            <div>
                <i class="layui-icon layui-icon-username admin-icon"></i>
                <input type="text" id="userName" name="userName" placeholder="请输入用户名" autocomplete="off" class="layui-input admin-input admin-input-username" value="admin01">
            </div>
            <div>
                <i class="layui-icon layui-icon-password admin-icon"></i>
                <input type="password" name="pwd" placeholder="请输入密码" autocomplete="off" class="layui-input admin-input" value="123456">
            </div>
            <div>
                <input type="text" name="captcha" placeholder="请输入验证码" autocomplete="off" class="layui-input admin-input admin-input-verify">
                <img class="admin-captcha" width="90" height="30" src="back/images/captcha.jpg">
            </div>
            <button class="layui-btn admin-button" lay-submit="" lay-filter="login">登 陆</button>
            <div>
                <i class="layui-icon admin-icon" style="color:red">${msg }</i>
            </div>
        </form>
        <button class="layui-btn admin-button" id="upbutton" type="button">
			面部识别
		</button>
    </div>
</div>
<script src="back/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form','jquery','upload'], function () {
        var form = layui.form,
            layer = layui.layer,
            upload=layui.upload,
            $ = layui.jquery;

        $("#upbutton").on("click",function(){
			layer.open({
				type: 2,
				title: '信息详情',
				closeBtn: 1,
				shadeClose: true,
				area:['40%','70%'],
				btnAlign:'c',
				content: 'back/page/faceId.html',
				success: function(layero, index){
					
				}
			});
		})
       
        
        // 登录过期的时候，跳出ifram框架
        if (top.location != self.location) top.location = self.location;

        // 进行登录操作
        form.on('submit(login)', function (data) {
            data = data.field;
            if (data.userName == '') {
                layer.msg('用户名不能为空');
                return false;
            }
            if (data.pwd == '') {
                layer.msg('密码不能为空');
                return false;
            }
            if (data.captcha == ''||data.captcha!='xszg') {
                layer.msg('验证码错误');
                return false;
            }
    		var url="login.do";
    		//手动post
    		$.post(url,data,function(txt){
    			if(txt=="ok"){
    				layer.msg('登录成功 正在跳转', function () {
    	            	window.location = '/ZLYX_V1/back/index.jsp';
    	            });
    			}else{
    				layer.msg("用户名或密码错误");
    			}
    		});
            return false;
        });
    });
</script>
</body>
</html>