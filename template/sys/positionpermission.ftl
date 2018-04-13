<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/includesys.ftl">
<html>  
<head>
<title>职位权限分配</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div style="margin:20px 0;">
    <@shiro.hasPermission name="sys:positionpermission:save">
        <a href="#" class="easyui-linkbutton" onclick="save()">保存</a>
    </@shiro.hasPermission>
</div> 
<div class="easyui-panel" style="padding:5px">
	<input id="companyId" class="easyui-combobox" style="width:200px;" data-options="
	        label:'公司名称:',
	        valueField: 'idF',
            textField: 'nameF',
            url:'/sys/company/companylist',
            onSelect:function(record){
                $('#departmentDepartmentF').combobox('clear');
                $('#departmentDepartmentF').combobox('reload', '/sys/department/departmentvolist?companyId='+record.idF);
            }">
	</input>
    <input id="departmentDepartmentF" class="easyui-combobox" name="departmentDepartmentF" style="width:200px;"
           data-options="label:'部门名称:',valueField:'idF',textField:'nameF',
            onSelect:function(record){
                $('#positionId').combobox('clear');
                var companyId=$('#companyId').combobox('getValue');
                $('#positionId').combobox('reload', '/sys/position/positionlist?companyId='+companyId+'&departmentId='+record.idF);
            }">
    <input id="positionId" class="easyui-combobox" name="departmentDepartmentF" style="width:200px;"
           data-options="label:'职位名称:',valueField:'idF',textField:'nameF',
            onSelect:function(record){
                var nodes=$('#permissiontree').tree('getRoots');
                for(var i=0; i<nodes.length; i++){
                    $('#permissiontree').tree('uncheck',nodes[i].target);
                }
                $.getJSON('permissionidlist',{positionId:record.idF},function(data){
                    for(var i=0; i<nodes.length; i++){
                        var children=$('#permissiontree').tree('getChildren',nodes[i].target);
                        if(children.length>0){
                            for(var j=0; j<children.length; j++){
                                var isLeaf=$('#permissiontree').tree('isLeaf',children[j].target);
                                if(isLeaf){
                                    if(data.indexOf(children[j].id)>=0){
                                        $('#permissiontree').tree('check',children[j].target);
                                    }
                                }
                            }
                        }else{
                            if(data.indexOf(nodes[i].id)>=0){
                                $('#permissiontree').tree('check',nodes[i].target);
                            }
                        }
                    }
                });
            }">
    <ul id="permissiontree"></ul>
</div>
<script type="text/javascript">
		$('#permissiontree').tree({
	    		url:'/sys/permission/permissiontree',
	    		checkbox:true
		});
        function save(){
            var positionId=$('#positionId').combobox('getValue');
            if(positionId==''){
                alert('请选择职位');
                return;
            }
            var indeterminatenodes = $('#permissiontree').tree('getChecked','indeterminate');
            var nodes = $('#permissiontree').tree('getChecked');
            var s = '';
            for(var i=0; i<indeterminatenodes.length; i++){
                if (s != '') s += ',';
                s += indeterminatenodes[i].id;
            }
            for(var i=0; i<nodes.length; i++){
                if (s != '') s += ',';
                s += nodes[i].id;
            }
            if(s.length==0){
                alert('请选择权限');
                return;
            }
            $.post("save",{positionId:positionId,permissionIds:s},function(result){
                alert("保存成功");
            })
        }
    </script>
</body>
</html>