<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>共享办公</title>
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
						<li class="nav-item active">
							<a href="../user/user.jsp" class="collapsed" aria-expanded="false">
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
						<li class="nav-item">
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
					
					<div class="mt-2 mb-4">
						<h1 class="text-white pb-2" style="font-size: 88px;">欢迎使用共享办公系统</h1>
						<h5 class="text-white op-7 mb-4">本系统基于Java开发，采用Mybatis+Spring+SpringMVC组合框架即SSM.</h5>
					</div>
					<div>
						<h3>文件共享</h3>
						<h5 class="text-white op-7 mb-4">多年来，文件共享（file sharing）是主机和多用户计算机系统的一个特点。随着互联网的发展，被称为文件传输协议（FTP）的文件转移系统被广泛地应用。FTP能被用于访问（读取及可能写入）共享文件，该文件是从FTP服务器站点分享来的，通过用户特别设置的密码来获得其访问权。许多FTP站点使用公众密码（它发生在匿名时）来提供公众文件分享，或至少可以通过下载文件的方式来浏览或复制。大多数网站开发者使用FTP来上载新的或修改的Web文件到Web服务器，甚至万维网自身能够被当作大型文件共享，在这个文件共享中网页或文件经常被下载或复制给Web用户。</h5>
					</div>
					<div>
						<h3>文件共享方法</h3>
						<h5 class="text-white op-7 mb-4">桌面共享通常是通过共享软件实现，类型有全时、Netmeeting，QQ，同步盘，winfly等。
							1.全时网络会议软件：全时网络会议MeetMe Plus（简称MMP）是第三代商务协作通信服务。 中国第一个面世的融合通信会议服务，绝对具有跨时代意义的网络会议产品。随时随地召开MeetMe plus会议，其他与会者无需离开电脑桌，直接通过PC加入会议就可以实现跨越地域的协作交流，随时随地尽享MeetMe plus的全新会议体验。
							2.Netmeeting：Netmeeting是个方便不用安装的共享小工具，并不是软件本身不必安装，而是该软件是微软公司进行捆绑销售的产品，一般在系统安装时就会自动被安装。其工作原理主要是依据IP进行设定和共享，尤其适合局域网用户。
							3.QQ远程协助：QQ的远程协助得益于QQ软件的广泛使用，是QQ软件的附带服务之一，只要装有QQ的用户即可通过QQ实现桌面共享，该软件要在互联网的基础上进行工作。</h5>
					</div>
					<div>
						<h3>常用的协议</h3>
						<h5 class="text-white op-7 mb-4">文件共享有许多不同的协议，以下列举的是最常用和最重要的。
							AresAres
							是一个类似Gnutella的很普及的网络，其标准（和最普及的）Ares Galaxy客户端于2005年3月是美国P2P客户端中第六常用的。大多数使用Ares的是想要接触尽量多的网络而没有找到更好的协议的人。
							BitTorrentBitTorrent
							协议是唯一广泛被用在公司分配系统中的档案共享协议，它的下载速度一般比较高，原因是每个“洪流”为每个文件或文件组存储着其用户的信息：相对于其它协议其协议本身比较小，缺点是它没有寻找功能。此外它不很灵活，另外精确地说它不完全是一个P2P协议。2004年初有人发现BitTorrent比任何其它互联网档案共享协议所携带的信息都多。许多人相信这至今未变。
							Direct ConnectDirect Connect
							是一种常用于小的网络和大学内部网络中的协议，它尤其适用于这些小网络环境中。DC++是其最常见的客户端程序。
							eDonkey、Overnet和Kad Network
							eDonkey 2000和eMule是eDonkey网络最普及的P2P客户端程序。它被用来传送大量数据，其传送数目仅少于BitTorrent。它比BitTorrent最大的优点是其客户端程序有一个寻找引擎。用它用户可以找到许多文件，比起BitTorrent来它的传送速度较慢。Overnet的设计目的是取代eDonkey，许多eDonkey用户端程序同时使用Overnet，Overnet没有中心服务器，但其用户数量少于eDonkey。Kad Network很类似Overnet，几乎只有eDonkey的用户使用它，但它的普及性也很低。
							FastTrack
							FastTrack的第一个客户端程序是KaZaA，它的协议与Gnutella2很相似。从2002年到2003年它是最大的用户网，但2005年它退到了第三名。这个衰退的原因是因为这个网络无法对付众多用户同时使用，而且许多版权拥有者在网上放入了许多垃圾文件来阻止受版权保护的歌曲的交换。KaZaA的用户端软件在用户电脑上设置一个间谍软件，法庭判决这个间谍软件违反了版权，因此不得再继续使用和分发。iMesh也主要使用FastTrack为其协议，此外开放源代码的GiFT也可以用来连入FastTrack网络。
							Gnutella和Gnutella2
							当Napster陷入法律困境时，Nullsoft的贾斯廷·弗兰克尔发展了Gnutella，Gnutella是第一个真正的非中心的客户端。此后这个协议获得了很大的发展。Gnutella对文件共享有深刻的影响。Gnutella2本来是对Gnutella的一个改进和扩展，它的发展人是Shareaza的创始人迈克尔·斯多克斯。它提供了一个扩展的数据包格式、基于UDP的搜索算法和许多其它扩展比如数据包压缩等等。今天现代的Gnutella客户端程序都支持这些功能。
							OpenNap
							（前身为Napster）OpenNap是对原来的Napster客户端程序改变后来的，Napster客户端程序是第一个普及率高的P2P文件共享程序。今天依然有人在发展它，WinMX等程序使用它。
							WinNYWinNY
							是WinNY客户端程序使用的协议的非正式名称，它在日本（2005年）很普及，但在亚洲外很少被使用。
							WPNPWPNP
							是WinMX最主要的协议。从2001年到2002年这个网络提供最好的搜索不明的英语材料的结果，但它最主要被用来搜索亚洲语言的材料。</h5>

					</div>
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