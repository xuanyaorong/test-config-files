<#macro approvalcredis>

</#macro>
<div id="win_approvalcredis" class="easyui-window" title="审核意见"  style="width:800px;height:500px;padding:10px"
		data-options="
			modal:true,
			closed:true,
			iconCls:'icon-save',
			tools:'#tt'">
		 <input id="txt_remark" class="easyui-textbox" data-options="multiline:true,prompt:'请录入审核意见'"  style="width:100%;height:40px">
		 
		 <table id="dg_companycreditdetail" name="dg_companycreditdetail" class="easyui-datagrid"  
			data-options="
							iconCls: 'icon-edit',
							singleSelect:true,
							rownumbers:true,
							fitColumns:true,
							fit:true,
							onClickCell: onClickCell,
							toolbar: '#tb'">
				<thead>		
					<tr>
						<th data-options="field:'companyname_f',width:100" >抬头</th>
		            	<th data-options="field:'company_company_f',width:100,hidden:'true'" >抬头</th>
		            	<th data-options="field:'orientation_f',width:100,hidden:'true'">方向</th>
		            	<th data-options="field:'orientationname_f',width:100">方向</th>
		            	<th data-options="field:'applycreditamount_f',width:100">申请额度</th>
						<th data-options="field:'creditamount_f',width:100,editor:{type:'numberbox',options:{precision:2}}">审核额度</th>
					</tr>
				</thead>
		</table>
</div>
<div id="tb" style="height:auto">
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" onclick="agreecredis()">批准</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" onclick="notagreecredis()">退回</a>
</div>