<#macro selectinput id label width colspan filtersql billfieldfiltersql>
<td style="width:80px" align="right">${label}</td>
<td
<#if colspan??> 
	colspan="${colspan}"
</#if>

>
	<input id="${id}" name="${id}" style="display:none"/>
	<input id="${"c"+id?substring(id?index_of("_"))}" name="${"c"+id?substring(id?index_of("_"))}" style="display:none"/>
	<input id="${"p"+id?substring(id?index_of("_"))}" name="${"p"+id?substring(id?index_of("_"))}" class="easyui-textbox" type="text" bill="${id?substring(0,id?index_of("_"))}" code="${"c"+id?substring(id?index_of("_"))}" uuid="${id}"
		filtersql="${filtersql!""}" billfieldfiltersql="${billfieldfiltersql!""}"
		data-options="prompt:'请选择${label}',iconWidtd: 22
		,icons: [{
			iconCls:'icon-remove',
				handler: function(e){
					//$(e.data.target).textbox('clear');
					selectinput_clear($(e.data.target))
				}
			},{
				iconCls:'icon-search',
				handler: function(e){
					selectinput_doSearch($(e.data.target));
					
				}
			}]" 
			<#if width??> 
				style="width:${width!120}px"
			<#else>
				style="width:100%"
			</#if>
			
			>
			
			</input>
</td>
<script type="text/javascript">
$('#${"p"+id?substring(id?index_of("_"))}').textbox({
        inputEvents: $.extend({}, $.fn.textbox.defaults.inputEvents, {
            keypress: function (e) {
                if (e.keyCode == 13) {
                		selectinput_doSearch($('#${"p"+id?substring(id?index_of("_"))}'));
                }
            }
        })
    });
</script>
</#macro>