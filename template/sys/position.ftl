<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/includesys.ftl">
<html>
<head>
<title>职位列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <table id="positionlist"></table>
    <div id="positionopt" class="easyui-dialog" title="保存" data-options="iconCls:'icon-save',closed:true" style="width:450px;height:370px;padding:10px">
        <form id="positionform" method="post">
            <input type="hidden" id="idF" name="idF"/>
            <div style="margin-bottom:20px">
                <input id="companyCompanyF" class="easyui-combobox" name="companyCompanyF" style="width:60%"
                       data-options="label:'公司名称:',valueField:'idF',textField:'nameF',url:'/sys/company/companylist',required:true,onSelect:function(record){
                $('#departmentDepartmentF').combobox('clear');
                $('#departmentDepartmentF').combobox('reload', '/sys/department/departmentvolist?companyId='+record.idF);
            }">
            </div>
            <div style="margin-bottom:20px">
                <input id="departmentDepartmentF" class="easyui-combobox" name="departmentDepartmentF" style="width:60%"
                       data-options="label:'部门名称:',valueField:'idF',textField:'nameF',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input id="nameF" class="easyui-textbox" name="nameF" style="width:60%" data-options="label:'职位名称:',required:true">
            </div>
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">Submit</a>
        </div>
    </div>
    <script type="text/javascript">
    $('#positionlist').datagrid({
        url:'positionvolist',
        columns:[[
            {field:'idF',title:'id',width:150},
            {field:'companyCompanyF',title:'公司id',width:150,hidden:true},
            {field:'companyName',title:'公司名称',width:150},
            {field:'departmentDepartmentF',title:'部门id',width:150,hidden:true},
            {field:'departmentName',title:'部门名称',width:150},
            {field:'nameF',title:'职位名称',width:150}
        ]],
        singleSelect:true,
        toolbar:[{
            text:'新增',
            iconCls:'icon-add',
            handler:add
        },{
            text:'修改',
            iconCls:'icon-edit',
            handler:edit
        },{
            text:'删除',
            iconCls:'icon-remove',
            handler:remove
        }]
    });
    <@shiro.lacksPermission name="sys:position:addsave">
        $('div.datagrid-toolbar a').eq(0).hide();
    </@shiro.lacksPermission>
    <@shiro.lacksPermission name="sys:position:editsave">
        $('div.datagrid-toolbar a').eq(1).hide();
    </@shiro.lacksPermission>
    <@shiro.lacksPermission name="sys:position:delete">
        $('div.datagrid-toolbar a').eq(2).hide();
    </@shiro.lacksPermission>
    function add(){
        $('#positionform').form('clear');
        $('#companyCompanyF').combobox('clear');
        $('#departmentDepartmentF').combobox('clear');
        $("#positionform").attr('action',"addsave");
        $('#positionopt').dialog('open');
    }
    function edit(){
        $('#positionform').form('clear');
        $('#companyCompanyF').combobox('clear');
        $('#departmentDepartmentF').combobox('clear');
        $("#positionform").attr('action',"editsave");
        var row=$('#positionlist').datagrid("getSelected");
        if(!row){
            alert("请选择需要修改的职位");
        }else{
            $("#idF").val(row.idF);
            $("#companyCompanyF").combobox('setValue',row.companyCompanyF);
            $("#departmentDepartmentF").combobox('setValue',row.departmentDepartmentF);
            $("#nameF").textbox('setValue',row.nameF);
            $('#positionopt').dialog('open');
        }
    }
    function remove(){
        var row=$('#positionlist').datagrid("getSelected");
        if(!row){
            alert("请选择需要删除的职位");
        }else{
            window.location.href="delete?idF="+row.idF;

        }
    }
    function submitForm(){
        $('#positionform').form('submit',{
            success:function(data){
                window.location.href="index";
            }
        });
    }
</script>
</body>
</html>