<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<#include "components/selectinput2.ftl">
<#include "components/selector.ftl">
<script src="${public}/js/components/selector.js" type="text/javascript"></script>
<script src="${public}/js/model/good/category.js" type="text/javascript"></script>
<html>
<head>
<title>商品分类</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="easyui-layout">
	<div data-options="region:'west',split:true" title="分类" style="width:250px;">
			<ul id="categorytree"></ul>
	</div>
	 <div data-options="region:'center',title:''">
		  <form id="categoryform" method="post">
	    		<input type="hidden" id="parent_f" name="parent_f"/>
	    		<input type="hidden" id="uuid_f" name="uuid_f"/>
	    		<input type="hidden" id="billcode_f" name="billcode_f"/>
	    		<input type="hidden" id="level_f" name="level_f"/>
	    		<input type="hidden" id="version_f" name="version_f"/>
	    		<input type="hidden" id="status_f" name="status_f"/>
	    		<input type="hidden" id="remark_f" name="remark_f"/>
	    		<input type="hidden" id="user_modifier_f" name="user_modifier_f"/>
	    		<input type="hidden" id="user_creator_f" name="user_creator_f"/>
	    		<div style="margin-bottom:20px">
	            <input id="parentname_f" class="easyui-textbox" name="parentname_f" style="width:60%"  data-options="label:'父级分类:'" editable="false">
	        </div>
	        <div style="margin-bottom:20px">
	            <input id="code_f" class="easyui-textbox" name="code_f" style="width:60%" data-options="label:'分类编码:'" editable="false">
	        </div>
	        <div style="margin-bottom:20px">
	            <input id="name_f" class="easyui-textbox" name="name_f" style="width:60%" data-options="label:'分类名称:',required:true" >
	        </div>
			<div style="margin-bottom:20px">
		        <@selectinput2 id="stop_sysstop_f" label="是否启用:" width="60%" required="true"/>
			</div> 
			 <div style="margin-bottom:20px">
	            <input id="p_creator_f" class="easyui-textbox" name="p_creator_f" style="width:60%" data-options="label:'建档人:'" editable="false">
	        </div>
	         <div style="margin-bottom:20px">
	            <input id="createtime_f" class="easyui-textbox" name="createtime_f" style="width:60%" data-options="label:'建档时间:'" editable="false">
	        </div>
	         <div style="margin-bottom:20px">
	            <input id="p_modifier_f" class="easyui-textbox" name="p_modifier_f" style="width:60%" data-options="label:'最后修改人:'" editable="false">
	        </div>
	         <div style="margin-bottom:20px">
	            <input id="modifytime_f" class="easyui-textbox" name="modifytime_f" style="width:60%" data-options="label:'最后修改时间:'" editable="false">
	        </div>
	        <div style="padding:5px 0">
	        		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">保存</a>
	        		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">清空</a>
	    		</div>
	    </form>
	    
	</div> 
    
    <div id="cm" class="easyui-menu" style="width:120px;">
	    	<div onclick="add()" data-options="iconCls:'icon-add'">新增</div>
	    	<div onclick="remove()" data-options="iconCls:'icon-remove'">删除</div>
    </div>
 <@selector/>
</body>  
</html>