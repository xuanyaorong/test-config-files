<#macro daterange id label>
<td>${label}</td>
<td>
	<input class="easyui-datebox" id="begin_${id}" name="begin_${id}" style="width:100px">
	~
	<input class="easyui-datebox" id="end_${id}" name="end_${id}"  style="width:100px">
</td>
</#macro>