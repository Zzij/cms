<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<div>
	
					<c:if test="${contractList != null}">
					    <div class="layui-elem-quote">
 						 <p>查看所有合同</p>
						</div>
					<table class="layui-table">
					  <colgroup>
					    <col width="150">
					    <col width="200">
					    <col>
					  </colgroup>
					  <thead>
					    <tr>
					      <th>合同编号</th>
					   	  <th>合同名称</th>
					      <th>客户编号</th>
					      <th>合同开始日期</th>
					      <th>合同结束日期</th>
					      <th>合同金额</th>
					      <th>经办人</th>
					      <th>操作</th>
					    </tr> 
					  </thead>
					  <tbody>
					  	<c:forEach items="${contractList}" var="con">
						  	<tr>
						      <td><a href="${pageContext.request.contextPath}/web/conoperate?action=check&contId=${con.contId}">${con.contId}</a></td>
						      <td>${con.contName}</td>
						      <td><a href="${pageContext.request.contextPath}/web/cusoperate?action=check&custId=${con.custId}">${con.custId}</a></td>
						      <td>${con.contBeginDate}</td>
						      <td>${con.contEndDate}</td>
						      <td>${con.contMoney}</td>
						      <td>${con.operator}</td>
						      <td>

						      	<a href="${pageContext.request.contextPath}/web/conoperate?action=edit&contId=${con.contId}" ><img src="${pageContext.request.contextPath}/jsp/images/icon_edit.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/conoperate?action=check&contId=${con.contId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_check.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/conoperate?action=delete&contId=${con.contId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_delete.png" /></a>
							  </td>
						    </tr>
					  	</c:forEach>
					  </tbody>
					  </table>
					  </c:if>
				</div><script src="${pageContext.request.contextPath}/layui/layui.js"></script>
	