<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">
<script src="${public}/js/model/basics/usergrp.js" type="text/javascript"></script>
<html>
<body class="easyui-layout">

<form id="ff" method="post">
    <div data-options="region:'north'">
	<@toolbar />
        <table>
            
            <tr>
			
			<@textinput id="code_f" label="单号" width="300" readonly="true" />
            <@textinput id="groupname_f" label="用户组名称" width="300" />
            </tr>
            <tr>
			<@selectinput id="company_company_f" label="抬头" width="300" />
			<@selectinput id="category_goodcat_f" label="商品分类" width="300" />
            </tr>


            <tr>
            <@textinput id="remark_f" label="备注" width="500" colspan="4"/>
            </tr>
        </table>
    </div>


    <div data-options="region:'center'">
        <@detailgrid name="dg_usergrpdetail" columns=["\lth data-options=\"field:\'p_user_f\',width:150\">用户\l/th\g"
        ]
       editable="true"/>
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