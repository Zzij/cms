<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<c:if test="${ isformList != null }">

<div class="layui-elem-quote">
 	<p>添加新用户</p>
</div>
<div>

<form class="layui-form layui-form-pane" action="/cms01/web/cusadd" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">乙方公司名</label>
    <div class="layui-input-block">
      <input type="text" name="custcompany" lay-verify="custcompany" autocomplete="off" placeholder="请输入乙方公司名" class="layui-input" ">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input type="text" name="custname" lay-verify=""custname"" autocomplete="off" placeholder="请输入用户名" class="layui-input" ">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">联系方式</label>
    <div class="layui-input-block">
      <input type="text" name="custcontact" lay-verify="required|phone" autocomplete="off" placeholder="请输入联系方式" class="layui-input" ">
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
  

  
  //创建一个编辑器

 
  //自定义验证规则
  form.verify({
	  custcompany: function(value){
      if(value.length < 5){
        return '公司名称至少得5个字符啊';
      }
    }
  	,custname: function(value){
        if(value.length < 1){
            return '名字至少得1个字符啊';
          }
        }
    
    
  });
  
  //监听指定开关
  
  
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