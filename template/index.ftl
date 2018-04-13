<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<script src="${public}/js/model/index.js" type="text/javascript"></script>
<link href="${public}/css/model/index.css" rel="stylesheet" type="text/css" />
<html>  
<head>
<title>聚点ERP</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body class="easyui-layout">   
    <div class="head" data-options="region:'north'" >
    <spen class="head-left"><h2>聚点ERP</h2></spen>
    <div  class="head-right">
    组织:${orgName}
    <a href="javascript:void(0)" id="mb">当前用户：${username}</a>
	<div id="mm" style="width:150px">
	<div  id="changePassword">修改密码</div>
	<div  id="logout">安全退出</div>
	</div>
    </div>
    </div>
    <div class="foot" data-options="region:'south'" >
    <div class="foot-font">
    <span>建议使用360极速浏览器访问本系统 最低支持分辨率：1366 * 768</span> <span>系统时间：${date?string("yyyy-MM-dd HH:mm:ss")}</span>
    </div>
    </div>   
    <div data-options="region:'west',split:true" style="width:200px;">
    <div id="aa" class="easyui-accordion" >
    </div>  
    </div>   
    <div data-options="region:'center'" >
    <div id="tabs" class="easyui-tabs" style="height:100%;">   
     <div title="首页" >   
       <table class="easyui-datagrid" id="dg_task" fit="true" singleSelect="true" rownumbers="true" toolbar="#tb"  title="待办任务列表">   
	    <thead>   
	        <tr>   
	              <th field="billcodeF" width=150 formatter="todoUrl">单号</th>
	              <th field="pBillF" width=200 >单据名称</th>
	              <!--
	              <th field="typeF" >任务类型</th>
	              <th field="assigneeF" >审批人</th>
	              <th field="createUserF" >创建人</th>
	              <th field="createTimeF" formatter="formatDatebox">创建时间</th>-->
	        </tr>   
	    </thead>  
     <!--
    <span style="font-family:KaiTi_GB2312;font-size:18px;">     
             <div id="mymenu" class="easyui-menu">    
                 <div id="closeall">关闭全部</div>    
                     <div id="closeelse">关闭其他</div>    
            </div>  
	</span>
	-->    
	</table> 
	<div id="tb" style="height:auto">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" onclick="loadtask()">刷新</a>
	</div>
    </div> 
</div>
</div>   
<div id="changePasswordWin">
    <div id="changePasswordPanel" class="easyui-panel" data-options="height:126,closed:true">
        <form id="changePasswordForm" method="post">
            <input type="hidden" name="userId" value="${useruuid}"/>
            <div style="margin-top:10px;margin-bottom:20px">
                <input id="pass" class="easyui-passwordbox" name="newpassword" data-options="label:'新密码:',width:250,required:true">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-passwordbox" name="newpassword2" validType="confirmPass['#pass']" data-options="label:'确认密码:',width:250,required:true">
            </div>
        </form>
    </div>
</div> 
</body>   
</html>