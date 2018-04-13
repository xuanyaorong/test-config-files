<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">

<script src="${public}/js/model/process/processcon.js" type="text/javascript"></script>

<html>
<body class="easyui-layout"> 




<form id="ff" method="post" >
<div data-options="region:'north'" > 
	<@toolbar />
	<table>
		<tr>
			<@selectinput id="company_company_f" label="抬头"  colspan="5"/>
			
			
			
		</tr>
		<tr>
			
			<@textinput id="code_f" label="单号"  readonly="true" colspan="5"/>
			
			
			
			<@textinput id="redcode_f" label="冲销单号" width="180" readonly="true" />
			
		</tr>
		<tr>
			<@selectinput id="customer_customer_f" label="客户"  colspan="5"/>
			<@dateinput id="begindate_f" label="开始日期" width="180"  />
			<@dateinput id="enddate_f" label="结束日期" width="180"  />
			
		</tr>
		
		<tr>
			
			<@selectinput id="settlement_settlement_f" label="结算方式" width="180"/>
			<@selectinput id="paymentmode_paymentmode_f" label="付款方式" width="180" colspan="3"/>
			<@textinput id="singingaddress_f" label="签约地址" width="180"  />
			<@dateinput id="signingdate_f" label="签约日期" width="180"  />
			
		</tr>
		
		<tr>
			<@selectinput id="category_sourcegoodcat_f" label="原料类别" width="180" />
			
			<@selectinput id="user_manager_f" label="业务经理" width="180" colspan="3"/>
			<@textinput id="rmqty_f" label="原料提货数量" width="180" readonly="true" />
			<@textinput id="rmavailableqty_f" label="原料可用数量" width="180" readonly="true" />
			
		</tr>
		
		<tr>
			
			<@selectinput id="category_goodcat_f" label="成品类别" width="180" />
			<@textinput id="contractqty_f" label="数量" width="50"/>
			<@textinput id="surplus_f" label="超量" width="50" labelwidth="30" />
			<@textinput id="productqty_f" label="成品提货数量" width="180" readonly="true" />
			<@textinput id="productavailableqty_f" label="成品可用数量" width="180" readonly="true" />
			
			
			
			
		</tr>
		
		<tr>
			<@textinput id="remark_f" label="备注"  colspan="5"/>
			<@textinput id="apamount_f" label="应付金额" width="180" readonly="true" />
			<@textinput id="paidamount_f" label="已付金额" width="180" readonly="true" />
			<@textinput id="balance_f" label="尾款" width="180" readonly="true" />
			
		</tr>
		
	</table> 
</div>	


<div data-options="region:'center'" > 

	
		<@detailgrid name="dg_processcondetail" columns=["\lth data-options=\"field:\'c_good_f\',width:80\">商品编码\l/th\g"
				,"\lth data-options=\"field:\'p_good_f\',width:150\">商品名称\l/th\g"
				,"\lth data-options=\"field:\'qty_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:5}}\">数量\l/th\g"
				,"\lth data-options=\"field:\'p_delivery_f\',width:150\" formatter='formatter_delivery'>交货方式\l/th\g"
				,"\lth data-options=\"field:\'taxprice_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:2}}\">加工费\l/th\g"
				,"\lth data-options=\"field:\'remark_f\',width:150,editor:'textbox'\">备注\l/th\g"
				]
				 showtoolbar="true" totalcolumns="qty_f" editable="true"/>
	
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

<div id="win_good" class="easyui-window" title="选择商品信息" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:1000px;height:500px;">
	
	<div class="easyui-layout" data-options="fit:true">
		
		<div data-options="region:'north'" style="height:100px">
		<table>
			<tr>	
			<@selectinput id="warehouse_warehouse_f" label="仓库" width="300"/>
			<td>
			<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px" onclick="btn_filterstock()">筛选</a>
			</td>
			</tr>
			<tr>
			<@selectinput id="delivery_delivery_f" label="交货方式" width="200" />
			<@textinput id="whcontacts_f" label="联系人"  />
			<@textinput id="whtel_f" label="联系电话" />
			</tr>
			<tr>
			<@textinput id="deliveryaddress_f" label="交货地址"  colspan="9"/>
			</tr>
		</table>
		</div>
		
		<div data-options="region:'center'" >
			<table id="dg_raw" class="easyui-datagrid" rownumbers="true" style="width:100%;height:100%;">
				<thead>
					<tr>
						<th data-options="field:'cGoodF',width:100">商品编码</th>
						<th data-options="field:'pGoodF',width:150">商品名称</th>
						<th data-options="field:'pSourceF',width:100">来源单类</th>
						<th data-options="field:'ccodeF',width:100">来源单号</th>
						<th data-options="field:'pBillF',width:100">加库存单类</th>
						<th data-options="field:'billcodeF',width:100">加库存单号</th>
						<th data-options="field:'qtyF',width:100">库存</th>
						<th data-options="field:'useqtyF',width:100,editor:{type:'numberbox',options:{precision:5}}">使用数量</th>
						
					</tr>
				</thead>
			
			</table>
		</div>
			
		<div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">
				<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="btn_savestkoutnotes()" style="width:80px">确定</a>
				<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="btn_closegood()" style="width:80px">取消</a>
		</div>
	</div>
</div>

<@selector/>
<@billinit/>
<@approval/>
<@seal/>
 </body>
</html>