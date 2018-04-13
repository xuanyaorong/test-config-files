<div id="dlg_invoice" class="easyui-dialog" title="录入发票信息" style="width:500px;height:400px;padding:10px"
     data-options="
				modal:true,
				closed:true,
				iconCls: 'icon-save',
				buttons: [{
					text:'确认录入',
					iconCls:'icon-ok',
					handler:function(){
						confirmInvoice();
					}
				},{
					text:'取消',
					iconCls:'icon-cancel',
					handler:function(){
						$('#dlg_invoice').dialog('close');
					}
				}]
			">
    <input id="invoiceMessage" class="easyui-textbox" data-options="label:'快递信息：'"
           style="width:450px">
    <label class="textbox-label textbox-label-before" style="text-align: left; height: 23px; line-height: 22px;">发票录入：</label>
    <input type="radio" name="isSingle" value="0" checked onclick="invoiceSelectClick(0)">
    <label class="textbox-label textbox-label-before" style="text-align: left; height: 23px; line-height: 22px;">单一发票</label>
    <input type="radio" name="isSingle" value="1" onclick="invoiceSelectClick(1)">
    <label class="textbox-label textbox-label-before" style="text-align: left; height: 23px; line-height: 22px;">连续发票</label>
    <br/>
    <input id="invoiceCode" class="easyui-numberbox" data-options="label:'发票号：'"
           style="width:450px">
    <input id="invoiceNumber" class="easyui-numberbox hide" data-options="label:'发票张数：'"
           style="width:450px">
    <a class="easyui-linkbutton c8" data-options="plain:true" onclick="addInvoice()" style="width:450px">添加发票</a>
    <div id="dlg_invoice_panel" class="easyui-panel" data-options="closed:true" style="width:450px;height:180px">
        <table id="dlg_invoice_table" class="easyui-datagrid" data-options="fit:true" title="发票号">
            <thead>
            <tr>
                <th data-options="field:'index',width:80">序号</th>
                <th data-options="field:'code_f',width:150">发票号码</th>
                <th data-options="field:'operation',width:100,
                    formatter: formatterInvoiceDel
                ">操作</th>
            </tr>
            </thead>
        </table>
    </div>
</div>