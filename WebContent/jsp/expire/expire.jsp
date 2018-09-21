<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<div>
	
					<c:if test="${expiredays != null}">
					    <div class="layui-elem-quote">
 						 <p>即将到期合同</p>
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
					      <th>经办人</th>
					      <th>到期日期</th>
					      <th>操作</th>
					    </tr> 
					  </thead>
					  <tbody>
					  	<c:forEach items="${expiredays}" var="expire">
						  	<tr>
						      <td><a href="${pageContext.request.contextPath}/web/conoperate?action=check&contId=${expire.contId}">${expire.contId}</a></td>
						      <td>${expire.contName}</td>
						      <td><a href="${pageContext.request.contextPath}/web/cusoperate?action=check&custId=${expire.custId}">${expire.custId}</a></td>
						      <td>${expire.contBeginDate}</td>
						      <td>${expire.contEndDate}</td>
						      <td>${expire.operator}</td>
						      <th>${expire.expireDays}</th>
						      <td>

						      	<a href="${pageContext.request.contextPath}/web/conoperate?action=edit&contId=${expire.contId}" ><img src="${pageContext.request.contextPath}/jsp/images/icon_edit.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/conoperate?action=check&contId=${expire.contId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_check.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/conoperate?action=delete&contId=${expire.contId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_delete.png" /></a>
							  </td>
						    </tr>
					  	</c:forEach>
					  </tbody>
					  </table>
					  </c:if>
					 
				</div>
				<script src="${pageContext.request.contextPath}/layui/layui.js">
				</script>
	