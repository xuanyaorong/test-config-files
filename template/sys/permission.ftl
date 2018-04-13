<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<script src="${public}/js/model/sys/permission/index.js" type="text/javascript"></script>
<link href="${public}/css/model/sys/permission/index.css" rel="stylesheet" type="text/css" />
<html>
<head>
<title>权限列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="easyui-layout">
	<div data-options="region:'west',split:true" title="权限" style="width:250px;">
			<ul id="permissiontree"></ul>
	</div>
	<div data-options="region:'center',title:''">
		<table id="permissionlist"></table>
	</div>
	<div id="permissionopt" class="easyui-dialog" title="保存" data-options="iconCls:'icon-save',closed:true" style="width:450px;height:300px;padding:10px">
		<form id="permissionform" method="post">
				<input type="hidden" id="parentF" name="parentF"/>
				<input type="hidden" id="uuidF" name="uuidF"/>
			<div style="margin-bottom:20px">
				<input id="codeF" class="easyui-textbox" name="codeF" style="width:60%" data-options="label:'权限编码:'">
			</div>
			<div style="margin-bottom:20px">
				<input id="nameF" class="easyui-textbox" name="nameF" style="width:60%" data-options="label:'权限名称:',required:true">
			</div>
            <div style="margin-bottom:20px">
                <input id="buttonF" class="easyui-textbox" name="buttonF" style="width:60%" data-options="label:'点击事件:'">
            </div>
            <div style="margin-bottom:20px">
                <input id="remarkF" class="easyui-textbox" name="remarkF" style="width:60%" data-options="label:'备注:'">
            </div>
			<#--<div style="margin-bottom:20px">
				<input id="idF" class="easyui-numberbox" name="idF" style="width:60%" data-options="label:'序号:',required:true">
			</div>-->
		</form>
		<div style="text-align:center;padding:5px 0">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">确认</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#permissionopt').dialog('close');" style="width:80px">取消</a>
		</div>
	</div>
    <div id="toolbar">
		<@shiro.hasPermission name="sys:permission:addsave">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()">新增</a>
		</@shiro.hasPermission>
		<@shiro.hasPermission name="sys:permission:editsave">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="edit()">修改</a>
		</@shiro.hasPermission>
		<@shiro.hasPermission name="sys:permission:delete">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="remove()">删除</a>
		</@shiro.hasPermission>
    </div>
</body>  
</html>