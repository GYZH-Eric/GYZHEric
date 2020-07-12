<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
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
    <link href="css/zoomslider.css" rel='stylesheet' type='text/css' />
    <link href="css/style6.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
</head>
<body>
    <!-- banner-inner 顶部 轮播图 -->
    <div id="demo-1" data-zs-src='["images/1.jpg", "images/2.jpg","images/3.jpg", "images/4.jpg"]' data-zs-overlay="dots">
        <div class="demo-inner-content">
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
									<i class="fas fa-user" id="showUser">${userNameFront}</i> 
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
                                <li class="nav-item active">
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
                                <li class="nav-item">
                                    <a class="nav-link" href="pricing.jsp">购买服务</a>
                                </li>
								<li class="nav-item">
								    <a class="nav-link" href="rec_list.jsp">招聘信息</a>
								</li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                            </ul>

                        </div>
                    </nav>
                </header>
            </div>
            <!--/banner-info-w3layouts-->
            <div class="banner-info-w3layouts text-center">

                <h3>
                    <span>从现在开始</span> .
                    <span>为你的事业写下新的篇章</span>
                </h3>
                <p>为您提供最优质的信息服务</p>

                <form action="#" method="post" class="ban-form row">
                    <div class="col-md-3 banf">
                        <input class="form-control" type="text" name="Name" placeholder="Name" required="">
                    </div>
                    <div class="col-md-3 banf">
                        <select class="form-control" id="country12">
                            <option>Location</option>
                            <option>Afghanistan</option>
                            <option>Alaska</option>
                            <option>Andong</option>
                            <option>Bologna</option>
                            <option>Canada</option>
                            <option>France</option>
                            <option>Germany</option>
                        </select>
                    </div>
                    <div class="col-md-3 banf">
                        <select id="country13" class="form-control">
                            <option>Finance Sector</option>
                            <option>Banking Sector</option>
                            <option> Engineering Sector</option>
                            <option>Accounting Jobs</option>
                            <option>Interior Design</option>
                            <option>Export Import Jobs</option>
                        </select>

                    </div>
                    <div class="col-md-3 banf">
                        <button class="btn1" type="submit">FIND JOB
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>
            </div>
            <!--//banner-info-w3layouts-->
        </div>
    </div>
    <!-- banner-text -->
    <!-- banner-bottom-wthree   六彩色 板块-->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-4 mb-3">
                    <span>services</span>主要功能服务</h3>
                <div class="row populor_category_grids mt-5">
                    <div class="col-md-3 category_grid">
                        <div class="view view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-cubes"></i>
                                <h3> 招聘信息</h3>
                                <p>(34 in)</p>
                            </div>
                            <div class="mask">
                                <a href="rec_list.jsp">
                                    <img src="images/p1.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
					<div class="col-md-3 category_grid">
					    <div class="view view2 view-tenth">
					        <div class="category_text_box">
					            <i class="fab fa-accusoft"></i>
					            <h3>入驻企业 </h3>
					            <p>(16 in)</p>
					        </div>
					        <div class="mask">
					            <a href="employer_list.jsp">
					                <img src="images/p3.jpg" class="img-fluid" alt="">
					            </a>
					        </div>
					    </div>
					</div>
					<div class="col-md-3 category_grid">
					    <div class="view view3 view-tenth">
					        <div class="category_text_box">
					            <i class="fas fa-users"></i>
					            <h3>人才精选</h3>
					            <p>(4 in)</p>
					        </div>
					        <div class="mask">
					            <a href="candidates_list.jsp">
					                <img src="images/p4.jpg" class="img-fluid" alt="">
					            </a>
					        </div>
					    </div>
					</div>
                    <div class="col-md-3 category_grid">
                        <div class="view view1 view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-money-bill-alt"></i>
                                <h3>购买服务</h3>
                                <p>(enjoy more services)</p>
                            </div>
                            <div class="mask">
                                <a href="pricing.jsp">
                                    <img src="images/p99.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner-bottom-wthree -->
    <!--/process 双列表-->
    <section class="banner-bottom-wthree pb-lg-5 pb-md-4 pb-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-4 mb-3">
			
                    <span>information</span>招聘信息检索</h3>
					<!---728x90--->
                <div class="tabs mt-5">
                    <ul class="nav nav-pills my-4" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">热门招聘</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">最新职位</a>
                        </li>

                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <div class="menu-grids mt-4">
                                <div class="row t-in">
                                    <div class="col-lg-8 text-info-sec" id="proList1">

                                        
                                    </div> 
                                    <div class="col-lg-4 text-info-sec">
                                        <img src="images/office23.jpg" alt=" " class="img-fluid" />
										<hr />
										<img src="images/job-1.jpg" alt=" " class="img-fluid" />
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="menu-grids mt-4">
                                <div class="row t-in">
                                    <div class="col-lg-4 text-info-sec">
                                        <img src="images/office.jpg" alt=" " class="img-fluid" />
										<hr />
										<img src="images/job-2.jpg" alt=" " class="img-fluid" />
                                    </div>
                                    <div class="col-lg-8 text-info-sec" id="proList2">

                                        
                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//preocess-->

    <!--job 创建账户 蓝色背景 -->
    <section class="banner-bottom-wthree mid py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <div class="mid-info text-center pt-3">
                    <h3 class="tittle text-center cen mb-lg-5 mb-3">
                        <span>join us</span>即刻启程 更精彩的工作和人生!</h3>
                    <p></p>
                    <div class="resume">
                        <a href="#" id="createUser" data-toggle="modal" data-target="#exampleModalCenter2">
                            <i class="far fa-user"></i> 创建账户</a>
                    </div>
                </div>

            </div>
        </div>
    </section>
   
    <!--/candidates  精选人才 -->
    <section class="banner-bottom-wthree bg-light py-lg-5 py-3 text-center">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-4 py-md-4 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>information</span>精选人才信息</h3>
                <div class="row mt-5" id="pShow">
					<!-- 使用ajax动态显示 -->
                    
                </div>
            </div>
        </div>
    </section>
    <!--/candidates -->
    <!--/stats  四个统计数据 -->
    <section class="banner-bottom-wthree bg-dark dotts py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle cen text-center mb-lg-5 mb-3">
                    <span>Statistics</span> 数据统计</h3>
                <div class="stats row mt-5">
                    <div class="col-md-3 stats_left counter_grid text-center">

                        <p class="counter"></p>
                        <h4>简历发表</h4>
                    </div>
                    <div class="col-md-3 stats_left counter_grid1 text-center">

                        <p class="counter"></p>
                        <h4>企业类型</h4>
                    </div>
                    <div class="col-md-3 stats_left counter_grid2 text-center">

                        <p class="counter"></p>
                        <h4>企业入驻</h4>
                    </div>
                    <div class="col-md-3 stats_left counter_grid3 text-center">

                        <p class="counter"></p>
                        <h4>人才注册</h4>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--//stats-->

    <!--job 三个快速职业提示 -->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Some Info</span> 服务简介</h3>
                <div class="row mt-5">

                    <div class="card-deck">
                        <div class="card">
                            <img src="images/g1.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">为企业注入活力</h5>
                                <p class="card-text">企业可以在这里可以找到最具活力的人才，同时可以发布招聘信息吸引更广大的求职者.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Have a try know</small>
                            </div>
                        </div>
                        <div class="card">
                            <img src="images/g2.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">帮求职者展望未来</h5>
                                <p class="card-text"> 求职者可以在这里发现全国最具实力，也最有潜力的公司，与他们直接交流，发布自己的简历信息为事业的发展走出第一步. </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Have a try know</small>
                            </div>
                        </div>
                        <div class="card">
                            <img src="images/g3.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">职业信息检索对比</h5>
                                <p class="card-text">这里拥有最全面最深入的职业信息，可以对比不同职业不同企业不同城市的薪资情况和工作条件.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Have a try know</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//job -->

    <!--footer 底部 -->
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
                                <input type="text" id="userName2" name="cdName" class="form-control" id="validationDefault01" placeholder="" required="">
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

    <!--//model-form-->
    <!-- js -->
    <!--/slider-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/jquery.zoomslider.min.js"></script>
	<script src="js/jquery-3.1.1.js"></script>
    <!--//slider-->
    <!--search jQuery-->
    <script src="js/classie-search.js"></script>
    <script src="js/demo1-search.js"></script>
	<script src="js/bootstrap.js"></script>
	<!--/ start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
    <!--//search jQuery-->
	<script src="layui-v2.5.6/layui.js"></script>

    <script>
        $(document).ready(function() {
			var empDate="";
			var userName="<%= session.getAttribute("userNameFront") %>";
			if(userName!="null"){
				$(".sign-btn").hide();
				$("#user").show();
			}else{
				$(".sign-btn").show();
				$("#user").hide();
			};
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
			$.ajax({// 精选用户 动态显示
				url:'../initRes.do',//获取服务端的URL地址
				dataType :'json',//返回数据类型,当前主要是json, text文本
				method:'post',
				success:function(data){
					var info="";
					$.each(data,function(i){
						info+="<div class='col-lg-3 member-main text-center'><div class='card'><div class=\"card-body\"><div class=\"member-img\"><img src=\"../upload/"+
						data[i].cduser.cdName+".jpg\" alt=\" \" class=\"img-fluid rounded-circle\"></div><div class=\"member-info text-center py-lg-4 py-2\"><h4>"+
						data[i].cduser.cdName+"</h4><p class=\"my-4\">"+data[i].infor+"</p><div class=\"mt-3 team-social text-center\"></div></div></div></div></div>";
					});
					$("#pShow").html(info);
				},
				error:function(){
					//ajax提交失败的时候触发的函数
					alert("err");
				}
			});
			$.ajax({ //数据统计 动态显示
				url:'../initCount.do',//获取服务端的URL地址
				dataType :'json',//返回数据类型,当前主要是json, text文本
				method:'post',
				success:function(data){
					var i = "0";
					$(".counter").each(function(){
						$(this).text(data[i]);
						i++;
					});
				},
				error:function(){
					//ajax提交失败的时候触发的函数
					alert("err number");
				}
			});
			$.ajax({ //jobs双列表 动态显示
				url:'../initRec.do',//获取服务端的URL地址
				dataType :'json',//返回数据类型,当前主要是json, text文本
				method:'post',
				success:function(data){
					var info1="";
					var info2="";
					empDate=data;
					$.each(data,function(i){
						if(i<8){
							info1+="<div class=\"job-post-main row my-3\"><div class=\"col-md-9 job-post-info text-left\"><div class=\"job-post-icon\"><i class=\"fas fa-briefcase\"></i></div><div class=\"job-single-sec\"><h4><a href=\"#\">"+
									data[i].cpuser.cpName+"</a></h4><p class=\"my-2\">"+data[i].rPos+
									"</p><ul class=\"job-list-info d-flex\"><li><i class=\"fas fa-map-marker-alt\"></i> "+data[i].address+"</li><li><i class=\"fas fa-dollar-sign\"></i> "+
									data[i].sal+"</li></ul></div><div class=\"clearfix\"></div></div><div class=\"col-md-3 job-single-time text-right\"><span class=\"job-time\"><i class=\"far fa-heart\"></i>"+
									data[i].recId+"</span><a href=\"javascript:void(0)\" id=\""+i+"\" class=\"aply-btn \">查看详情</a></div></div>";
						}else{
							info2+="<div class=\"job-post-main row my-3\"><div class=\"col-md-9 job-post-info text-left\"><div class=\"job-post-icon\"><i class=\"fas fa-briefcase\"></i></div><div class=\"job-single-sec\"><h4><a href=\"#\">"+
									data[i].cpuser.cpName+"</a></h4><p class=\"my-2\">"+data[i].rPos+
									"</p><ul class=\"job-list-info d-flex\"><li><i class=\"fas fa-map-marker-alt\"></i> "+data[i].address+"</li><li><i class=\"fas fa-dollar-sign\"></i> "+
									data[i].sal+"</li></ul></div><div class=\"clearfix\"></div></div><div class=\"col-md-3 job-single-time text-right\"><span class=\"job-time\"><i class=\"far fa-heart\"></i>"+
									data[i].recId+"</span><a href=\"javascript:void(0)\" id=\""+i+"\" class=\"aply-btn \">查看详情</a></div></div>";
						}
					});
					$("#proList1").html(info1);
					$("#proList2").html(info2);
				},
				error:function(){
					//ajax提交失败的时候触发的函数
					alert("err jobs");
				}
			});
			layui.use(["layer","form"],function(){
				var layer=layui.layer,
					form=layui.form;
				$(".text-info-sec").on("click",".aply-btn",function(){
					var num = $(this).attr("id");
					layer.open({
						type: 2,
						title: '信息详情',
						closeBtn: 1,
						shadeClose: true,
						area:['40%','70%'],
						btn:'确定',
						btnAlign:'c',
						content: 'infoSingle.html',
						success: function(layero, index){
							var body = layer.getChildFrame('body', index);
							body.find("#name").text(empDate[num].cpuser.cpName);
    						body.find("#pos").text(empDate[num].rPos);
    						body.find("#sal").text(empDate[num].sal+" /mon");
    						body.find("#address").text(empDate[num].address);
    						body.find("#info").text(empDate[num].rInfor);
    						body.find("#tel").text(empDate[num].cpuser.tel);
						}
					});
				});
				form.on("submit(loginBtn)",function(data){
					data=data.field;
					var url="../loginFront.do";
					//手动post
					$.post(url,data,function(txt){
						if(txt=="ok"){
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
							if(txt=="ok"){
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
			$(".scroll").click(function(event) {
			    event.preventDefault();
			    $('html,body').animate({
			        scrollTop: $(this.hash).offset().top
			    }, 900);
			});
			$().UItoTop({
			    easingType: 'easeOutQuart'
			});
        });
        window.onload = function() {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("请输入相同密码");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!--// end-smoth-scrolling -->
</body>
</html>