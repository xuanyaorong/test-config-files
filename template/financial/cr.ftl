<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">

<script src="${public}/js/model/financial/cr.js" type="text/javascript"></script>
<html>
<body class="easyui-layout">




<form id="ff" method="post" >
    <div data-options="region:'north'" >
	<@toolbar />
        <table>
            <tr>
			<@selectinput id="company_company_f" label="抬头" width="300"/>

            </tr>
            <tr>
			
			<@textinput id="code_f" label="单号" width="300" readonly="true" />
			
			
			<@textinput id="redcode_f" label="冲销单号" width="200" readonly="true" />


            </tr>
            <tr>
			<@selectinput id="customer_customer_f" label="客户" width="300" />

			<@selectinput id="user_manager_f" label="业务经理"  />
			<@selectinput id="properties_properties_f" label="属性"  />


            </tr>


            <tr>
		<@textinput id="remark_f" label="备注"  colspan="9"/>
            </tr>
        </table>
    </div>


    <div data-options="region:'center'" >

			<@detailgrid name="dg_crdetail" columns=["\lth data-options=\"field:\'ccode_f\',width:150\">销售合同号\l/th\g"
            ,"\lth data-options=\"field:\'amount_f\',width:150,editor:\{type:\'numberbox\',options:\{precision:2}}\">金额\l/th\g"
            ,"\lth data-options=\"field:\'remark_f\',width:150,editor:'textbox'\">备注\l/th\g"
			<#--,"\lth data-options=\"field:\'\',width:80\">核销组号\l/th\g"-->
			<#--,"\lth data-options=\"field:\'\',width:80\">核销日期\l/th\g"-->
			]
			totalcolumns=["amount_f"] editable="true"/>

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
<@selector/>
<@billinit/>
<@approval/>
<@seal/>
</body>
</html>