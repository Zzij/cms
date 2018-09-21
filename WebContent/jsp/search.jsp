<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<c:if test="${ issearch != null }">
<form class="layui-form" action="/cms01/web/search" method="post">
 <div class="layui-inline">
      <label class="layui-form-label">搜索类型</label>
      <div class="layui-input-inline">
        <select name="search" lay-verify="required" lay-search="">
          <option value="1">合同编号</option>
          <option value="2">合同名称</option>
          <option value="3">客户编号</option>
          <option value="4">经办人</option>
          <option value="5">合同类型</option>
        </select>
      </div>
    </div>
    <div class="layui-input-inline">
      <input type="text" name="searchinfo"  lay-verify="searchinfo" autocomplete="off" placeholder="请输入搜索内容" class="layui-input" >
    </div>
    <div class="layui-input-inline">
      <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1" >搜索</button>
    </div>
    
</form>
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
  
  //创建一个编辑器

  form.verify({
	  searchinfo: function(value){
	      if(value.length < 1){
	        return '搜索至少要有一个字符啊！';
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