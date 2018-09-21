<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<c:if test="${ invoedit != null }">
<div class="layui-elem-quote">
 	<p>修改发票信息</p>
</div>
<div>
<form class="layui-form" action="/cms01/web/invooperate" method="post">
	<c items="${invoedit}" var="invoedit">
  <div class="layui-form-item">
    <label class="layui-form-label">发票编号</label>
    <div class="layui-input-block">
      <input type="text" name="invoiceId" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoedit.invoiceId }" readonly >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同编号</label>
    <div class="layui-input-block">
      <input type="text" name="contId" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoedit.contId }">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">应收金额</label>
    <div class="layui-input-block">
      <input type="text" name="receivableMoney" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoedit.receivableMoney }">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">已收金额</label>
    <div class="layui-input-block">
      <input type="text" name="receivedMoney" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoedit.receivedMoney }">
    </div>
  </div>
  <c:if test="${ invoedit.isInvoice ==1 }">
  	<div class="layui-form-item">
    <label class="layui-form-label">是否开具发票</label>
    <div class="layui-input-block">
      <input type="radio" name="isInvoice" value="1" title="已开发票" checked>
      <input type="radio" name="isInvoice" value="0" title="未开发票">
      </div>
    </div>
    </c:if>
     <c:if test="${ invoedit.isInvoice==0 }">
       <div class="layui-form-item">
    	<label class="layui-form-label">是否开具发票</label>
    	<div class="layui-input-block">
     	 <input type="radio" name="isInvoice" value="1" title="已开发票" >
      	<input type="radio" name="isInvoice" value="0" title="未开发票" checked>
      
    	</div>
    	</div>
    </c:if>
  <div>
  	 <button type="submit" class="layui-btn" name="action" value="1">确认</button>
  	 <button type="submit" class="layui-btn layui-btn-danger" name="action" value="2">删除</button>
  </div>
  </c>
</form>
</div>
</c:if>
<script>
		//JavaScript代码区域
		layui.use('form', function(){
			var form = layui.form; 
			form.render();
		});
	</script>