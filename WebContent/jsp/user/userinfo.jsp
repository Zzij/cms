<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<div>
	
					<c:if test="${userinfo != null}">
					    <div class="layui-elem-quote">
 						 <p>查看个人信息</p>
						</div>
					<div class="layui-form-item">
    <label class="layui-form-label">编号</label>
    <div class="layui-input-block">
      <input type="text" name="uid" lay-verify="uid" autocomplete="off" value="${userinfo.uid }"  class="layui-input" readonly="readonly">
    </div>
  </div><div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block">
      <input type="text" name="username" lay-verify="custcompany" autocomplete="off" value="${userinfo.username }" class="layui-input" readonly="readonly">
    </div>
  </div>
					  </c:if>
				</div><script src="${pageContext.request.contextPath}/layui/layui.js"></script>
	