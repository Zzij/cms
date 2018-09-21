<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<c:if test="${ invoview != null }">
<div class="layui-elem-quote">
 	<p>发票详情</p>
</div>
<div>

	<c items="${invoedit}" var="invoedit">
  <div class="layui-form-item">
    <label class="layui-form-label">发票编号</label>
    <div class="layui-input-block">
      <input type="text" name="invoiceId" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoview.invoiceId }" readonly >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同编号</label>
    <div class="layui-input-block">
      <input type="text" name="contId" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoview.contId }" readonly>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">应收金额</label>
    <div class="layui-input-block">
      <input type="text" name="receivableMoney" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoview.receivableMoney }" readonly>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">已收金额</label>
    <div class="layui-input-block">
      <input type="text" name="receivedMoney" lay-verify="title" autocomplete="off"  class="layui-input" value="${ invoview.receivedMoney }" readonly>
    </div>
  </div>
  <c:if test="${ invoview.isInvoice ==1 }">
  	<div class="layui-form-item">
    <label class="layui-form-label">是否开具发票</label>
    <div class="layui-input-block">
       <input type="text" name="isInvoice" lay-verify="title" autocomplete="off"  class="layui-input" value="已开发票" readonly>
      </div>
    </div>
    </c:if>
     <c:if test="${ invoview.isInvoice==0 }">
       <div class="layui-form-item">
    	<label class="layui-form-label">是否开具发票</label>
    	<div class="layui-input-block">
      	 <input type="text" name="isInvoice" lay-verify="title" autocomplete="off"  class="layui-input" value="未开发票" readonly>
      
    	</div>
    	</div>
    </c:if>
 
  </c>

</div>
</c:if>
<script>
		//JavaScript代码区域
		layui.use('form', function(){
			var form = layui.form; 
			form.render();
		});
	</script>