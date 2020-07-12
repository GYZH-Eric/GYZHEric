<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>rec list</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Replenish a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style6.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
</head>

<body>
    <!-- banner-inner -->
    <div id="demo-1" class="page-content">
        <div class="dotts">
            <div class="header-top">
                <header>
                    <div class="top-head ml-lg-auto text-center">
                        <div class="row">
                
                            <div class="col-md-4">
                            	<span>Welcome ZLYX!</span>
                            </div>
                            <div class="col-md-3 sign-btn" >
                            	<a href="#" data-toggle="modal" data-target="#exampleModalCenter">
                            		<i class="far fa-user"></i> 登 录</a>
                            </div>
                            <div class="col-md-3 sign-btn">
                            	<a href="#" data-toggle="modal" data-target="#exampleModalCenter2">
                            		<i class="fas fa-user-plus"></i> 注 册</a>
                            </div>
                			<div class="col-md-3 sign-btn dropdown" id="user">
                				<a href="javascript:void(0)">
                					<i class="fas fa-user" id="showUser">${userNameFront} </i> 
                				</a>
                				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
                					<a href="javascript:void(0)" class="dropdown-item" id="userLog">个人资料</a>
                				    <a href="javascript:void(0)" class="dropdown-item" id="logout">退出登录</a>
                				</div>
                			</div>
                            <div class="search col-md-2">
                                <div class="mobile-nav-button">
                                    <button id="trigger-overlay" type="button">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                                <!-- open/close -->
                                <div class="overlay overlay-door">
                                    <button type="button" class="overlay-close">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                    <form action="#" method="post" class="d-flex">
                                        <input class="form-control" type="search" placeholder="Search here..." required="">
                                        <button type="submit" class="btn btn-primary submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </form>
                                </div>
                                <!-- open/close -->
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="logo">
                        	<h1>
                        		<a class="navbar-brand" href="index.html">
                        			<i class="far fa-compass" style="color: #20C997;"></i> 钟 灵 毓 秀</a>
                        	</h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">
                                <i class="fas fa-bars"></i>
                            </span>
                
                        </button>
                
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-lg-auto text-center">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">主页
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="candidates_list.jsp">求职信息</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="employer_list.jsp">入驻企业</a>
                                </li>
                                <li class="nav-item  active">
                                    <a class="nav-link" href="pricing.jsp">购买服务</a>
                                </li>
                				<li class="nav-item">
                				    <a class="nav-link" href="rec_list.jsp">招聘信息</a>
                				</li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.jsp">Contact</a>
                                </li>
                            </ul>
                
                        </div>
                    </nav>
                </header>
            </div>
            <!--/banner-info-w3layouts-->
            <div class="banner-info-w3layouts text-center">
            </div>
            <!--//banner-info-w3layouts-->
        </div>
    </div>
    <ol class="breadcrumb justify-content-left">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">services</li>
    </ol>
    <!-- banner-text -->
    <!--/process-->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Our service</span>精选服务</h3>
					<!---728x90--->
                <div class="card-deck text-center row mt-5">
                    <div class="price-info-grid col-lg-3">
                        <div class="price-inner">
                            <div class="price-header">
                                <h4>月度会员</h4>
                            </div>
                            <div class="price-body">
                                <h5 class="pricing-title">
                                    <span class="dolor">￥</span> 28.00

                                </h5>

                                <ul class="list-unstyled mt-3 mb-4">
                                    <li class="py-2 border-bottom">彩色昵称显示</li>
                                    <li class="py-2 border-bottom">1个月特权</li>
                                    <li class="py-2 border-bottom">更高曝光度</li>
                                    <li class="py-2 border-bottom">企业优先推荐</li>
                                    <li class="py-2">-</li>
                                </ul>
                                <a href="#" class="btn btn-block btn-outline-primary py-2" data-toggle="modal" data-target="#exampleModalCenter3">
									<i class="far fa-user"></i> 立即支付</a>
                            </div>
                        </div>
                    </div>
                    <div class="price-info-grid col-lg-3 my-lg-0 my-3">
                        <div class="price-inner">
                            <div class="price-header">
                                <h4>季度会员</h4>
                            </div>
                            <div class="price-body">
                                <h5 class="pricing-title">
                                    <span class="dolor">￥</span>78.00

                                </h5>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li class="py-2 border-bottom">彩色昵称 动态头像</li>
                                    <li class="py-2 border-bottom">3个月特权</li>
                                    <li class="py-2 border-bottom">超高曝光度</li>
                                    <li class="py-2 border-bottom">企业优先推荐</li>
                                    <li class="py-2">-</li>
                                </ul>
                                <a href="#" class="btn btn-block btn-outline-primary py-2" data-toggle="modal" data-target="#exampleModalCenter3">
									<i class="far fa-user"></i> 立即支付</a>
                            </div>
                        </div>
                    </div>
                    <div class="price-info-grid col-lg-3">
                        <div class="price-inner">
                            <div class="price-header">
                                <h4>年度会员</h4>
                            </div>
                            <div class="price-body">
                                <h5 class="pricing-title">
                                    <span class="dolor">$</span>238.00

                                </h5>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li class="py-2 border-bottom">网页交给你</li>
                                    <li class="py-2 border-bottom">一年特权</li>
                                    <li class="py-2 border-bottom">你就是首页</li>
                                    <li class="py-2 border-bottom">不需要工作</li>
                                    <li class="py-2">-</li>
                                </ul>
                                <a href="#" class="btn btn-block btn-outline-primary py-2" data-toggle="modal" data-target="#exampleModalCenter3">
									<i class="far fa-user"></i> 立即支付</a>
                            </div>
                        </div>
                    </div>
                    <div class="price-info-grid col-lg-3">
                        <div class="price-inner">
                            <div class="price-header">
                                <h4>终生会员</h4>
                            </div>
                            <div class="price-body">
                                <h5 class="pricing-title">
                                    <span class="dolor">$</span>888.00

                                </h5>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li class="py-2 border-bottom">人傻钱多</li>
                                    <li class="py-2 border-bottom">人傻钱多</li>
                                    <li class="py-2 border-bottom">人傻钱多</li>
                                    <li class="py-2 border-bottom">人傻钱多</li>
                                    <li class="py-2">-</li>
                                </ul>
                                <a href="#" class="btn btn-block btn-outline-primary py-2" data-toggle="modal" data-target="#exampleModalCenter3">
									<i class="far fa-user"></i> 立即支付</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //plans -->
	<!--footer -->
	<footer class="footer-emp-w3layouts bg-dark dotts py-lg-5 py-3">
	    <div class="container-fluid px-lg-5 px-3">
	        <div class="row footer-top">
	            <div class="col-lg-3 footer-grid-wthree-w3ls">
	                <div class="footer-title">
	                    <h3>关于我们</h3>
	                </div>
	                <div class="footer-text">
	                    <p>我们自始至终致力于为优秀的企业和人力资源提供最方便的沟通渠道，用最少的代价给事业迎来最大程度的提升。有任何宝贵的意见请与我们取得联系！</p>
	                    <ul class="footer-social text-left mt-lg-4 mt-3">
	
	                        <li class="mx-2">
	                            <a href="#">
	                                <span class="fab fa-facebook-f"></span>
	                            </a>
	                        </li>
	                        <li class="mx-2">
	                            <a href="#">
	                                <span class="fab fa-weixin"></span>
	                            </a>
	                        </li>
	                        <li class="mx-2">
	                            <a href="#">
	                                <span class="fab fa-qq"></span>
	                            </a>
	                        </li>
	                        <li class="mx-2">
	                            <a href="#">
	                                <span class="fab fa-instagram"></span>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	            <div class="col-lg-3 footer-grid-wthree-w3ls">
	                <div class="footer-title">
	                    <h3>联系我们</h3>
	                </div>
	                <div class="contact-info">
	                    <h4>地址 :</h4>
	                    <p>TianJin CN 天津工业大学</p>
	                    <div class="phone">
	                        <h4>联系方式 :</h4>
	                        <p>Phone : +86 1164862927</p>
	                        <p>Email :
	                            <a href="mailto:1164862927jyx@gmail.com">1164862927jyx@gmail.com</a>
	                        </p>
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-3 footer-grid-wthree-w3ls">
	                <div class="footer-title">
	                    <h3>快速链接</h3>
	                </div>
	                <ul class="links">
	                    <li>
	                        <a href="index.html">首页</a>
	                    </li>
	                    <li>
	                        <a href="employer_list.html">招聘信息</a>
	                    </li>
	                    <li>
	                        <a href="candidates_list.html">求职者信息</a>
	                    </li>
	                </ul>
					<ul class="links">
					    <li>
					        <a href="pricing.html">购买服务</a>
					    </li>
					    <li>
					        <a href="contact.html">联系我们</a>
					    </li>
					</ul>
	                <div class="clearfix"></div>
	            </div>
	            <div class="col-lg-3 footer-grid-wthree-w3ls">
	                <div class="footer-title">
	                    <h3>订阅我们</h3>
	                </div>
	                <div class="footer-text">
	                    <p>订阅我们的邮件列表，您将始终获得我们的最新消息和更新。</p>
	                    <form action="#" method="post">
	                        <input class="form-control" type="email" name="Email" placeholder="输入你的邮箱..." required="">
	                        <button class="btn2">
	                            <i class="far fa-envelope" aria-hidden="true"></i>
	                        </button>
	                        <div class="clearfix"> </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	        <div class="copyright mt-4">
	            <p class="copy-right text-center ">Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
	        </div>
	    </div>
	</footer>
	<!-- //footer -->

	<!--model-forms 登陆注册弹出-->
	<!--/Login-->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered" role="document">
	        <div class="modal-content">
	            <div class="modal-header text-center">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	
	                <div class="login px-4 mx-auto mw-100">
	                    <h5 class="text-center mb-4">账号登陆</h5>
	                    <div class="layui-form">
	                        <div class="form-group">
	                            <label class="mb-2">用户名</label>
	                            <input type="text" class="form-control" id="userName" name="userName" aria-describedby="emailHelp" placeholder="" required="">
	                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	                        </div>
	                        <div class="form-group">
	                            <label class="mb-2">密码</label>
	                            <input type="password" class="form-control" id="pwd" name="pwd" placeholder="" required="">
	                        </div>
	                        <button lay-submit lay-filter="loginBtn" class="btn btn-primary submit mb-4">登录</button>
	                        <p class="text-center pb-4">
	                            <a href="javascript:void(0);" data-toggle="modal2" data-target="#exampleModalCenter">还没有账户？注册一个试试吧！</a>
	                        </p>
	                    </div>
	                </div>
	            </div>
	
	        </div>
	    </div>
	</div>
	<!--//Login-->
	<!--/Register-->
	<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered" role="document">
	        <div class="modal-content">
	            <div class="modal-header text-center">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	                <div class="login px-4 mx-auto mw-100">
	                    <h5 class="text-center mb-4">账号注册</h5>
	                    <form class="layui-form">
	                        <div class="form-group">
	                            <label>用户名</label>
	                            <input type="text" id="userName2" name="userName" class="form-control" id="validationDefault01" placeholder="" required="">
	                        </div>
	                        <div class="form-group">
	                            <label class="mb-2">密码</label>
	                            <input type="password" name="pwd" class="form-control" id="password1" placeholder="" required="">
	                        </div>
	                        <div class="form-group">
	                            <label>确认密码</label>
	                            <input type="password" name="pwdC" class="form-control" id="password2" placeholder="" required="">
	                        </div>
	                        <div class="form-group">
                                <label class="mb-2">手机</label>
                                <input type="text" name="tel" class="form-control" id="tel" placeholder="" required="">
                            </div>
	                        <button lay-submit lay-filter="saveBtn" class="btn btn-primary submit mb-4">注册</button>
							<p class="text-center pb-4">
							    <a href="#" data-toggle="modal2" data-target="#exampleModalCenter">企业用户注册通道</a>
							</p>
	                    </form>
	                </div>
	            </div>
	
	        </div>
	    </div>
	</div>
	<!--//Register-->
	<div class="modal fade" id="exampleModalCenter3" tabindex="-1" role="dialog" aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered" role="document">
	        <div class="modal-content">
	            <div class="modal-header text-center">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	                <div class="login px-4 mx-auto mw-100">
	                    <h5 class="text-center mb-4">为你的冲动支付！</h5>
	                    <img src="../upload/pay.jpg" />
	                    <button class="btn btn-primary submit" style="margin-left:35%">支付完成</button>
	                </div>
	            </div>
	
	        </div>
	    </div>
	</div>

	<!--//model-form-->
	<!-- js -->
	<!--/slider-->
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!--//slider-->
	<!--search jQuery-->
	<script src="js/classie-search.js"></script>
	<script src="js/demo1-search.js"></script>
	<!--//search jQuery-->
	<script src="layui-v2.5.6/layui.js"></script>

	<script>
		$(document).ready(function () {
			var userName="<%= session.getAttribute("userNameFront") %>";
			if(userName!="null"){
				$(".sign-btn").hide();
				$("#user").show();
			}else{
				$(".sign-btn").show();
				$("#user").hide();
			};
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
			layui.use(["layer","form"],function(){
				var layer=layui.layer,
					form=layui.form;
				form.on("submit(loginBtn)",function(data){
					data=data.field;
					var url="../loginFront.do";
					//手动post
					$.get(url,data,function(txt){
						if(txt!=null){
							layer.msg('登录成功', function () {
								window.location.reload();
								$(".sign-btn").hide();
								$("#user").show();
							});
						}else{
							layer.msg("用户名或密码错误");
						}
					});
					return false;
				});
				form.on("submit(saveBtn)",function(data){
					data=data.field;
					var url="../signUp.do";
					//手动post
					var pass2 = $("#password2").val();
					var pass1 = $("#password1").val();
					if (pass1 != pass2)
					    layer.msg("请输入相同密码");
					else{
						$.get(url,data,function(txt){
							if(txt!=null){
								layer.msg('注册成功', function () {
									window.location.reload();
									$(".sign-btn").hide();
									$("#user").show();
								});
							}else{
								layer.msg("注册失败");
							}
						});
					};
					return false;
				});
				$("#logout").on("click", function () {
					layer.msg('退出登录', function () {
						$(".sign-btn").show();
						$("#user").hide();
					});
				});
				$("#userLog").on("click", function () {
					layer.open({
						type: 2,
						title: '信息详情',
						closeBtn: 1,
						shadeClose: true,
						area:['100%','100%'],
						btnAlign:'c',
						content: 'userLog.jsp?userName='+userName,
						success: function(layero, index){
							var body = layer.getChildFrame('body', index);
							
						}
					});
				});
			});
		});
	</script>
	<!-- //dropdown nav -->
	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
	<!-- //js -->
	<script src="js/bootstrap.js"></script>
	<!--/ start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<script>
		$(document).ready(function () {
			/*
									var defaults = {
										  containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
									 };
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
    <!--// end-smoth-scrolling -->
</body>
</html>