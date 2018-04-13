<#macro queryform>

<div data-options="region:'north',split:true" style="height:${(query?size/4)?ceiling*40}px;">
<form id="ff" method="post"> 
 		<div style="width:100%; text-align:left; margin-top:10px; margin-bottom:10px;">
 		<#assign idx=1>
 		<table>
 		<tr>
		<#list query as queryfield> 	
			<#if idx%5==0>
				</tr><tr>
			</#if>
			<#if queryfield.listquerytagF=="">
				<@textinput id="${queryfield.fieldF}" label="${queryfield.nameF}" width="200" />
			<#elseif queryfield.listquerytagF=="DATERANGE">
				<@daterange id="${queryfield.fieldF}" label="${queryfield.nameF}" />
			<#elseif queryfield.listquerytagF=="SELECT">
				
				<@selectinput id="${queryfield.fieldF}" label="${queryfield.nameF}" width="200"/>
			</#if>
			
			<#assign idx=idx+1>
		</#list>
		</tr>
		</table>
		</div>
    </form>
    <input id="billcode" value="${billcode}" type="hidden">
 </div>
</#macro>
