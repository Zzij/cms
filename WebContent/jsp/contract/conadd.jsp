<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<c:if test="${ isconForm != null }">

<div class="layui-elem-quote">
 	<p>添加新合同</p>
</div>
<div>

<form class="layui-form layui-form-pane" action="/cms01/web/conadd" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">合同名称</label>
    <div class="layui-input-inline">
      <input type="text" name="contName"  lay-verify="contName" autocomplete="off" placeholder="请输入合同名称" class="layui-input" >
    </div>
  	
  	<div class="layui-inline">
  
    <label class="layui-form-label">客户编号</label>
    <div class="layui-input-inline">
      <input type="text" name="custId" lay-verify="title" autocomplete="off" placeholder="请输入客户编号" class="layui-input" >
    </div>
  	</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同开始日期</label>
    <div class="layui-input-inline">
     <input type="text" name="contBeginDate" id="contBeginDate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">合同结束日期</label>
    <div class="layui-input-inline">
		<input type="text" name="contEndDate" id="contEndDate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同金额</label>
    <div class="layui-input-inline">
      <input type="text" name="contMoney" lay-verify="title" autocomplete="off" placeholder="请输入合同金额" class="layui-input" >
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">经办人</label>
    <div class="layui-input-inline">
      <input type="text" name="operator" lay-verify="title" autocomplete="off" placeholder="请输入合同经办人" class="layui-input" >
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">应收金额</label>
    <div class="layui-input-inline">
      <input type="text" name="receivableMoney" lay-verify="title" autocomplete="off" placeholder="请输入应收金额" class="layui-input" >
    </div>

  <div class="layui-inline">
    <label class="layui-form-label">已收金额</label>
    <div class="layui-input-inline">
      <input type="text" name="receivedMoney" lay-verify="title" autocomplete="off" placeholder="请输入已收金额" class="layui-input" >
    </div>
  </div>
    </div>
  <div class="layui-form-item">
    <label class="layui-form-label">付款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="payDate" id="payDate"  placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
    </div>
 
  <div class="layui-inline">
    <label class="layui-form-label">到期日期</label>
    <div class="layui-input-inline">
		<input type="text" name="expireDays" id="expireDays"  lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
    </div>
  </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">收款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="receivableDate" id="receivableDate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
    </div>

  <div class="layui-inline">
    <label class="layui-form-label">合同类型</label>
    <div class="layui-input-inline">
      <input type="text" name="contType" lay-verify="title" autocomplete="off" placeholder="请输入合同类型" class="layui-input" >
    </div>
  </div>
    </div>
  <div class="layui-form-item">
    <label class="layui-form-label">印花税率</label>
    <div class="layui-input-inline">
      <input type="text" name="stampTaxRate" lay-verify="title" autocomplete="off" placeholder="请输入印花税率" class="layui-input" >
    </div>
  
  <div class="layui-inline">
    <label class="layui-form-label">印花税额</label>
    <div class="layui-input-inline">
      <input type="text" name="stampTax" lay-verify="title" autocomplete="off" placeholder="请输入印花税额" class="layui-input" >
    </div>
  </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">印花税缴款日期</label>
    <div class="layui-input-inline">
		<input type="text" name="stampPayDate" id="stampPayDate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div>
  	 <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">确认</button>
  	 <button type="reset" class="layui-btn layui-btn-danger">重置</button>
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
	      if(value.length < 5){
	        return '标题至少得5个字符啊';
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