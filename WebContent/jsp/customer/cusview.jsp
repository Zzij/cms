<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

	<c:if test="${cusview != null}">
	<div class="layui-elem-quote">
 						 <p>用户信息详情</p>
						</div>

	<c items="${cusview}" var="cusview">
  <div class="layui-form-item">
    <label class="layui-form-label">用户编号</label>
    <div class="layui-input-block">
      <input type="text" name="custId" lay-verify="title" autocomplete="off"  class="layui-input" value="${cusview.custId}" readonly >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">乙方公司名</label>
    <div class="layui-input-block">
      <input type="text" name="custcompany" lay-verify="title" autocomplete="off"  class="layui-input" value="${cusview.custCompany}" readonly>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input type="text" name="custname" lay-verify="title" autocomplete="off"  class="layui-input" value="${cusview.custName}" readonly>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">联系方式</label>
    <div class="layui-input-block">
      <input type="text" name="custcontact" lay-verify="title" autocomplete="off"  class="layui-input" value="${cusview.custContact}" readonly>
    </div>
  </div>
 
  </c>

</c:if>