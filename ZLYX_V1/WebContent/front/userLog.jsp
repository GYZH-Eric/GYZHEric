<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 	<link rel="stylesheet" href="layui-v2.5.6/css/layui.css" media="all">
    <style>
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<div class="layui-form layuimini-form">
	<div class="layui-form-item">
		<label class="layui-form-label">头像</label>
		<div class="layui-input-inline">
			<button class="layui-btn" id="upbutton" type="button">
			<i class="layui-icon">&#xe67c;</i>上传图片
			</button>
		</div>
		<div id="imgbox" style="width: 180px;height: 180px;border: 1px solid;" class="layui-inline">
			<img alt="" src="upload/picture" style="width: 180px;height: 180px; margin: 5 auto;">
		</div>
	</div>
    <div class="layui-form-item">
        <label class="layui-form-label required">ID</label>
        <div class="layui-input-block">
            <input type="text" name="reId" id="reId" placeholder="自动生成" value="" class="layui-input"  readonly="readonly">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">用户ID</label>
        <div class="layui-input-block">
            <input type="text" name="cdId" id="cdId" lay-verify="required" lay-reqtext="用户不能为空" placeholder="请输入用户ID" value="" class="layui-input"  readonly="readonly">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">地址</label>
        <div class="layui-input-block">
            <input type="text" name="address" id="address" lay-verify="required" lay-reqtext="地址不能为空" placeholder="请输入地址" value="" class="layui-input" >
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">职位</label>
        <div class="layui-input-block">
            <input type="text" name="pos" id="pos" lay-verify="required" lay-reqtext="职位不能为空" placeholder="请输入职位" value="" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">性别</label>
        <div class="layui-input-block">
            <select name="cdSex" id="cdSex">
				<option value="男">男</option>
				<option value="女">女</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">从业时间</label>
        <div class="layui-input-block">
            <input type="text" name="jobTime" id="jobTime" lay-verify="required" lay-reqtext="不能为空" placeholder="请输入" value="" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">预期薪水</label> 
        <div class="layui-input-block">
            <input type="text" name="cdSal" id="cdSal" lay-verify="required" lay-reqtext="不能为空" placeholder="请输入" value="" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label required">email</label>
        <div class="layui-input-block">
            <input type="text" name="email" id="email" lay-verify="required" lay-reqtext="不能为空" placeholder="请输入" value="" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">工作经历</label>
        <div class="layui-input-block">
            <textarea name="cdExp" id="cdExp" class="layui-textarea" placeholder="请输入备注信息"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注信息</label>
        <div class="layui-input-block">
            <textarea name="Infor" id="infor" class="layui-textarea" placeholder="请输入备注信息"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">确认保存</button>
        </div>
    </div>
</div>
<script src="layui-v2.5.6/layui.js" charset="utf-8"></script>
<script src="js/jquery-3.1.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var cdName=window.location.href.slice(window.location.href.indexOf('=') + 1);
	var url="";
	$.ajax({ //jobs双列表 动态显示
		url:'../resJsonCd.do',//获取服务端的URL地址
		dataType :'json',//返回数据类型,当前主要是json, text文本
		method:'post',
		data: {cdName:cdName},
		success:function(data){
			if(data[0].reId==null){
				url="../addRes.do";
			}else{
				url="../updateRes.do";
			};
			$("#imgbox img").attr("src","../upload/"+data[0].cduser.cdName+".jpg");
			$("#reId").val(data[0].reId);
			$("#cdId").val(data[0].cduser.cdId);
			$("#address").val(data[0].address);
			$("#pos").val(data[0].pos);
			var sel=$("#cdSex");
        	sel.find("option[value="+data[0].cdSex+"]").attr("selected",true);
			$("#jobTime").val(data[0].jobTime);
			$("#cdSal").val(data[0].cdSal);
			$("#email").val(data[0].email);
			$("#cdExp").val(data[0].cdExp);
			$("#infor").val(data[0].infor);
		},
		error:function(){
			//ajax提交失败的时候触发的函数
			alert("err user");
		}
	});
	layui.use(['form','upload'], function () {
        var form = layui.form,
            layer = layui.layer,
            upload=layui.upload;
        var upper=upload.render({
			elem:"#upbutton",
			url: "../upCd.do",
			data: {
				  id: function(){
				    return cdName;
				  }
			},
			done:function(res){
				alert("upload/"+res.msg);
				$("#imgbox img").attr("src","../upload/"+res.msg);
			},
			error:function(){
				alert("error");
			}
		});
        form.on('submit(saveBtn)', function (data) {
        	var urlS=url;
			$.post(urlS,data.field,function(txt){
				if(txt=="ok"){
					//var iframeIndex = parent.layer.getFrameIndex(window.name);
	                //parent.layer.close(iframeIndex);
	                window.location.reload();
				}
			});
            return false;
        });
	});
});
</script>
</body>
</html>