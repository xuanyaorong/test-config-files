<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">
<script src="${public}/js/model/file/file.js" type="text/javascript"></script>
<html>
<body class="easyui-layout">
<input type="hidden" id="skip" value="1"/>
<input type="hidden" id="rbillcode" value="${rbillcode}"/>
<input type="hidden" id="rcode" value="${rcode}"/>
<input type="hidden" id="ruuid" value="${ruuid}"/>
<input type="hidden" id="rcompany" value="${rcompany}"/>
<input type="hidden" id="rccompany" value="${rccompany}"/>
<input type="hidden" id="rpcompany" value="${rpcompany}"/>
<form id="ff" method="post">
    <div data-options="region:'north'">
	<@toolbar />
        <table>
            <tr>
			
			<@textinput id="code_f" label="单号" width="300" readonly="true" />
                <td style="width:80px" align="right">单据类型</td>
                <td>
                    <select id="bill_f" class="easyui-combobox" name="bill_f" style="width:300px;">
                        <option value="pc">采购合同</option>
                        <option value="productstkinnotes">采购通知</option>
                        <option value="stkin">采购入库</option>
                        <option value="cp">付款单</option>
                        <option value="pinvoice">采购收票</option>
                        <option value="sc">销售合同</option>
                        <option value="stkoutnotes">出库通知</option>
                        <option value="stkout">销售出库</option>
                        <option value="cr">收款单</option>
                        <option value="sinvoice">销售开票</option>
                    </select>
                </td>
                <td>
                    <@selectinput id="company_company_f" label="抬头" width="300" />
                </td>
            </tr>
            <tr>
                <td style="width:80px" align="right">是否盖章</td>
                <td>
                    <select id="ischapter_f" class="easyui-combobox" name="ischapter_f" style="width:300px;">
                        <option value="0">否</option>
                        <option value="1">是</option>
                    </select>
                </td>

                <td style="width:80px" align="right">印章类型</td>
                <td>
                    <select id="filetype_f" class="easyui-combobox" name="filetype_f" style="width:300px;">
                        <option value="0">业务章</option>
                        <option value="1">合同章</option>
                    </select>
                </td>

            </tr>


            <tr>
            <@textinput id="remark_f" label="备注" width="500" colspan="4"/>
            </tr>
        </table>
    </div>
    <div data-options="region:'center'">
        <div id="tab_uploadcodedetail" class="easyui-tabs" style="height:100%;">
            <div title="单号列表">
                    <@detailgrid name="dg_uploadcodedetail" columns=["\lth data-options=\"field:\'rcode_f\',width:150\">单号\l/th\g"
                    ]
                    editable="true"/>
            </div>
            <div title="上传文件" >
                    <@detailgrid name="dg_uploadpicdetail" columns=["\lth data-options=\"field:\'name_f\',width:150\">文件名\l/th\g"
                    ,"\lth data-options=\"field:\'sourcefile_f\',width:150\">原始文件\l/th\g"
                    ,"\lth data-options=\"field:\'destfile_f\',width:150\">盖章文件\l/th\g"
                    ,"\lth data-options=\"field:\'remark_f\',width:150\">备注\l/th\g"
                    ]
                     editable="true"/>
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