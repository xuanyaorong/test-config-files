<#macro billinit>

<script type="text/javascript">

	window.onload = function() {
		var html="<input id=\"billcode\" name=\"billcode\" value=\"${billcode}\" style=\"display:none\"/>"
					+"<input id=\"billpath\" name=\"billpath\" value=\"${billpath}\" style=\"display:none\"/>";
		$("#ff").append(html);
		
		<#if relationrule=="">
			
        		btn_init("${uuid}");
        		 
		<#else>
			getsourcedata("${relationrule}","${relationdatauuid}");
		</#if>
		
		
		$("#Form :input").textbox().textbox('addClearBtn', 'icon-clear');
		window_onload();
	};

</script>
</#macro>