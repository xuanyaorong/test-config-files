<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<script src="${public}/js/model/sys/sysmenu/index.js" type="text/javascript"></script>
<link href="${public}/css/model/sys/sysmenu/index.css" rel="stylesheet" type="text/css" />
<html>  
<head>
<title>菜单管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<@shiro.hasPermission name="sys:sysmenu:addsave">
		<button onclick="append()" data-options="iconCls:'icon-add'">新增</button>
	</@shiro.hasPermission>
	<br/>
	<ul id="sysmenutree"></ul>
	<div id="sysmenuopt" class="easyui-dialog" title="保存" data-options="iconCls:'icon-save',closed:true" style="width:400px;height:320px;padding:10px">
	    <form id="sysmenuform" method="post">
	    		<input type="hidden" id="parentF" name="parentF"/>
	    		<input type="hidden" name="uuidF"/>
	    		<div style="margin-bottom:20px">
	            <input id="parentName" class="easyui-textbox" style="width:60%" data-options="label:'父级菜单:',disabled:true">
	        </div>
	        <div style="margin-bottom:20px">
	            <input id="codeF" class="easyui-textbox" name="codeF" style="width:60%" data-options="label:'菜单编码:'">
	        </div>
	        <div style="margin-bottom:20px">
	            <input id="nameF" class="easyui-textbox" name="nameF" style="width:60%" data-options="label:'菜单名称:',required:true">
	        </div>
            <div style="margin-bottom:20px">
                <input id="billBillF" class="easyui-textbox" name="billBillF" style="width:60%" data-options="label:'菜单billUuid:'">
            </div>
            <#--<div style="margin-bottom:20px">
                <input id="idF" class="easyui-numberbox" name="idF" style="width:60%" data-options="label:'菜单序号:',required:true">
            </div>-->
	        <div style="margin-bottom:20px">
	            <input id="urlF" class="easyui-textbox" name="urlF" style="width:60%" data-options="label:'菜单url:'">
	        </div>			          
	    </form>
	    <div style="text-align:center;padding:5px 0">
	        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">确认</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#sysmenuopt').dialog('close');" style="width:80px">取消</a>
	    </div>
    </div>
          
    <div id="mm" class="easyui-menu" style="width:120px;">
		<@shiro.hasPermission name="sys:sysmenu:addsave">
	    	<div onclick="append('true')" data-options="iconCls:'icon-add'">新增</div>
		</@shiro.hasPermission>
		<@shiro.hasPermission name="sys:sysmenu:editsave">
	   		<div onclick="edit()" data-options="iconCls:'icon-edit'">修改</div>
		</@shiro.hasPermission>
		<@shiro.hasPermission name="sys:sysmenu:delete">
	    	<div onclick="remove()" data-options="iconCls:'icon-remove'">删除</div>
		</@shiro.hasPermission>
    </div>
</body>  
</html>