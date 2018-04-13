<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">

<script src="${public}/js/model/good/good.js" type="text/javascript"></script>

<html>
<body class="easyui-layout"> 




<form id="ff" method="post" >
<div data-options="region:'north'" > 
	<@toolbar />
	<table>
	
		<tr>
			<@textinput id="code_f" label="编码" width="300" readonly="true" />
		</tr>
		<tr>
			<@textinput id="name_f" label="名称" width="300" />
		</tr>
		<tr>
			<@selectinput id="good_parentgood_f" label="父商品" width="300" />
		</tr>
		<tr>
			<@selectinput id="category_goodcategory_f" label="类别" width="300" />
		</tr>
		<tr>
			<@selectinput id="brand_goodbrand_f" label="品牌" width="300" />
		</tr>
		<tr>
			<@textinput id="specification_f" label="规格" width="300" />
		</tr>
		<tr>
			<@selectinput id="stop_sysstop_f" label="停用" width="300" />
		</tr>
	
		<tr><@textinput id="remark_f" label="备注" width="500" colspan="4"/></th></tr>
	</table> 
</div>	


<div data-options="region:'center'"> 
	<@detailgrid name="dg_pcdetail" columns=["\lth data-options=\"field:\'c_good_f\',width:80\">商品编码\l/th\g"
			,"\lth data-options=\"field:\'p_good_f\',width:150,editor:'text'\">商品名称\l/th\g"
			,"\lth data-options=\"field:\'qty_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:2}}\">数量\l/th\g"]
			 showtoolbar="true" totalcolumns=["qty_f"]/>
<!--
	<table class="easyui-datagrid" id="dg_pcdetail" style="width:700px;height:250px"
			data-options="singleSelect:true,collapsible:true,rownumbers:true,toolbar:toolbar">
		<thead>
			<tr>
				<th data-options="field:'c_good_f',width:80">商品编码</th>
				<th data-options="field:'p_good_f',width:150">商品名称</th>
				<th data-options="field:'qty_f',width:80">数量</th>
			</tr>
		</thead>
	</table>
	-->
</div>

<div data-options="region:'south'" >
    
    <table>
    		<tr>
                <th><@textinput id="p_creator_f" label="制单人" width="100" readonly="true"/> </th>
                <th><@textinput id="createtime_f" label="制单时间" width="100" readonly="true"/>  </th>
                <th><@textinput id="p_modifier_f" label="最后修改人" width="100" readonly="true"/>  </th>
                <th><@textinput id="modifytime_f" label="最后修改时间" width="100" readonly="true"/> </th>
                <th><@textinput id="p_approval_f" label="审核人" width="100" readonly="true"/> </th>
                <th><@textinput id="approvaltime_f" label="审核时间" width="100" readonly="true"/> </th>
            </tr>
    </table>
	
  </div>
		
</form>
<@selector/>
<@billinit/>
 </body>
</html>