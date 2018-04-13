<#macro toolbar>

<div style="background:#fafafa;padding:5px;border:1px solid #ccc" >
	<span id="billstatus" style="display:inline-block; width:80px"></span>
	<a href="#" class="easyui-linkbutton" data-options="plain:true">前一</a>
	<a href="#" class="easyui-linkbutton" data-options="plain:true">下一</a>
	<a href="#" class="easyui-linkbutton" data-options="plain:true" onclick=btn_refresh()>刷新</a>
	<a href="#" class="easyui-linkbutton addBtn hide" data-options="plain:true" onclick=btn_init("")>新增</a>
	<a href="#" class="easyui-linkbutton saveBtn hide" data-options="plain:true" onclick=btn_save()>保存</a>
	
	<#if printinfo?? && (printinfo?size>0)><!-- class="easyui-combobox" 	 -->
		<select id="print_ID" class="easyui-combobox" name="print_ID" data-options="editable:false" >
			<#list printinfo as p>
				<option value="${p.code_f}" printtype="${p.printtable_f}">${p.name_f}</option>
			</#list>
		</select>
		 <a href="#" class="easyui-linkbutton printBtn hide" data-options="plain:true" onclick=btn_print()>打印</a>
		<!--<a href="#" class="easyui-linkbutton printBtn hide" data-options="plain:true" onclick=gridprint()>打印</a>-->
	</#if>
	
	<a href="#" class="easyui-linkbutton" data-options="plain:true" id="toolbar_submit" onclick=btn_submit()>提交</a>
	<a href="#" class="easyui-linkbutton" data-options="plain:true" id="toolbar_del" onclick=btn_del()>删除</a>
	<a href="#" class="easyui-menubutton" menu="#approval">审核</a>
	<a href="#" class="easyui-menubutton" menu="#opt_menu" >操作</a>
	<a href="#" class="easyui-linkbutton" data-options="plain:true" onclick=btn_close()>关闭</a>
</div>
<div id="approval" style="width:150px;" data-options="onClick:menuHandler">
	<div id="auditing">审批</div>
	<div id="revert">撤销</div>
	<div id="approvaldetail">审核明细</div>
	
</div>
<div id="opt_menu" style="width:100px;">
	
	<div id="red">冲销</div>
	
</div>



</#macro>
<div id="win_approval" class="easyui-window" title="审核明细" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:800px;height:500px;">
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" >
			<table id="dg_approval" class="easyui-datagrid" rownumbers="true" fitColumns="true"  fit="true" >
				<thead>
					<tr>
						<th data-options="field:'indexdesc_f',width:100">步骤</th>
						<th data-options="field:'p_approval_f',width:150">审核人</th>
						<th data-options="field:'status_f',width:100" formatter="formatterstatus">单据状态</th>
						<th data-options="field:'approvaltime_f',width:150">审核时间</th>
						<th data-options="field:'remark_f',width:300">意见</th>
					</tr>
				</thead>
			
			</table>
		</div>
	</div>
</div>
