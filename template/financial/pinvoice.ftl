<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">
<script src="${public}/js/model/financial/pinvoice.js" type="text/javascript"></script>
<script src="${public}/js/model/financial/invoicemsg.js" type="text/javascript"></script>
<html>
<#include "financial/invoicemsg.ftl">
<body class="easyui-layout">
<form id="ff" method="post">
    <div data-options="region:'north'">
	<@toolbar />
        <table>
            <tr>
			<@selectinput id="company_company_f" label="抬头" width="300" />
            </tr>
            <tr>
			
			<@textinput id="code_f" label="单号" width="300" readonly="true" />
            <@textinput id="redcode_f" label="冲销原单号" width="300" readonly="true" />
            <@selectinput id="properties_properties_f" label="属性"  />
            </tr>
            <tr>
			<@selectinput id="customer_customer_f" label="客户" width="300" />

			<@selectinput id="user_manager_f" label="业务经理"  />
            <@textinput id="message_f" label="快递信息" width="300" readonly="true" />
            </tr>


            <tr>
            <@textinput id="remark_f" label="备注" width="500" colspan="4"/>
            </tr>
        </table>
    </div>


    <div data-options="region:'center'">
        <div class="easyui-tabs" style="height:100%;">
            <div title="单据明细">
                <@detailgrid name="dg_pinvoicedetail" columns=["\lth data-options=\"field:\'ccode_f\',width:150\">采购合同号\l/th\g"
                ,"\lth data-options=\"field:\'goodcode_f\',width:150,editor:'textbox'\">商品编码\l/th\g"
                ,"\lth data-options=\"field:\'goodname_f\',width:150,editor:'textbox'\">商品名称\l/th\g"
                ,"\lth data-options=\"field:\'invqty_f\',width:150,editor:\{type:\'numberbox\',options:\{precision:5}}\">收票数量\l/th\g"
                ,"\lth data-options=\"field:\'amount_f\',width:150,editor:\{type:\'numberbox\',options:\{precision:2}}\">金额\l/th\g"
                ,"\lth data-options=\"field:\'remark_f\',width:150,editor:'textbox'\">备注\l/th\g"
                ]
               totalcolumns="amount_f" editable="true"/>
            </div>
            <div title="发票号" >
            <@detailgrid name="dg_pinvoicecodedetail" columns=["\lth data-options=\"field:\'code_f\',width:150,editor:'textbox'\">发票号码\l/th\g"
                ]/>
            </div>
        </div>
    </div>

    <div data-options="region:'south'">

        <table>
            <tr>
                <th><@textinput id="p_creator_f" label="制单人" width="100" readonly="true"/> </th>
                <th><@textinput id="createtime_f" label="制单时间" width="100" readonly="true"/> </th>
                <th><@textinput id="p_modifier_f" label="最后修改人" width="100" readonly="true"/> </th>
                <th><@textinput id="modifytime_f" label="最后修改时间" width="100" readonly="true"/> </th>
                <th><@textinput id="p_approval_f" label="审核人" width="100" readonly="true"/> </th>
                <th><@textinput id="approvaltime_f" label="审核时间" width="100" readonly="true"/> </th>
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