<#macro linklabel id label width colspan labelwidth>
<th style="width:${labelwidth!80}px" align="right">${label}</th>
<th
<#if colspan??> 
	colspan="${colspan}"
</#if>
style="width:150px"
>
	
	<a id="${id}" name="${id}" href="#"  style="width:100%" >
	<span>1212121
	</a>
	
</th>

</#macro>