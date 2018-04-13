<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">

<script src="${public}/js/model/sale/sc.js" type="text/javascript"></script>

<html>
<body class="easyui-layout"> 




<form id="ff" method="post" >
<div data-options="region:'north'" > 
	<@toolbar />
	<table>
		<tr>
			<@selectinput id="company_company_f" label="抬头"  colspan="5"/>
			
			
			<td style="width:80px" align="right">类型</td>
			<td>
			<select id="longterm_f" class="easyui-combobox" name="longterm_f" style="width:100%;">
			    <option value="0">零单</option>
			    <option value="1">长单</option>
			</select>
			</td>
		</tr>
		<tr>
			
			<@textinput id="code_f" label="单号"  readonly="true" colspan="5"/>
			
			<@textinput id="mainccode_f" label="主合同号" width="180" readonly="true" />
			
			<@textinput id="redcode_f" label="冲销单号" width="180" readonly="true" />
			
		</tr>
		<tr>
			<@selectinput id="customer_customer_f" label="客户"  colspan="5"/>
			<@dateinput id="begindate_f" label="开始日期" width="180"  />
			<@dateinput id="enddate_f" label="结束日期" width="180"  />
			
		</tr>
		
		<tr>
			
			<@selectinput id="category_goodcat_f" label="商品类别" width="180" />
			<@selectinput id="user_manager_f" label="业务经理" width="180" colspan="3"/>
			<@selectinput id="delivery_delivery_f" label="交货方式" width="180" />
			<@textinput id="deliveryaddress_f" label="交货地址" width="180"/>
		</tr>
		
		<tr>
			<@selectinput id="settlement_settlement_f" label="结算方式" width="180" />
			<@selectinput id="paymentmode_paymentmode_f" label="付款方式" width="180" colspan="3"/>
			<@textinput id="singingaddress_f" label="签约地址" width="180"  />
			<@dateinput id="signingdate_f" label="签约日期" width="180"  />
		</tr>
		
		<tr>
			<@selectinput id="pricingmode_pricingmode_f" label="作价方式" width="180" />
			<@textinput id="contractqty_f" label="数量" width="50"  />
			<@textinput id="surplus_f" label="超量" width="50" labelwidth="30" />
			<@textinput id="contractamount_f" label="合同总金额" width="180" readonly="true" />
			<@textinput id="usedqty_f" label="已执行" width="180" readonly="true" />
			<@textinput id="availableqty_f" label="可执行数量" width="180" readonly="true" />
			
		</tr>
		<tr>
			<@dateinput id="pricinglastdate_f" label="点价期限" width="180"  />
			<@textinput id="price_f" label="基价" width="175"  colspan="3"/>
			<@textinput id="apamount_f" label="应付金额" width="180" readonly="true" />
			<@textinput id="paidamount_f" label="已付金额" width="180" readonly="true" />
			<@textinput id="balance_f" label="尾款" width="180" readonly="true" />
		</tr>
		
		<tr>
			<@dateinput id="avebegindate_f" label="均价开始日期" width="180"  />
			<@dateinput id="aveenddate_f" label="均价结束日期" width="180"  colspan="3"/>
			
			<@textinput id="invqty_f" label="收票数量" width="180" readonly="true" />
			<@textinput id="invamount_f" label="收票金额" width="180" readonly="true" />
			<@textinput id="noninvqty_f" label="未开票金额" width="180" readonly="true" />
		</tr>
		
	
		<tr><@textinput id="remark_f" label="备注"  colspan="11"/></tr>
	</table> 
</div>	


<div data-options="region:'center'" > 

	<div class="easyui-tabs" style="height:100%;">
		<div title="商品明细">
			<@detailgrid name="dg_scdetail" columns=["\lth data-options=\"field:\'c_good_f\',width:80\">商品编码\l/th\g"
					,"\lth data-options=\"field:\'p_good_f\',width:150\">商品名称\l/th\g"
					,"\lth data-options=\"field:\'qty_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:5}}\">数量\l/th\g"
					,"\lth data-options=\"field:\'baseprice_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:2}}\">基价\l/th\g"
					,"\lth data-options=\"field:\'bwd_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:2}}\">升贴水\l/th\g"
					,"\lth data-options=\"field:\'remark_f\',width:150,editor:'textbox'\">备注\l/th\g"
					]
					 showtoolbar="true" totalcolumns="qty_f" editable="true"/>
		</div>
		<div title="执行情况" >
			<@detailgrid name="dg_scimplementation" columns=[
					"\lth data-options=\"field:\'p_sysbill_f\',width:80\">来源单类\l/th\g"
					,"\lth data-options=\"field:\'sourcecode_f\',width:80\">来源单号\l/th\g"
					,"\lth data-options=\"field:\'c_good_f\',width:80\">商品编码\l/th\g"
					,"\lth data-options=\"field:\'p_good_f\',width:150\">商品名称\l/th\g"
					,"\lth data-options=\"field:\'qty_f\',width:80\">数量\l/th\g"
					,"\lth data-options=\"field:\'baseprice_f\',width:80\">基价\l/th\g"
					,"\lth data-options=\"field:\'bwd_f\',width:80\">升贴水\l/th\g"
					,"\lth data-options=\"field:\'taxprice_f\',width:80\">含税单价\l/th\g"
					,"\lth data-options=\"field:\'taxamount_f\',width:80\">含税金额\l/th\g"
					,"\lth data-options=\"field:\'priceingcode_f\',width:80\">点价单号\l/th\g"
					]
					 totalcolumns="qty_f,taxamount_f" editable="true"/>
		</div>
	</div>
</div>
<div data-options="region:'south'" >
    
    <table>
    		<tr>
                <@textinput id="p_creator_f" label="制单人" width="100" readonly="true"/> 
                <@textinput id="createtime_f" label="制单时间" width="100" readonly="true"/> 
                <@textinput id="p_modifier_f" label="最后修改人" width="100" readonly="true"/>  
                <@textinput id="modifytime_f" label="最后修改时间" width="100" readonly="true"/>
                <@textinput id="p_approval_f" label="审核人" width="100" readonly="true"/>
                <@textinput id="approvaltime_f" label="审核时间" width="100" readonly="true"/>
            </tr>
    </table>
	
  </div>
		
</form>

<div id="win_good" class="easyui-window" title="选择商品信息" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:800px;height:500px;">
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" >
			<table id="dg_good" class="easyui-datagrid" rownumbers="true" style="width:100%;height:100%;">
				<thead>
					<tr>
						<th data-options="field:'ck',checkbox:true"></th>
						<th data-options="field:'c_good_f',width:100">商品编码</th>
						<th data-options="field:'p_good_f',width:150">商品名称</th>
						<th data-options="field:'p_goodcategory_f',width:100">品类</th>
						<th data-options="field:'baseprice_f',width:100">基价</th>
						<th data-options="field:'bwd_f',width:100">升贴水</th>
						
						
						
					</tr>
				</thead>
			
			</table>
		</div>
			
		<div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">
				<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="btn_goodselect()" style="width:80px">确定</a>
				<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="btn_closegood()" style="width:80px">取消</a>
		</div>
	</div>
</div>
<div id="dlg_bwd" class="easyui-dialog" title="修改升贴水" style="width:400px;height:200px;padding:10px"
		data-options="
			modal:true,
			closed: true,
			buttons: [{
				text:'Ok',
				iconCls:'icon-ok',
				handler:function(){
					btn_saveoap();
				}
			},{
				text:'Cancel',
				handler:function(){
					$('#dlg_bwd').dialog('close');
				}
			}]
		">
	<div style="margin-bottom:20px">
			<div>升贴水:</div>
			<input class="easyui-textbox" id="txt_newbwd" name="txt_newbwd" data-options="prompt:'录入调整后的升贴水'" style="width:100%;height:32px">
		</div>
</div>
<@selector/>
<@billinit/>
<@approval/>
<@seal/>
 </body>
</html>