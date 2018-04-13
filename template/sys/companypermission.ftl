<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<script src="${public}/js/model/sys/companypermission/index.js" type="text/javascript"></script>
<link href="${public}/css/model/sys/companypermission/index.css" rel="stylesheet" type="text/css" />
<html>  
<head>
<title>权限分配</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="easyui-layout">
    <div data-options="region:'west',split:true" title="权限分配" style="width:250px;">
        <ul id="orglefttree"></ul>
    </div>
    <div data-options="region:'center',title:''">
        <@shiro.hasPermission name="sys:companypermission:save">
            <a id="saveBtn" href="#" class="easyui-linkbutton hide" onclick="save()">保存</a>
        </@shiro.hasPermission>
        <ul id="permissiontree" class="hide"></ul>
    </div>
</div>
</body>
</html>