<!DOCTYPE html>
<html>
<#include "shared/include.ftl">
<script src="${public}/js/report/creditreport.js" type="text/javascript"></script>

<body class="easyui-layout">
<div data-options="region:'north',split:true" style="height:100px">
	<form id="ff" method="post">
		<div style="width:100%; text-align:left; margin-top:5px; margin-bottom:40px;">
			<table>
					<tr>
						<td style="width:80px" align="right">报表</td>
						<td>
				 			<select  class="easyui-combobox"  id="reporttype_f" name="reporttype_f"  style="width:100%"  editable="false">
	   							<option value="creditdetail" selected="selected">额度明细</option>
				 				<option value="credit" >额度汇总</option>  
	   						</select>
	   					 </td>
	   					 <@selectinput id="company_company_f" label="抬头"  />
   					</tr>
			 	<tr>
					<@selectinput id="customer_customer_f" label="客户"  />
					<@textinput id="billcode_f" label="单号" />
				</tr>
				<!--  <tr>
					<@selectinput id="bill_sysbill_f" label="单据"  />
				</tr> -->
				<tr>
					<td style="width:80px" align="right">方向</td>
					<td>
						<select  class="easyui-combobox"  id="orientation_f" name="orientation_f"  style="width:100%"  editable="false">
	  						<option value="" selected="selected">请选择方向</option>
			 				<option value="0" >采购</option> 
			 				<option value="1" >销售</option>  
	  					</select>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>
<div data-options="region:'center'" >
	<table id="dg_creditreportlist" class="easyui-datagrid"  
	            toolbar="#toolbar" pagination="true" fit="true"  showFooter="true"
	            rownumbers="true" fitColumns="true" singleSelect="false" sortOrder="desc">
	           <thead>
	            <tr>
	            	<th data-options="field:'orientation_f',width:100" >方向</th>
	            	<th data-options="field:'p_company_f',width:100" >抬头</th>
					<th data-options="field:'p_customer_f',width:100" >客户</th>
					<th data-options="field:'p_bill_f',width:100" >单据</th>
					<th data-options="field:'billcode_f',width:100" >单号</th>
					<th data-options="field:'begindate_f',width:100" >开始日期</th>
					<th data-options="field:'enddate_f',width:100" >失效日期</th>
					<th data-options="field:'creditday_f',width:100" >天数</th>
					<th data-options="field:'creditamount_f',width:100" >额度</th>
					<th data-options="field:'remark_f',width:100" >备注</th>
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