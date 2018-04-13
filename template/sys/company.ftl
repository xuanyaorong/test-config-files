<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/includesys.ftl">
<html>
<head>
<title>公司列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <table id="companylist"></table>
    <div id="companyopt" class="easyui-dialog" title="保存" data-options="iconCls:'icon-save',closed:true" style="width:450px;height:370px;padding:10px">
        <form id="companyform" method="post">
            <input type="hidden" id="idF" name="idF"/>
            <div style="margin-bottom:20px">
                <input id="nameF" class="easyui-textbox" name="nameF" style="width:60%" data-options="label:'公司名称:',required:true">
            </div>
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">Submit</a>
        </div>
    </div>
    <script type="text/javascript">
    $('#companylist').datagrid({
        url:'companylist',
        columns:[[
            {field:'idF',title:'id',width:150},
            {field:'nameF',title:'公司名称',width:150}
        ]],
        singleSelect:true,
        toolbar:[
         {
            text:'新增',
            iconCls:'icon-add',
            handler:add
        }, {
            text:'修改',
            iconCls:'icon-edit',
            handler:edit
        },{
            text:'删除',
            iconCls:'icon-remove',
            handler:remove
        }]
    });
    <@shiro.lacksPermission name="sys:company:addsave">
            $('div.datagrid-toolbar a').eq(0).hide();
    </@shiro.lacksPermission>
    <@shiro.lacksPermission name="sys:company:editsave">
            $('div.datagrid-toolbar a').eq(1).hide();
    </@shiro.lacksPermission>
    <@shiro.lacksPermission name="sys:company:delete2">
            $('div.datagrid-toolbar a').eq(2).hide();
    </@shiro.lacksPermission>
    function add(){
        $('#companyform').form('clear');
        $("#companyform").attr('action',"addsave");
        $('#companyopt').dialog('open');
    }
    function edit(){
        $('#companyform').form('clear');
        $("#companyform").attr('action',"editsave");
        var row=$('#companylist').datagrid("getSelected");
        if(!row){
            alert("请选择需要修改的公司");
        }else{
            $("#idF").val(row.idF);
            $("#nameF").textbox('setValue',row.nameF);
            $('#companyopt').dialog('open');
        }
    }
    function remove(){
        var row=$('#companylist').datagrid("getSelected");
        if(!row){
            alert("请选择需要删除的公司");
        }else{
            window.location.href="delete?uuidF="+row.uuidF;

        }
    }
    function submitForm(){
        $('#companyform').form('submit',{
            success:function(data){
                window.location.href="index";
            }
        });
    }
</script>
</body>
</html>