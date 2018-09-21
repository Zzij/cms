<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<div>
	
					<c:if test="${customerList != null}">
					    <div class="layui-elem-quote">
 						 <p>查看所有用户用户</p>
						</div>
					<table class="layui-table">
					  <colgroup>
					    <col width="150">
					    <col width="200">
					    <col>
					  </colgroup>
					  <thead>
					    <tr>
					      <th>客户编号</th>
					   	  <th>客户公司</th>
					      <th>客户名</th>
					      <th>联系方式</th>
					      <th>操作</th>
					    </tr> 
					  </thead>
					  <tbody>
					  	<c:forEach items="${customerList}" var="cus">
						  	<tr>
						      <td>${cus.custId}</td>
						      <td>${cus.custCompany}</td>
						      <td>${cus.custName}</td>
						      <td>${cus.custContact}</td>
						      <td>

						      	<a href="${pageContext.request.contextPath}/web/cusoperate?action=edit&custId=${cus.custId}" ><img src="${pageContext.request.contextPath}/jsp/images/icon_edit.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/cusoperate?action=check&custId=${cus.custId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_check.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/cusoperate?action=delete&custId=${cus.custId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_delete.png" /></a>
							  </td>
						    </tr>
					  	</c:forEach>
					  </tbody>
					  </table>
					  </c:if>
				</div><script src="${pageContext.request.contextPath}/layui/layui.js"></script>
	