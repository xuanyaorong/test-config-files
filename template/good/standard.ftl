<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">

<script src="${public}/js/model/good/standard.js" type="text/javascript"></script>
<html>
<body class="easyui-layout"> 

<form id="ff" method="post" >
<div data-options="region:'north'" > 
	<@toolbar />
	<table>
		<tr>
			<@textinput id="code_f" label="编码" width="200" readonly="true" />
		</tr>
		<tr>
			<@textinput id="name_f" label="名称" width="200" />
		</tr>
		<tr>
			<@selectinput id="category_goodcategory_f" label="分类" width="200" />
		</tr>
		<tr>
			<@selectinput id="stop_sysstop_f" label="是否启用" width="200" />
		</tr>
		<tr><@textinput id="remark_f" label="备注" colspan="7"/></th></tr>
		<tr>
				<@textinput id="p_creator_f" label="制单人" width="200" readonly="true" /> 
				<@textinput id="createtime_f" label="制单时间" width="200" readonly="true" />
				<@textinput id="p_modifier_f" label="最后修改人" width="200" readonly="true" />
				<@textinput id="modifytime_f" label="最后修改时间" width="200" readonly="true" />
	    </tr>
	</table> 
</div>	

</form>
<@selector/>
<@billinit/>
 </body>
</html>