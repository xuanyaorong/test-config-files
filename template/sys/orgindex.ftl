<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<script src="${public}/js/model/sys/company/orgindex.js" type="text/javascript"></script>
<link href="${public}/css/model/sys/company/orgindex.css" rel="stylesheet" type="text/css" />
<html>
<head>
<title>组织机构</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="easyui-layout">
    <div data-options="region:'west',split:true" title="组织机构" style="width:250px;">
            <ul id="orglefttree"></ul>
    </div>
    <div data-options="region:'center',title:''">
        <div id="toolbar">
            <@shiro.hasPermission name="sys:company:addsave">
                <a id="newcompany" href="#" class="easyui-linkbutton hide all" data-options="plain:true" onclick="newcompany()">新建组织机构</a>
            </@shiro.hasPermission>
            <@shiro.hasPermission name="sys:department:addsave">
                <a id="newdepartment" href="#" class="easyui-linkbutton hide all" data-options="plain:true"  onclick="newdepartment()">新建部门</a>
            </@shiro.hasPermission>
            <@shiro.hasPermission name="sys:position:addsave">
                 <a id="newposition" href="#" class="easyui-linkbutton hide all" data-options="plain:true"  onclick="newposition()">新建岗位</a>
            </@shiro.hasPermission>
            <@shiro.hasPermission name="sys:user:addsave">
                 <a id="newuser" href="#" class="easyui-linkbutton hide all" data-options="plain:true"  onclick="newuser()">新建人员</a>
            </@shiro.hasPermission>
            <@shiro.hasPermission name="sys:sysmenu:addsave">
                <a id="allocuser" href="#" class="easyui-linkbutton hide all" data-options="plain:true"  onclick="allocuser()">分配下级人员</a>
            </@shiro.hasPermission>
            <@shiro.hasPermission name="sys:user:password">
                <a id="idpassword" href="#" class="easyui-linkbutton hide all" data-options="plain:true"  onclick="newidpassword()">修改密码</a>
            </@shiro.hasPermission>
            <@shiro.hasPermission name="sys:org:statusChange">
                <a id="idenable" href="#" class="easyui-linkbutton hide all" data-options="plain:true" onclick="statusChange(0)">启用</a>
                <a id="iddisable" href="#" class="easyui-linkbutton hide all" data-options="plain:true" onclick="statusChange(10)">禁用</a>
            </@shiro.hasPermission>
            <@shiro.hasPermission name="sys:org:editsave">
                <a id="idedit" href="#" class="easyui-linkbutton hide all" data-options="plain:true" onclick="edit()">编辑</a>
            </@shiro.hasPermission>
        </div>
        <table id="orgrightlist"></table>
    </div>
    <div id="opt" class="easyui-dialog" title="保存" data-options="iconCls:'icon-save',closed:true,modal: true" style="width:450px;height:370px;padding:10px">
        <form id="newform" method="post">
            <input type="hidden" id="parentF" name="parentF" value="${nodeId}"/>
            <input type="hidden" id="type" name="type"/>
            <input type="hidden" id="uuidF" name="uuidF"/>
            <div style="margin-bottom:20px">
                <input id="codeF" class="easyui-textbox" name="codeF" data-options="label:'编码:'">
            </div>
            <div style="margin-bottom:20px">
                <input id="nameF" class="easyui-textbox" name="nameF" data-options="label:'名称:',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input id="parentName" class="easyui-textbox" data-options="label:'上级组织:',disabled:true">
            </div>
            <div style="margin-bottom:20px">
                <input id="optStatusF" class="easyui-combobox" name="statusF" data-options="label:'状态:',required:true,valueField:'id', textField:'text',data:
                            [{text:'启用',id:'0',selected:true},{text:'禁用',id:'10'}]"/>
            </div>
            <#--<div style="margin-bottom:20px">
                <input id="idF" class="easyui-numberbox" name="idF" style="width:60%" data-options="label:'序号:',required:true">
            </div>-->
            <div style="margin-bottom:20px">
                <input id="remarkF" class="easyui-textbox" name="remarkF" data-options="label:'备注:'">
            </div>
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">确认</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#opt').dialog('close');" style="width:80px">取消</a>
        </div>
    </div>
    <div id="opt_user" class="easyui-dialog" title=" 新建人员" data-options="iconCls:'icon-save',closed:true,modal: true" style="width:450px;height:410px;padding:10px">
        <form id="newform_user" method="post">
            <input type="hidden" id="positionPositionF_user" name="positionPositionF"/>
            <div style="margin-bottom:20px">
                <input id="codeF_user" class="easyui-textbox" name="codeF" data-options="label:'账号:'">
            </div>
            <div style="margin-bottom:20px">
                <input id="nameF_user" class="easyui-textbox" name="nameF" data-options="label:'名称:',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input id="passwordF_user" class="easyui-textbox" name="passwordF" data-options="label:'密码:',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input id="parentName_user" class="easyui-textbox" data-options="label:'上级组织:',disabled:true">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-combobox" name="statusF" data-options="label:'状态:',required:true,valueField:'id', textField:'text',data:
                            [{text:'启用',id:'0',selected:true},{text:'禁用',id:'10'}]"/>
            </div>
            <#--<div style="margin-bottom:20px">
                <input id="idF_user" class="easyui-numberbox" name="idF" style="width:60%" data-options="label:'序号:',required:true">
            </div>-->
            <div style="margin-bottom:20px">
                <input id="remarkF_user" class="easyui-textbox" name="remarkF" data-options="label:'备注:'">
            </div>
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm_user()" style="width:80px">确认</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#opt_user').dialog('close');" style="width:80px">取消</a>
        </div>
    </div>
    <div id="opt_allocuser" class="easyui-dialog" title="分配下级人员" data-options="iconCls:'icon-save',closed:true,modal: true" style="width:650px;height:410px;padding: 5px 10px">
        <div class="easyui-layout" fit="true">
            <div data-options="region:'west'" title="" style="width:260px;">
                <ul id="allocuserlefttree"></ul>
            </div>
            <div data-options="region:'center',title:''" style="padding: 130px 5px">
                <a href="javascript:void(0)" class="easyui-linkbutton" onclick="removeallocuser()" style="width:80px"><<移除</a>
            </div>
            <div data-options="region:'east'" title="" style="width:260px;">
                <div id="allocuserlistContent" class="easyui-panel" data-options="closed:true">
                    <table id="allocuserlist"></table>
                </div>
            </div>
            <div data-options="region:'south'" style="height:50px;">
                <div style="text-align:center;padding:10px 0">
                    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm_allocuser()" style="width:80px">确认</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#opt_allocuser').dialog('close');" style="width:80px">取消</a>
                </div>
            </div>
        </div>
    </div>
    <div id="opt_idpassword" class="easyui-dialog" title="保存" data-options="iconCls:'icon-save',closed:true,modal: true" style="width:450px;height:210px;padding:10px">
        <form id="newform_idpassword" method="post">
            <input type="hidden" id="userId" name="userId"/>
            <div style="margin-bottom:20px">
                <input id="pass" class="easyui-passwordbox" name="newpassword" data-options="label:'新密码:',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-passwordbox" name="newpassword2" validType="confirmPass['#pass']" data-options="label:'确认密码:',required:true">
            </div>
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm_idpassword()" style="width:80px">确认</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#opt_idpassword').dialog('close');" style="width:80px">取消</a>
        </div>
    </div>
</body>  
</html>