<%@ page import="com.jarod.pojo.UserInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="com.jarod.factory.Connection" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="com.jarod.mapper.UserInfoMapper" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>用户管理</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="../assets/img/icon.ico" type="image/x-icon"/>

	<!-- Fonts and icons -->
	<script src="../assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['../assets/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>

	<!-- CSS Files -->
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/atlantis.min.css">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="../assets/css/demo.css">
</head>
<body data-background-color="dark">
	<div class="wrapper">
		<div class="main-header">
			<!-- Logo Header -->
			<div class="logo-header" data-background-color="dark2">
				
				<a href="../user/user.jsp" class="logo">

					<img src="../assets/img/logo.png" alt="navbar brand" class="navbar-brand" style="width: 138px;height: 50px">
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						<i class="icon-menu"></i>
					</span>
				</button>
				<button class="topbar-toggler more"><i class="icon-options-vertical"></i></button>
				<div class="nav-toggle">
					<button class="btn btn-toggle toggle-sidebar">
						<i class="icon-menu"></i>
					</button>
				</div>
			</div>
			<!-- End Logo Header -->

			<!-- Navbar Header -->
			<nav class="navbar navbar-header navbar-expand-lg" data-background-color="dark">
				
				<div class="container-fluid">
					
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<!-- <li class="nav-item toggle-nav-search hidden-caret">
							<a class="nav-link" data-toggle="collapse" href="#search-nav" role="button" aria-expanded="false" aria-controls="search-nav">
								<i class="fa fa-search"></i>
							</a>
						</li> -->

						<li class="nav-item dropdown hidden-caret">
							<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false">
								<div class="avatar-sm">
									<img src="../assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle">
								</div>
							</a>
						</li>
					</ul>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>

		<!-- Sidebar -->
		<div class="sidebar sidebar-style-2" data-background-color="dark2">
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="../assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									${ user.username }
									<span class="user-level">Administrator</span>
								</span>
							</a>
							<div class="clearfix"></div>

							
						</div>
					</div>
					<ul class="nav nav-primary">
						<li class="nav-item">
							<a href="user" class="collapsed" aria-expanded="false">
								<i class="fas fa-home"></i>
								<p>首页</p>
							</a>
						</li>
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Components</h4>
						</li>
						<li class="nav-item">
							<a href="publicFile">
								<i class="fas fa-layer-group"></i>
								<p>公共文件</p>
								
							</a>
						</li>
						<li class="nav-item">
							<a href="myFile">
								<i class="fas fa-th-list"></i>
								<p>我的文件</p>
							</a>
						</li>
						<li class="nav-item active">
							<a href="userManage">
								<i class="fas fa-pen-square"></i>
								<p>用户管理</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="../getFile.jsp" target="_blank">
								<i class="fas fa-table"></i>
								<p>文件获取</p>
							</a>
							
						</li>
						<li class="nav-item">
							<a href="exit">
								<i class="fas fa-map-marker-alt"></i>
								<p>退出系统</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->


		<!-- 正文部分 -->
		<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<!-- <div class="mt-2 mb-4">
						<h2 class="text-white pb-2">Welcome back, Hizrian!</h2>
						<h5 class="text-white op-7 mb-4">Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.</h5>
					</div> -->
					<form method="POST">
					<div class="input-group mb-3">
						<span class="input-group-text">用户名：</span>
						<input type="text"  style="width: 200px; background-color:rgb(111, 106, 119);color: #fff">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="input-group-text">密  码：</span>
						<input type="text"  style="width: 200px; background-color:rgb(111, 106, 119);color: #fff">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="submit" class="btn btn-primary">添加</button>
					  </div>
					</form>
					<p></p>
					<table class="table table-dark table-hover" style="background-color: #343a40;opacity: 0.8;border-radius: 10px;">
						<thead>
						  <tr>
							<th>id</th>
							<th>用户名</th>
							<th>密码</th>
						  </tr>
						</thead>
						
						<tbody>
						<%
							//获取用户记录总条数
							Integer rows = (Integer) request.getSession().getAttribute("rows");
							for (Integer i = 0; i < rows; i++) {
						%>
						<tr>
							<td>
								<%
									List<UserInfo> userInfo= (List<UserInfo>) request.getSession().getAttribute("userinfo");
									out.print(userInfo.get(i).getUser_id());
								%>
							</td>
							<td>
								<%
									SqlSessionFactory factory= Connection.init();
									SqlSession sqlSession=factory.openSession();
									UserInfoMapper dao=sqlSession.getMapper(UserInfoMapper.class);
//                                        List<UserInfo> userInfo= (List<UserInfo>) request.getSession().getAttribute("userinfo");
									out.print(userInfo.get(i).getUsername());
								%>
							</td>
							<td>
								<%
									out.print(dao.finddate(userInfo.get(i).getUser_id()).getFile_pass());
								%>
							</td>
							<td>
								<button type="button" class="btn btn-outline-danger">删除</button>
							</td>
						</tr>
						<%
							}
						%>

						  
						  <!-- <tr>
							  
							
						  </tr> -->
						</tbody>
					</table>
					
					
				</div>
			</div>


			<!-- 底部内容 -->
			<!-- <footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul class="nav">
							<li class="nav-item">
								
							</li>
							<li class="nav-item">
								
							</li>
							<li class="nav-item">
								
							</li>
						</ul>
					</nav>
								
				</div>
			</footer> -->
		</div>
		
		
			
		
		<!-- End Custom template -->
	</div>

	<!-- 正文结束了 -->



	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery UI -->
	<script src="../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>


	<!-- Chart JS -->
	<script src="../assets/js/plugin/chart.js/chart.min.js"></script>

	<!-- jQuery Sparkline -->
	<script src="../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

	<!-- Chart Circle -->
	<!-- 弹窗 -->
	<!-- <script src="../assets/js/plugin/chart-circle/circles.min.js"></script> -->

	<!-- Datatables -->
	<script src="../assets/js/plugin/datatables/datatables.min.js"></script>

	<!-- Bootstrap Notify -->
	<script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

	<!-- jQuery Vector Maps -->
	<script src="../assets/js/plugin/jqvmap/jquery.vmap.min.js"></script>
	<script src="../assets/js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>

	<!-- Sweet Alert -->
	<script src="../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<!-- Atlantis JS -->
	<script src="../assets/js/atlantis.min.js"></script>

	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<script src="../assets/js/setting-demo.js"></script>
	<script src="../assets/js/demo.js"></script>
	<script>
		$('#lineChart').sparkline([102,109,120,99,110,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});

		$('#lineChart2').sparkline([99,125,122,105,110,124,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});

		$('#lineChart3').sparkline([105,103,123,100,95,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: 'rgba(255, 255, 255, .5)',
			fillColor: 'rgba(255, 255, 255, .15)'
		});
	</script>
</body>
</html>