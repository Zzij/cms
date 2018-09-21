<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<c:if test="${ isinvoiceList != null }">
<div class="layui-elem-quote">
 	<p>添加新发票</p>
</div>
<div>
<form class="layui-form layui-form-pane" action="/cms01/web/invoadd" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">发票编号</label>
    <div class="layui-input-block">
      <input type="text" name="invoiceId" lay-verify="invoiceId" autocomplete="off" placeholder="请输入发票编号" class="layui-input" >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">合同编号</label>
    <div class="layui-input-block">
      <input type="text" name="contId" lay-verify="contId" autocomplete="off" placeholder="请输入合同编号" class="layui-input" >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">应收金额</label>
    <div class="layui-input-block">
      <input type="text" name="receivableMoney" lay-verify="title" autocomplete="off" placeholder="请输入应收金额" class="layui-input" >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">已收金额</label>
    <div class="layui-input-block">
      <input type="text" name="receivedMoney" lay-verify="title" autocomplete="off" placeholder="请输入已收金额" class="layui-input" >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">是否开具发票</label>
    <div class="layui-input-block">
      <input type="radio" name="isInvoice" value="1" title="已开发票 ">
      <input type="radio" name="isInvoice" value="0" title="未开发票 " checked>
    </div>
  </div>
  <div>
  	 <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">确认</button>
  	 <button tyep="reset" class="layui-btn layui-btn-danger">重置</button>
  </div>
</form>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<script>
		//JavaScript代码区域
	layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  laydate.render({
	    elem: '#date'
	  });
	  laydate.render({
	    elem: '#date1'
	  });
		
		 form.verify({
			    
				invoiceId: [/^\d{11}$/, '发票号必须为11位 且为数字！']  
				,contId: [/^\d{12}$/, '合同号必须为12位 且为数字！']  
			  });
			  
		 
		  form.on('submit(demo1)', function(data){
			    layer.alert(JSON.stringify(data.field), {
			      title: '最终的提交信息'
			    })
			    return false;
			  });
}); 
</script>
	
</c:if>