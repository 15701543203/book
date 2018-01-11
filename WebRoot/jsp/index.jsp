<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePath = base + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="format-detection" content="telephone=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="author" content="duanliang, duanliang920.com" />
<title></title>
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/page.css" />
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<img src="img/img.png" class="img-responsive" />
			</div>
		</div>
		<div class="space"></div>
		<div class="row common-padding">

			<div class="col-xs-3  right-border">
				<div class="common-text data">¥29.9</div>
				<div class="common-text">原价</div>
			</div>

			<div class="col-xs-3  right-border">
				<div class="common-text data">¥19.9</div>
				<div class="common-text">现价</div>
			</div>
			<div class="col-xs-3  right-border">
				<div class="common-text data">20000</div>
				<div class="common-text">阅读量</div>

			</div>
			<div class="col-xs-3 ">
				<div class="common-text data">16000</div>
				<div class="common-text">购买量</div>
			</div>

		</div>
		<div class="space"></div>
		<div class="row">
			<div class="details common-padding">
				<span class="details-text">
					《神医嫡女》作家杨十六的一部穿越类型的小说。本文集穿越、宅斗、宫斗、女强、玄幻、言情等元素于一体，讲述了21世纪陆战队特级医官凤羽珩魂穿越到未知年代的大顺朝代...
					<a href="#"> 详情> </a>
				</span>
			</div>

		</div>
		<div class="space"></div>
		<div class="row">
			<div id="contents" class="">
				<div class="contents-title common-text">目录</div>
				<div class="line"></div>
				<ul class="contents-list">
				<c:forEach  items='${result }' var="result">
					<li >
						<span onclick="loadContent()">${result.chapter }</span> 
						<span style="float: right;">${result.isCharge }</span>
					</li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="row navbar-fixed-bottom">
			<div id="button">
				<button class="btn btn-danger btn-block">立即购买</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js">
	
</script>


<script type="text/javascript">	
	function loadContent(){
		alert("查看内容！");
	}
</script>
</html>
