<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<c:if test="${ conview != null }">
<div class="layui-elem-quote">
 	<p>合同详情</p>
</div>
<div>

<div class="layui-form-item">
    <label class="layui-form-label">合同编号</label>
    <div class="layui-input-block">
      <input type="text" name="contId" lay-verify="title" autocomplete="off"  class="layui-input"  value="${ conview.contId }" readonly >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同名称</label>
    <div class="layui-input-inline">
      <input type="text" name="contName" lay-verify="cname" autocomplete="off" value="${ conview.contName }" class="layui-input"  readonly>
    </div>
  
  	<div class="layui-inline">
    <label class="layui-form-label">客户编号</label>
    <div class="layui-input-inline">
      <input type="text" name="custId" lay-verify="title" autocomplete="off" value="${ conview.custId }" class="layui-input" readonly >
    </div>
  	</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同开始日期</label>
    <div class="layui-input-inline">
     <input type="text" name="contBeginDate" id="contBeginDate" lay-verify="date" value="${ conview.contBeginDate }" autocomplete="off" class="layui-input" readonly>
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">合同结束日期</label>
    <div class="layui-input-inline">
		<input type="text" name="contEndDate" id="contEndDate" lay-verify="date" value="${ conview.contEndDate }" autocomplete="off" class="layui-input" readonly>
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同金额</label>
    <div class="layui-input-inline">
      <input type="text" name="contMoney" lay-verify="title" autocomplete="off" value="${ conview.contMoney }" class="layui-input" readonly>
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">经办人</label>
    <div class="layui-input-inline">
      <input type="text" name="operator" lay-verify="title" autocomplete="off" value="${ conview.operator }" class="layui-input"  readonly>
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">应收金额</label>
    <div class="layui-input-inline">
      <input type="text" name="receivableMoney" lay-verify="title" autocomplete="off" value="${ conview.receivableMoney }" class="layui-input" readonly>
    </div>

  <div class="layui-inline">
    <label class="layui-form-label">已收金额</label>
    <div class="layui-input-inline">
      <input type="text" name="receivedMoney" lay-verify="title" autocomplete="off" value="${ conview.receivedMoney }" class="layui-input" readonly>
    </div>
  </div>
    </div>
  <div class="layui-form-item">
    <label class="layui-form-label">付款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="payDate"  value="${ conview.payDate }" autocomplete="off" class="layui-input" readonly>
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">到期日期</label>
    <div class="layui-input-inline">
		<input type="text" name="expireDays" id="expireDays" lay-verify="date" value="${ conview.expireDays }" autocomplete="off" class="layui-input" readonly>
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">收款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="receivableDate" id="receivableDate" lay-verify="date" value="${conview.receivableDate }" autocomplete="off" class="layui-input" readonly>
    </div>

  <div class="layui-inline">
    <label class="layui-form-label">合同类型</label>
    <div class="layui-input-inline">
      <input type="text" name="contType" lay-verify="title" autocomplete="off" value="${ conview.contType }" class="layui-input" readonly>
    </div>
  </div>
    </div>
  <div class="layui-form-item">
    <label class="layui-form-label">印花税率</label>
    <div class="layui-input-inline">
      <input type="text" name="stampTaxRate" lay-verify="title" autocomplete="off" value="${ conview.stampTaxRate }" class="layui-input" readonly>
    </div>
  
  <div class="layui-inline">
    <label class="layui-form-label">印花税额</label>
    <div class="layui-input-inline">
      <input type="text" name="stampTax" lay-verify="title" autocomplete="off" value="${ conview.stampTax }" class="layui-input" readonly>
    </div>
  </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">印花税缴款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="stampPayDate" id="stampPayDate" lay-verify="date" value="${ conview.stampPayDate }" autocomplete="off" class="layui-input" readonly>
    </div>
  </div>
  

</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //日期
  laydate.render({
    elem: '#contBeginDate'
  });
  laydate.render({
    elem: '#contEndDate'
  });
  laydate.render({
    elem: '#payDate'
  });
  laydate.render({
    elem: '#expireDays'
  });
  laydate.render({
    elem: '#receivableDate'
  });
  laydate.render({
    elem: '#stampPayDate'
  });
  
  //创建一个编辑器

 

  
});


</script>
</c:if>