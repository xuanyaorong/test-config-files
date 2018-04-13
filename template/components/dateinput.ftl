<#macro dateinput id label width colspan>
<td style="width:80px" align="right">${label}</td>
<td
<#if colspan??> 
	colspan="${colspan}"
</#if>

>
	<input class="easyui-datebox" id="${id}" name="${id}" 
	<#if width??> 
		style="width:${width!120}px"
	<#else>
		style="width:100%"
	</#if>
	  />
</td>

</#macro>