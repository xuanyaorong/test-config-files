<#macro approval>


<div id="dlg_approval" class="easyui-dialog" title="审核意见" style="width:500px;height:300px;padding:10px" 
			data-options="
				modal:true,
				closed:true,
				iconCls: 'icon-save',
				buttons: [{
					text:'批准',
					iconCls:'icon-ok',
					handler:function(){
						agree();
					}
				},{
					text:'退回',
					iconCls:'icon-cancel',
					handler:function(){
						notagree();
					}
				}]
			">
		<input id="txt_remark" class="easyui-textbox" data-options="multiline:true,prompt:'请录入审核意见'" 
			style="width:100%;height:100%">
	</div>
</#macro>