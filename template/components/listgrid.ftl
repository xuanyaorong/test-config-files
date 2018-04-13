<#macro listgrid>
<div data-options="region:'center'" >

<table id="dg_billlist" class="easyui-datagrid"  
            toolbar="#toolbar" pagination="true" fit="true"  showFooter="true"
            rownumbers="true"  singleSelect="false" sortOrder="desc">
            <thead>
            <tr>
            <th data-options="field:'ck',checkbox:true"></th>
			<#list listfields as field>
				<#if field.fieldF?split("_")?size==3>
				<th data-options="field:'${"p"+field.fieldF?substring(field.fieldF?index_of("_"))}',width:${field.width!100}" sortable="true">${field.nameF}</th>
				<#else>
				<th data-options="field:'${field.fieldF}',width:${field.width!100}" sortable="true"
				<#if field.fieldF=="status_f">
				formatter="formatterstatus"
				</#if>
				<#if field.formatterF!="">
				formatter="${field.formatterF}"
				</#if>
				<#if field.datatypeF=="decimal">
				align="right"
				</#if>
				>${field.nameF}</th>
				</#if>
			</#list>
            </tr>
		</thead>
 </table>

<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" plain="true" onclick="btn_listall()">全部</a>
    <a href="javascript:void(0)" class="easyui-linkbutton hide addlistBtn" iconCls="icon-add" plain="true" onclick="add()">新增</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" plain="true" onclick="btn_listquery()">筛选</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-redo" plain="true" onclick="formclear()">清空</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" onclick="exportExcel('exportAll')">导出全部</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" onclick="exportExcel('export')">导出当前页</a>
</div>

</div>
</#macro>

