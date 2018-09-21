<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

	<c:if test="${custedit != null}">
	<div class="layui-elem-quote">
 						 <p>修改用户信息</p>
						</div>
<form class="layui-form" action="/cms01/web/cusoperate" method="post">
	<c items="${custedit}" var="custedit">
  <div class="layui-form-item">
    <label class="layui-form-label">用户编号</label>
    <div class="layui-input-block">
      <input type="text" name="custId" lay-verify="title" autocomplete="off"  class="layui-input" value="${custedit.custId}" readonly >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">乙方公司名</label>
    <div class="layui-input-block">
      <input type="text" name="custcompany" lay-verify="title" autocomplete="off" placeholder="请输入乙方公司名" class="layui-input" value="${custedit.custCompany}">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input type="text" name="custname" lay-verify="title" autocomplete="off" placeholder="请输入用户名" class="layui-input" value="${custedit.custName}">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">联系方式</label>
    <div class="layui-input-block">
      <input type="text" name="custcontact" lay-verify="title" autocomplete="off" placeholder="请输入联系方式" class="layui-input" value="${custedit.custContact}">
    </div>
  </div>
  <div>
  	 <button type="submit" class="layui-btn" name="action" value="1">确认</button>
  	 <button class="layui-btn layui-btn-danger" name="action" value="2">删除信息</button>
  </div>
  </c>
</form>
</c:if>