<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/includesys.ftl">
<html>
<head>
<title>部门列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <table id="departmentlist"></table>
    <div id="departmentopt" class="easyui-dialog" title="保存" data-options="iconCls:'icon-save',closed:true" style="width:450px;height:370px;padding:10px">
        <form id="departmentform" method="post">
            <input type="hidden" id="idF" name="idF"/>
            <div style="margin-bottom:20px">
                <input id="companyCompanyF" class="easyui-combobox" name="companyCompanyF" style="width:60%"
                       data-options="label:'公司名称:',valueField:'idF',textField:'nameF',url:'/sys/company/companylist',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input id="nameF" class="easyui-textbox" name="nameF" style="width:60%" data-options="label:'部门名称:',required:true">
            </div>
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">Submit</a>
        </div>
    </div>
    <script type="text/javascript">
    $('#departmentlist').datagrid({
        url:'departmentvolist',
        columns:[[
            {field:'idF',title:'id',width:150},
            {field:'companyCompanyF',title:'公司id',width:150,hidden:true},
            {field:'companyName',title:'公司名称',width:150},
            {field:'nameF',title:'部门名称',width:150}
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
    <@shiro.lacksPermission name="sys:department:addsave">
        $('div.datagrid-toolbar a').eq(0).hide();
    </@shiro.lacksPermission>
    <@shiro.lacksPermission name="sys:department:editsave">
        $('div.datagrid-toolbar a').eq(1).hide();
    </@shiro.lacksPermission>
    <@shiro.lacksPermission name="sys:department:delete">
        $('div.datagrid-toolbar a').eq(2).hide();
    </@shiro.lacksPermission>
    function add(){
        $('#departmentform').form('clear');
        $("#departmentform").attr('action',"addsave");
        $('#departmentopt').dialog('open');
    }
    function edit(){
        $('#departmentform').form('clear');
        $("#departmentform").attr('action',"editsave");
        var row=$('#departmentlist').datagrid("getSelected");
        if(!row){
            alert("请选择需要修改的部门");
        }else{
            $("#idF").val(row.idF);
            $("#companyCompanyF").combobox('setValue',row.companyCompanyF);
            $("#nameF").textbox('setValue',row.nameF);
            $('#departmentopt').dialog('open');
        }
    }
    function remove(){
        var row=$('#departmentlist').datagrid("getSelected");
        if(!row){
            alert("请选择需要删除的部门");
        }else{
            window.location.href="delete?idF="+row.idF;

        }
    }
    function submitForm(){
        $('#departmentform').form('submit',{
            success:function(data){
                window.location.href="index";
            }
        });
    }
</script>
</body>
</html>