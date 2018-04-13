<#macro detailgrid name columns showtoolbar totalcolumns editable>
<table class="easyui-datagrid" id="${name}" name="${name}"  
			data-options="collapsible:true,rownumbers:true,showFooter:true,fit:true,iconCls: 'icon-edit'
			<#if editable??>
			,onClickCell:onDgClickCell
			
			
			</#if>
			<#if showtoolbar??>
				,toolbar:toolbar${name}
			</#if>
			"
			totalcolumns="${totalcolumns}">
	<thead>
		<tr>
		<#if editable??>
			<th data-options="field:'ck',checkbox:true"></th>
		</#if>
		<#list columns as column>
			${column}
		</#list>
		</tr>
	</thead>
</table>

<script type="text/javascript">
	<#if showtoolbar??>
	var toolbar${name} = [{
		text:'新增商品',
		iconCls:'icon-add',
		handler:function(){addGoods($('#${name}'))}
	},{
		text:'删除商品',
		iconCls:'icon-remove',
		handler:function(){removeGoods($('#${name}'))}
	}];
	</#if>
<#if editable??>

	var editIndex = undefined;
	var editor = undefined;//失去焦点使用
	function endEditing${name}(){
		if (editIndex == undefined){return true}
		if ($('#${name}').datagrid('validateRow', editIndex)){
			$('#${name}').datagrid('endEdit', editIndex);
			editIndex = undefined;
            editor = undefined;
			return true;
		} else {
			return false;
		}
	}

	function onAfterEdit${name}(rowIndex, rowData, changes) {
	
		var rows = $('#${name}').datagrid('getRows');
		var footerArray=$('#${name}').datagrid('getFooterRows');
		
		
		<#list totalcolumns as totalcolumn>
			var total${totalcolumn} = 0;
			//如果数量发生改变，修改其对应金额，和下方数量总数，金额总数
			if (changes.${totalcolumn} != undefined && changes.hasOwnProperty("${totalcolumn}")) {
				//获取所有字段，for循环合计起来
				console.log(rows.length)
				for (var i = 0; i < rows.length; i++) {
					var fieldvalue = 0;
					if (isNaN(rows[i].${totalcolumn})) {
						fieldvalue = 0;
					} else {
						fieldvalue = rows[i].${totalcolumn};
					}
	
					total${totalcolumn} = parseInt(total${totalcolumn}, 10) + parseInt(fieldvalue, 10);
					footerArray[0]["${totalcolumn}"]=total${totalcolumn};
				}
				
	
			}
		</#list>
		
		
		
		$('#${name}').datagrid('reloadFooter',footerArray );
		
		//endEdit该方法触发此事件
		editRow = undefined;
			
	}
    $(document).on('blur',"input[id^='_easyui_textbox_input']",function () {
        var footerArray=$('#${name}').datagrid('getFooterRows');
		<#list totalcolumns as totalcolumn>
			var total${totalcolumn} = footerArray[0]["${totalcolumn}"];
			//changes= undefined 失去焦点调用
			if(editor!=undefined && "${totalcolumn}"==editor[0].field){
			    if(editor[0].oldHtml==""){
                    editor[0].oldHtml=0;
				}
				total${totalcolumn}=parseInt(total${totalcolumn}, 10) - parseInt(editor[0].oldHtml, 10) + parseInt($(this).val(), 10);
                editor[0].oldHtml=$(this).val();
                var ed = $('#${name}').datagrid('getEditor', {index:editIndex,field:editor[0].field});
                if(ed!=null) {
                    $(ed.target).numberbox('setValue', $(this).val());
                    $('#${name}').datagrid('endEdit', editIndex);
                }
			}
			footerArray[0]["${totalcolumn}"]=total${totalcolumn};
		</#list>



        //$('#${name}').datagrid('reloadFooter',footerArray );
    })
 </#if>
	
	
	


</script>

</#macro>