<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html>
<head>
<title>共享办公</title>

<!-- 页面基本设置禁止随意更改 -->
<meta charset="utf-8">
<meta name="author" content="forework">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<link rel="stylesheet" type="text/css" href="./assets/css/style.css">
<style>
	*{
		margin: 0px;
		padding: 0px;
	}
	.box{
 		position: relative;
	}
	.img1{
		position: absolute;
		left: 25%;
 		top: 35%;
		border-radius: 50%;
	}
	.font{
		position: absolute;
		left: 45%;
 		top: 33%;
		font-size: 70px;
		color: white;
	}
	.input{
		position: absolute;
		left: 30%;
 		top: 60%;
		font-size: 70px;
		color: white;
		border-radius: 10%;
	}
	#div1{width:600px;
        height:400px;
        
        position:absolute;
        left:50%;
        margin-left: -350px;
        top:50%;
        margin-top:-300px;   
        }
		.btn{
			position: absolute;
			left: 270px;
			top: 53px;
			width: 90px;
			height: 60px;
			border-radius: 4px;
			
			background-color: #1AD85E;

		}
</style>
</head>
<body>
	<div id="div1">
		<div ><img src="images/11111.png" class="img1">
			<span class="font">文件获取</span>
		</div>
		<div>
		<form class="input" action="getFile" method="post">
				<input type="Search" id="getFilePass" name="getFilePass" placeholder="请输入您的文件密码" required class="form-control" style="width: 270px;height: 60px;border: 0px;">
				<button class="btn" style="border: 0px;color: white;border-radius: 0px;">搜索</button>
		</form>
		</div>
	</div>
	<div>
		<div style="position: absolute;width: 100%;height: 100%;background-color: black; z-index: -1;"></div>
		

	</div>
</body>
</html>
