<!DOCTYPE html>
<html>
<#include "shared/include.ftl">
<script src="${public}/js/report/stockreport.js" type="text/javascript"></script>

<body class="easyui-layout">
<div data-options="region:'north',split:true" style="height:100px">
	<form id="ff" method="post">
		<div style="width:100%; text-align:left; margin-top:5px; margin-bottom:30px;">
			<table>
					<tr>
						<td style="width:80px" align="right">报表</td>
						<td>
				 			<select  class="easyui-combobox"  id="reporttype_f" name="reporttype_f"  style="width:100%"  editable="false">
	   							<option value="realitystock" selected="selected">实物库存</option>
				 				<option value="businessstock" >业务库存</option>  
	   						</select>
	   					 </td>
	   					 <@selectinput id="company_company_f" label="抬头"  />
   					</tr>
			 	<tr>
					<@selectinput id="warehouse_warehouse_f" label="仓库"  />
					<@selectinput id="good_good_f" label="商品"  />
				</tr>
				<!--  <tr>
					<@selectinput id="bill_sysbill_f" label="单据"  />
				</tr> -->
				<tr>
					
				</tr>
			</table>
		</div>
	</form>
</div>
<div data-options="region:'center'" >
	<table id="dg_stockreportlist" class="easyui-datagrid"  
	            toolbar="#toolbar" pagination="true" fit="true"  showFooter="true"
	            rownumbers="true" fitColumns="true" singleSelect="true" sortOrder="desc" >
	           <thead>
	            <tr>
	            	<th data-options="field:'p_company_f',width:100" >抬头</th>
					<th data-options="field:'p_bill_f',width:100" >单据</th>
					<th data-options="field:'billcode_f',width:100" >单号</th>
					<th data-options="field:'p_warehouse_f',width:100" >仓库</th>
					
					<th data-options="field:'batchno_f',width:100"  >批次</th>
					<th data-options="field:'cardnumber_f',width:100" >卡号</th>
					
					<th data-options="field:'c_good_f',width:100" >商品编码</th>
					<th data-options="field:'p_good_f',width:100" >商品名称</th>
					
					<th data-options="field:'prodate_f',width:100" >生产日期</th>
					<th data-options="field:'expdate_f',width:100" >失效日期</th>
					
					<th data-options="field:'qty_f',width:100" >库存</th>
					
					<th data-options="field:'bwd_f',width:100" >升贴水</th>
					<th data-options="field:'baseprice_f',width:100" >基价</th>
					<th data-options="field:'pricetype_f',width:100" >价格类型</th>
					<th data-options="field:'cost_f',width:100" >成本价</th>
					<th data-options="field:'costamount_f',width:100" >成本价</th>
	            </tr>
			</thead>
	 </table>
	<div id="toolbar">
	    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" plain="true" onclick="btn_listquery()">筛选</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-redo" plain="true" onclick="formclear()">清空</a>
	    <!-- <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" onclick="exportExcel()">导出全部</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" onclick="exportExcel()">导出当前页</a> -->
	</div>
</div>
<@selector/>
</body>
</html>