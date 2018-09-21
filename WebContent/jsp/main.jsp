<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>合同管理系统后台 -funsoft</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#cusinfo").on("click", function(){
			$(this).attr('href', '/cms01/web/cusinfo')
		});
		$("#invoceinfo").on("click", function(){
			$(this).attr('href', '/cms01/web/invoinfo')
		});
		$("#logout").on("click", function(){
			$(this).attr('href', '/cms01/logout')
		});
		$("#addcus").on("click", function(){
			$(this).attr('href', '/cms01/web/iscusform')
		});
		$("#addinvo").on("click", function(){
			$(this).attr('href', '/cms01/web/isinvoform')
		});
		$("#conall").on("click", function(){
			$(this).attr('href', '/cms01/web/coninfo')
		});
		$("#addcon").on("click", function(){
			$(this).attr('href', '/cms01/web/isconform')
		});
		$("#expirethree").on("click", function(){
			$(this).attr('href', '/cms01/web/expirethree')
		});
		$("#expireweek").on("click", function(){
			$(this).attr('href', '/cms01/web/expireweek')
		});
		$("#search").on("click", function(){
			$(this).attr('href', '/cms01/web/issearch')
		});
		$("#userinfo").on("click", function(){
			$(this).attr('href', '/cms01/web/userinfo')
		});
		
	});
</script>
</head>
<body class="layui-layout-body">

	<div class="layui-layout layui-layout-admin">
		<div class="layui-header layui-bg-cyan">
			<div class="layui-logo">纷云合同管理系统后台</div>
			<%-- 头部区域（可配合layui已有的水平导航） --%>
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="">控制台</a></li>
				<li class="layui-nav-item"><a href="javascript:;" id="search">合同查询</a></li>
				<li class="layui-nav-item"><a href="">用户</a></li>
				<li class="layui-nav-item"><a href="javascript:;">其它系统</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">邮件管理</a>
						</dd>
						<dd>
							<a href="">消息管理</a>
						</dd>
						<dd>
							<a href="">授权管理</a>
						</dd>
					</dl></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item">
				<a href="javascript:;"> <img src="${pageContext.request.contextPath}/jsp/images/head.jpg" class="layui-nav-img">${USER_IN_SESSION.username}</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:;" id="userinfo">基本资料</a>
						</dd>
						<dd>
							<a href="javascript:;" onclick="alter();">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a id="logout">安全退出</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-nav-itemed">
						<a class="" href="javascript:;">合同管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" id="conall" >查看所有合同</a>
							</dd>
							<dd>
								<a href="javascript:;" id="addcon">新增合同</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">发票管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" id="invoceinfo">发票查询</a>
							</dd>
							<dd>
								<a href="javascript:;" id="addinvo">添加新发票</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;" onclick="customerFun();">客户管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" id="cusinfo">客户查询</a>
							</dd>
							<dd>
								<a href="javascript:;" id="addcus">添加用户</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item layui-nav-itemed">
						<a class="" href="javascript:;">合同到期提醒</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" id="expirethree" style="color: red">3天内到期</a>
							</dd>
							<dd>
								<a href="javascript:;" id="expireweek" style="color: orange">一星期内到期</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<jsp:include page="user/userinfo.jsp"></jsp:include>
			<jsp:include page="customer/cusinfo.jsp"></jsp:include>
			<jsp:include page="customer/cusalter.jsp"></jsp:include>
			<jsp:include page="customer/cusadd.jsp"></jsp:include>
			<jsp:include page="customer/cusview.jsp"></jsp:include>
			<jsp:include page="invoice/invoinfo.jsp"></jsp:include>
			<jsp:include page="invoice/invoadd.jsp"></jsp:include>
			<jsp:include page="invoice/invoalter.jsp"></jsp:include>
			<jsp:include page="invoice/invoview.jsp"></jsp:include>
			<jsp:include page="contract/coninfo.jsp"></jsp:include>
			<jsp:include page="contract/conadd.jsp"></jsp:include>
			<jsp:include page="contract/conalter.jsp"></jsp:include>
			<jsp:include page="contract/conview.jsp"></jsp:include>
			<jsp:include page="expire/expire.jsp"></jsp:include>
			<jsp:include page="search.jsp"></jsp:include>
			<jsp:include page="searchinfo.jsp"></jsp:include>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© 纷云教育 - 合同管理界面0.1
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>
</html>