<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includeDetail.ftl">
<#include "components/toolbar.ftl">
<#include "components/selectinput.ftl">
<#include "components/textinput.ftl">


<html>
<body class="easyui-layout"> 
<div data-options="region:'north'">
bbbbb<br />
<@toolbar />

<form id="ff" method="post" enctype="multipart/form-data">
	<table>  
		<tr>
			<@textinput id="code_f" label="单号" width="300"/>
		</tr>
		<tr>
			<@selectinput id="good_good_f" label="商品编码" width="300" code="c_good_f" name="p_good_f" bill="user"/>
			
		</tr>
		
	</table> 
	
	<div data-options="region:'center'" > 
		<table class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"
				data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
			<thead>
				<tr>
					<th data-options="field:'itemid',width:80">Item ID</th>
					<th data-options="field:'productid',width:100">Product</th>
					<th data-options="field:'listprice',width:80,align:'right'">List Price</th>
					<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
					<th data-options="field:'attr1',width:250">Attribute</th>
					<th data-options="field:'status',width:60,align:'center'">Status</th>
				</tr>
			</thead>
		</table>
	</div>
	<div data-options="region:'south'" >
    
	    <table>
	    		<tr>
	                <th>制单人：<input class="easyui-validatebox" type="text" name="userCreaterNameF"  readonly="readonly"/> </th>
	                <th>制单时间：<input class="easyui-validatebox" type="text" name="createtimeF"  readonly="readonly"/> </th>
	                <th>最后修改人：<input class="easyui-validatebox" type="text" name="userModifierNameF" readonly="readonly" /> </th>
	                <th>最后修改时间：<input class="easyui-validatebox" type="text" name="modifytimeF" readonly="readonly" /> </th>
	                <th>审核人：<input class="easyui-validatebox" type="text" name="userApprovalNameF" readonly="readonly" /> </th>
	                <th>审核时间：<input class="easyui-validatebox" type="text" name="approvaltimeF" readonly="readonly" /> </th>
	            </tr>
	    </table>
	 
	<input id="basePath" value="${ctx}" type="hidden"/>
  </div>
</form>
</div>


  <div id="w" class="easyui-window" title="Modal Window" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:1000px;height:300px;padding:10px;">
		<table id="dg" class="easyui-datagrid"/>
	</div>
  
 </body>
</html>