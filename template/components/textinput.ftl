<#macro textinput id label width readonly colspan labelwidth>
<td style="width:${labelwidth!80}px" align="right">${label}</td>
<td
<#if colspan??> 
	colspan="${colspan}"
</#if>
>
	<input id="${id}" name="${id}" class="easyui-validatebox" type="text"  
	
	 <#if width??> 
		style="width:${width!120}px"
	<#else>
		style="width:100%"
	</#if>
 
	<#if readonly=="true">
		readonly="true"
	</#if>
	
	/>
</td>

</#macro>