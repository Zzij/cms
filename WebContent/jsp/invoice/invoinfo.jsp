<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<div>
	
					<c:if test="${invoiceList != null}">
					<div class="layui-elem-quote">
 						<p>查看所有发票</p>
					</div>
					<table class="layui-table">
					  <colgroup>
					    <col width="150">
					    <col width="200">
					    <col>
					  </colgroup>
					  <thead>
					    <tr>
					      <th>发票编号</th>
					   	  <th>合同编号</th>
					      <th>应收金额</th>
					      <th>已收金额</th>
					      <th>是否已开发票</th>
					      <th>操作</th>
					    </tr> 
					  </thead>
					  <tbody>
					  	<c:forEach items="${invoiceList}" var="invo">
						  	<tr>
						      <td>${invo.invoiceId}</td>
						      <td>${invo.contId}</td>
						      <td>${invo.receivableMoney}</td>
						      <td>${invo.receivedMoney}</td>
						      <td><c:if test="${invo.isInvoice == 1}">已开发票</c:if><c:if test="${invo.isInvoice == 0}">未开发票</c:if></td>
						      <td>

						      	<a href="${pageContext.request.contextPath}/web/invooperate?action=edit&invoiceId=${invo.invoiceId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_edit.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/invooperate?action=check&invoiceId=${invo.invoiceId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_check.png" /></a>
						      	<a href="${pageContext.request.contextPath}/web/invooperate?action=delete&invoiceId=${invo.invoiceId}"><img src="${pageContext.request.contextPath}/jsp/images/icon_delete.png" /></a>
							  </td>
						    </tr>
					  	</c:forEach>
					  </tbody>
					  </table>
					  </c:if>
				</div><script src="${pageContext.request.contextPath}/layui/layui.js"></script>
	