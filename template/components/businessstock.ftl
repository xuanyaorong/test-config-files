<#macro businessstock>
<div id="win_businessstock" class="easyui-window" title="选择库存" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:800px;height:500px;">
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" >
			<table id="dg_businessstock" class="easyui-datagrid" rownumbers="true" style="width:100%;height:100%;" data-options="onClickCell:onDgClickCell" >
				<thead>
					<tr>
						<th data-options="field:'uuidF',width:150">库存编码</th>
						<th data-options="field:'pBillF',width:100">加库存单类</th>
						<th data-options="field:'billcodeF',width:150">加库存单号</th>
						<th data-options="field:'qtyF',width:150">库存</th>
						<th data-options="field:'useqtyF',width:100,editor:{type:'numberbox',options:{precision:5}}">使用数量</th>
					</tr>
				</thead>
			
			</table>
		</div>
			
		<div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">
				<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="btn_stockselected()" style="width:80px">确定</a>
				<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="btn_closestock()" style="width:80px">取消</a>
		</div>
	</div>
</div>
</#macro>