<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<c:if test="${ conedit != null }">

<div class="layui-elem-quote">
 	<p>修改合同</p>
</div>
<div>

<form class="layui-form" action="/cms01/web/conoperate" method="post">
<div class="layui-form-item">
    <label class="layui-form-label">合同编号</label>
    <div class="layui-input-block">
      <input type="text" name="contId" lay-verify="title" autocomplete="off"  class="layui-input"  value="${ conedit.contId }" readonly >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同名称</label>
    <div class="layui-input-inline">
      <input type="text" name="contName" lay-verify="contName" autocomplete="off" value="${ conedit.contName }" class="layui-input" >
    </div>
  
  	<div class="layui-inline">
    <label class="layui-form-label">客户编号</label>
    <div class="layui-input-inline">
      <input type="text" name="custId" lay-verify="title" autocomplete="off" value="${ conedit.custId }" class="layui-input" >
    </div>
  	</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同开始日期</label>
    <div class="layui-input-inline">
     <input type="text" name="contBeginDate" id="contBeginDate" lay-verify="contBeginDate" value="${ conedit.contBeginDate }" autocomplete="off" class="layui-input">
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">合同结束日期</label>
    <div class="layui-input-inline">
		<input type="text" name="contEndDate" id="contEndDate" lay-verify="contEndDate" value="${ conedit.contEndDate }" autocomplete="off" class="layui-input">
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同金额</label>
    <div class="layui-input-inline">
      <input type="text" name="contMoney" lay-verify="title" autocomplete="off" value="${ conedit.contMoney }" class="layui-input" >
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">经办人</label>
    <div class="layui-input-inline">
      <input type="text" name="operator" lay-verify="title" autocomplete="off" value="${ conedit.operator }" class="layui-input" >
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">应收金额</label>
    <div class="layui-input-inline">
      <input type="text" name="receivableMoney" lay-verify="title" autocomplete="off" value="${ conedit.receivableMoney }" class="layui-input" >
    </div>

  <div class="layui-inline">
    <label class="layui-form-label">已收金额</label>
    <div class="layui-input-inline">
      <input type="text" name="receivedMoney" lay-verify="title" autocomplete="off" value="${ conedit.receivedMoney }" class="layui-input" >
    </div>
  </div>
    </div>
  <div class="layui-form-item">
    <label class="layui-form-label">付款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="payDate" id="payDate"  lay-verify="payDate" value="${ conedit.payDate }" autocomplete="off" class="layui-input">
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">到期日期</label>
    <div class="layui-input-inline">
		<input type="text" name="expireDays" id="expireDays" lay-verify="date" value="${ conedit.expireDays }" autocomplete="off" class="layui-input">
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">收款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="receivableDate" id="receivableDate" lay-verify="date" value="${ conedit.receivableDate }" autocomplete="off" class="layui-input">
    </div>

  <div class="layui-inline">
    <label class="layui-form-label">合同类型</label>
    <div class="layui-input-inline">
      <input type="text" name="contType" lay-verify="title" autocomplete="off" value="${ conedit.contType }" class="layui-input" >
    </div>
  </div>
    </div>
  <div class="layui-form-item">
    <label class="layui-form-label">印花税率</label>
    <div class="layui-input-inline">
      <input type="text" name="stampTaxRate" lay-verify="title" autocomplete="off" value="${ conedit.stampTaxRate }" class="layui-input" >
    </div>
  
  <div class="layui-inline">
    <label class="layui-form-label">印花税额</label>
    <div class="layui-input-inline">
      <input type="text" name="stampTax" lay-verify="title" autocomplete="off" value="${ conedit.stampTax }" class="layui-input" >
    </div>
  </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">印花税缴款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="stampPayDate" id="stampPayDate" lay-verify="date" value="${ conedit.stampPayDate }" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div>
  	 <div>
  	 <button type="submit" class="layui-btn" name="action" value="1">确认</button>
  	 <button type="submit" class="layui-btn layui-btn-danger" name="action" value="2">删除</button>
  </div>
  </div>
</form>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
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
    elem: '#receivableDate'
  });
  laydate.render({
    elem: '#stampPayDate'
  });
  laydate.render({
    elem: '#expireDays'
  });
  
  //创建一个编辑器

  form.verify({
	  contName: function(value){
	      if(value.length < 3){
	        return '标题至少得3个字符啊';
	      }
	    }
	    
	  });
  //监听提交
  form.on('submit(demo1)', function(data){
    layer.alert(JSON.stringify(data.field), {
      title: '最终的提交信息'
    })
    return false;
  });

  
});


</script>
</c:if>