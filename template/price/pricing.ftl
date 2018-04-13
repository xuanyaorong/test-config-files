<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">


<script src="${public}/js/components/dgformatter.js" type="text/javascript"></script>
<script src="${public}/js/model/price/pricing.js" type="text/javascript"></script>

<html>
<body class="easyui-layout"> 

<form id="ff" method="post" >
<div data-options="region:'north'" > 
	<@toolbar />
	<table>
	
		<tr>
			<@textinput id="code_f" label="单号" />
		</tr>
		<tr>
			<@selectinput id="company_company_f" label="抬头" /> 
			
		</tr>
		<tr>
			<@selectinput id="customer_customer_f" label="客户"/>
			<@textinput id="p_creator_f" label="制单人" width="100" readonly="true"/>
			
		</tr>
		<tr>
			<@selectinput id="user_manager_f" label="业务经理"/>
			<@textinput id="createtime_f" label="制单时间" width="100" readonly="true"/>
			
		</tr>
		<tr>
			<td style="width:80px" align="right">类型</td>
			<td>
			<select id="type_f" class="easyui-combobox" name="type_f" style="width:100%;">
			    <option value="0">期货</option>
			    <option value="1">现货</option>
			</select>
			</td>
			<@textinput id="p_modifier_f" label="最后修改人" width="100" readonly="true"/>
			
		</tr>
		<tr>
			<@selectinput id="category_category_f" label="品种"/>
			<@textinput id="modifytime_f" label="最后修改时间" width="100" readonly="true"/>
			
		</tr>
		<tr>
			<@selectinput id="contracts_contracts_f" label="合约"/>
			<@textinput id="p_approval_f" label="审核人" width="100" readonly="true"/>
			
		</tr>
		
		
		<tr>
			<td style="width:80px" align="right">方向</td>
			<td>
			<select id="orientation_f" class="easyui-combobox" name="orientation_f" style="width:100%;">
			    <option value="0">采购</option>
			    <option value="1">销售</option>
			</select>
			</td>
			<@textinput id="approvaltime_f" label="审核时间" width="100" readonly="true"/>
		</tr>
		
		<tr>
			<@textinput id="baseprice_f" label="基价"/>
			<@textinput id="qty_f" label="数量" width="100" />
			
		</tr>
		
		<tr><@textinput id="remark_f" label="备注" width="500" colspan="4"/></th></tr>
	</table> 
</div>	
<div data-options="region:'center'" > 
	<div class="easyui-tabs" style="height:100%;">
		<div title="分配情况">
			<@detailgrid name="dg_pricingdetail" columns=["\lth data-options=\"field:\'p_bill_f\',width:80\">单类\l/th\g"
					,"\lth data-options=\"field:\'billcode_f\',width:150\">合同号\l/th\g"
					,"\lth data-options=\"field:\'qty_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:5}}\">数量\l/th\g"
					,"\lth data-options=\"field:\'baseprice_f\',width:80\">基价\l/th\g"
					]
					totalcolumns="qty_f" editable="true"/>
		</div>
		<div title="来源点价">
			<@detailgrid name="dg_pricingrelation" columns=["\lth data-options=\"field:\'pricingcode_f\',width:80\">点价单号\l/th\g"
					,"\lth data-options=\"field:\'type_f\',width:150,formatter:formattertype\">点价类型\l/th\g"
					,"\lth data-options=\"field:\'orientation_f\',width:150,formatter:formatterorientation\">点价方向\l/th\g"
					,"\lth data-options=\"field:\'p_contracts_f\',width:150\">合约\l/th\g"
					,"\lth data-options=\"field:\'qty_f\',width:80\">数量\l/th\g"
					,"\lth data-options=\"field:\'baseprice_f\',width:80\">基价\l/th\g"
					]
					totalcolumns="qty_f"/>
		</div>
	</div>		
</div>
</form>

<@billinit/>
<div id="win_pricingrelation" class="easyui-window" title="关联合同" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:800px;height:500px;">
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" >
			<table id="dg_pc" class="easyui-datagrid" rownumbers="true" style="width:100%;height:100%;">
				<thead>
					<tr>
						<th data-options="field:'code_f',width:100">单 号</th>
						<th data-options="field:'p_manager_f',width:150">业务经理</th>
						<th data-options="field:'approvaltime_f',width:150,formatter:formatterTime">审核时间</th>
						<th data-options="field:'contractqty_f',width:100">合同数量</th>
						<th data-options="field:'pricedqty_f',width:100">已点价数量</th>
						<th data-options="field:'nonpricingqty_f',width:100">未点价数量</th>
						<th data-options="field:'qty_f',width:100,editor:'numberbox'">分配数量</th>
					</tr>
				</thead>
			
			</table>
		</div>
			
		<div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">
				<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="btn_relationpc()" style="width:80px">Ok</a>
				<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="btn_cancel()" style="width:80px">Cancel</a>
		</div>
	</div>
</div>
<@selector/>
<@approval/>
<@seal/>
 </body>
</html>