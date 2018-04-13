<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">


<script src="${public}/js/model/customer/customercredit.js" type="text/javascript"></script>

<html>
<body class="easyui-layout"> 

<form id="ff" method="post" >
<div data-options="region:'north'" > 
	<@toolbar />
	<table>
		<tr>
			<@textinput id="code_f" label="单号" width="200"/>
			<@selectinput id="customer_customer_f" label="客户" width="200"/>
		</tr>
		<tr>
			<@textinput id="remark_f" label="备注" width="500" colspan="4"/>
		</tr>
		<input type="hidden" id="iscreditamout_f" name="iscreditamout_f"/>
	</table> 
</div>

<div data-options="region:'center'" >
	 <@detailgrid name="dg_customercreditdetail"
						  columns=["\lth data-options=\"field:\'companyname_f\',width:80\">抬头\l/th\g"
						  				,"\lth data-options=\"field:\'company_company_f\',width:80,hidden:'true'\">抬头\l/th\g"
						  				,"\lth data-options=\"field:\'orientation_f\',width:80,editor:\{type:\'combobox\',options:\{data:orientationdata,valueField:'combobox_value',textField:'combobox_name'}},formatter:comboboxselect\">方向\l/th\g"
						  				,"\lth data-options=\"field:\'creditbegindate_f\',width:80,editor:'datebox',formatter:formatterDate\">开始日期\l/th\g"
						  				,"\lth data-options=\"field:\'creditenddate_f\',width:80,editor:'datebox',formatter:formatterDate\">失效日期\l/th\g"
						  				,"\lth data-options=\"field:\'creditday_f\',width:80,editor:'numberbox'\">授信天数\l/th\g"
										,"\lth data-options=\"field:\'applycreditamount_f\',width:80,editor:\{type:\'numberbox\',options:\{precision:2}}\">申请额度\l/th\g"
										,"\lth data-options=\"field:\'creditamount_f\',width:80\">审核额度\l/th\g"
										,"\lth data-options=\"field:\'remark_f\',width:150,editor:'textbox'\">备注\l/th\g"
										]
										editable="true"/>
</div>

<div data-options="region:'south'" >
    <table>
    		<tr>
                <@textinput id="p_creator_f" label="制单人" width="100" readonly="true"/> 
                <@textinput id="createtime_f" label="制单时间" width="100" readonly="true"/>  
                <@textinput id="p_modifier_f" label="最后修改人" width="100" readonly="true"/>  
                <@textinput id="modifytime_f" label="最后修改时间" width="100" readonly="true"/> 
                <@textinput id="p_approval_f" label="审核人" width="100" readonly="true"/>
                <@textinput id="approvaltime_f" label="审核时间" width="100" readonly="true"/>
            </tr>
    </table>
  </div>
</form>

<@billinit/>
<@selector/>

 </body>
 <@approval/>
</html>