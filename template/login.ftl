<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">

<script src="${public}/js/model/login.js" type="text/javascript"></script>
<link href="${public}/css/model/login.css" rel="stylesheet" type="text/css" />


<html>
<head>
<title>系统登陆</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <div id="login" class="login">
    <p>系统登录</p>
    <form id="login_form" method="post" action="doLogin">
        <input type="hidden" name="difOrgCode" value="${difOrgCode}">
        <input id="account" name="account" class="easyui-textbox" data-options="iconCls:'icon-man',prompt:'请输入用户名'" ><br/><br/>
        <input id="password" name="password" class="easyui-passwordbox" data-options="iconCls:'icon-lock',prompt:'请输入密码'" ><br/><br/>
        <a id="login_btn"  class="easyui-linkbutton login_btn" > 登 录 </a>
    </form>
    <div id="msg" class="msgTips">${msg}</div>
	</div>
	<div id="footer" class="footer">
	<p>系统时间：${date?string("yyyy-MM-dd HH:mm:ss")}</p>
	<p>建议使用360极速浏览器访问本系统 最低支持分辨率：1366 * 768</p>
	</div>
</body>
</html>