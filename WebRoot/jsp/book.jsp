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
<link rel="stylesheet"
	href="<%=basePath %>bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=basePath %>css/page.css" />
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12" style="text-align: center;">
				<img src="<%=basePath %>img/img.png" class="img-responsive"/>
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
		<div id="details" class="row">
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
					<c:forEach items="${result }" var="result">
						<li>
							<a href="javascript:void(0);" id="b01" onclick="ajaxBook('${result.id }');">
							<span>${result.chapter }</span>
							<span style="float: right;">${result.isCharge }</span>
							</a>
						</li>
					</c:forEach>
				</ul>

			</div>
		</div>
		<table align="center">
					<tr>
						<td bgcolor="#00ffff" colspan="10" align="center">共${pager.totalPage}页 &nbsp;&nbsp;共${pager.totalRows}章
							&nbsp;&nbsp;<a href="/book/getPagerBook.do?page=1">首页</a> 
							<c:choose>
								<c:when test="${pager.currenPage-1==0}">&nbsp;&nbsp;上一页</c:when>
								<c:when test="${pager.currenPage-1>0}">
									<a href="/book/getPagerBook.do?page=${pager.currenPage-1}">&nbsp;&nbsp;上一页</a>
								</c:when>
							</c:choose>
							 <c:choose>
								<c:when test="${pager.currenPage+1>pager.totalPage}">&nbsp;&nbsp;下一页</c:when>
								<c:when test="${pager.currenPage+1<=pager.totalPage}">
									<a href="/book/getPagerBook.do?page=${pager.currenPage+1}">&nbsp;&nbsp;下一页</a>
								</c:when>
							</c:choose> 
							<a href="/book/getPagerBook.do?page=${pager.totalPage}">&nbsp;&nbsp;末页</a>
						</td>
					</tr>
				</table>
		
		<div class="row navbar-fixed-bottom">

			<div id="button">
				<button class="btn btn-danger btn-block">立即购买</button>
			</div>
		</div>
	</div>
	<div id="content" style=""></div>
</body>
<script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script>
	$(function(){
		$("#content").hide();
	});
	
	function ajaxBook(id){
		alert(id);
		var url="${basePath}/book/content.do";
		alert(url);
		$.ajax({
			url:url,
			data:"id="+id,
			type:"post",
			success:function(text){
				alert(text.text);
				//展示存在问题，div中展示Txt文件，
				$("#content").load(text.text);
				$("#contents").hide();
				$("#details").hide();
				$("#content").show();
			}
		});
	}

</script>
</html>
