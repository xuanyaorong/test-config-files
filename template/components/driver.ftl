<#macro driver>
<div id="win_driver" class="easyui-window" title="录入司机信息" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:800px;height:500px;">
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'north'" style="height:60px">
		<table>
			<tr>
				<td align="right" style="width:120px">姓名</td><td> <input id="drivername" name="drivername" class="easyui-validatebox" type="text" style="width:200px"/></td>
				<td align="right" style="width:120px">身份证</td><td> <input id="driveridcard" name="driveridcard" class="easyui-validatebox" type="text" style="width:200px"/></td>
			</tr>
			<tr>
				<td align="right" style="width:120px">车牌号</td><td> <input id="licenseplate" name="licenseplate" class="easyui-validatebox" type="text" style="width:200px"/></td>
				<td align="right" style="width:120px">司机电话</td><td> <input id="deivermobile" name="deivermobile" class="easyui-validatebox" type="text" style="width:200px"/></td>
			</tr>
		</table>
		</div>
		<div data-options="region:'center'" >
			<table id="dg_gooddetail" class="easyui-datagrid" rownumbers="true" style="width:100%;height:100%;">
				<thead>
					<tr>
						<th data-options="field:'c_good_f',width:100">商品编码</th>
						<th data-options="field:'p_good_f',width:150">商品名称</th>
						<th data-options="field:'qty_f',width:100,editor:{type:'numberbox',options:{precision:5}}">数量</th>
					</tr>
				</thead>
			
			</table>
		</div>
			
		<div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">
				<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="btn_savedriver()" style="width:80px">确定</a>
				<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="btn_closedriver()" style="width:80px">取消</a>
		</div>
	</div>
</div>
</#macro>