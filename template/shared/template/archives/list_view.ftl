<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<html>  
<body class="easyui-layout">   
<div data-options="region:'north',split:true,title:'查询'" style="height:60px">
按内容：
<input class="easyui-textbox"  name="name_q"  data-options="iconCls:'icon-search'" prompt="请输入想查询的内容" > 
按日期：
<input  id="startDate" name="startDate_q"  type="text" class= "easyui-datebox" prompt="点击图标选择开始日期"> </input> - 
<input  id="endDate" name="endDate_q"  type="text" class= "easyui-datebox" prompt="点击图标选择结束日期"> </input> 
按状态：
<select id="cc" class="easyui-combobox" name="state_q" >   
    <option value="1">生效</option>   
    <option value="0">失效</option>   
</select>  
<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>  
</div>
<div data-options="region:'center',title:'管理'" >
<table id="dg" class="easyui-datagrid"  toolbar="#toolbar" url="list"
            toolbar="#toolbar" pagination="true" fit="true"
            rownumbers="true" fitColumns="true" singleSelect="true">
        <thead>
            <tr>
            <#list fields as field>
              <th field="${field['fieldNameF']}" >${field['cnTitleF']}</th>
         	</#list>
            </tr>
        </thead>
    </table>
    </div>
    <div data-options="region:'south',split:true,title:'信息'" ></div>
    <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()">新增</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="edit()">修改</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroy()">删除</a>
    </div>
    <div id="dlg" class="easyui-dialog" style="width:600px"  closed="true" buttons="#dlg-buttons" maximizable="true" resizable="true">
        <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
        <#list fields as field>
              <div style="margin-bottom:10px">
                <input name="${field['fieldNameF']}" class="easyui-textbox" required="${field['requiredF']}" label="${field['cnTitleF']}:" style="width:100%">
            </div>
         	</#list>
            
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="save()" >保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" >取消</a>
    </div>
</body>   
</html>