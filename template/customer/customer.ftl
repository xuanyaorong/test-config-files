<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<#include "shared/include.ftl">
<#include "shared/includedetail.ftl">

<script src="${public}/js/model/customer/customer.js" type="text/javascript"></script>
<script src="${public}/js/jquery-ajaxupload/ajaxfileupload.js" type="text/javascript"></script>
<script src="${public}/js/jquery-ajaxupload/seal.js" type="text/javascript"></script>
<html>
<body class="easyui-layout"> 
<form id="ff" method="post" >
<div data-options="region:'north'" > 
	<@toolbar />
	<table>
		<tr>
			<@textinput id="code_f" label="编码" width="200" readonly="true" />
			<@textinput id="name_f" label="名称" width="300" />
			<td style="width:80px" align="right">供应商</td>
			<td>
				<input id="issupplier"  type="checkbox"  onclick="checkbox(this)">
			</td>
			<td style="width:80px" align="right">销售</td>
			<td>
				<input id="issale"  type="checkbox"  onclick="checkbox(this)">
			</td>
			<td style="width:80px" align="right">加工厂</td>
			<td>
				<input id="isfactory"  type="checkbox"  onclick="checkbox(this)">
			</td>
			<input type="hidden" id="issupplier_f" name="issupplier_f"/>
	    	<input type="hidden" id="issale_f" name="issale_f"/>
	    	<input type="hidden" id="isfactory_f" name="isfactory_f"/>
		</tr>
		<tr>
			<@selectinput id="stop_sysstop_f" label="停用" width="200" />
		</tr>
	</table> 
</div>	


<div data-options="region:'center'" > 
	<div class="easyui-tabs" style="height:100%;">
			<div title="基础信息">
				<table> 
					<tr>
						<@textinput id="excode_f" label="简称" width="100" />
						<@selectinput id="bank_bank_f" label="开户行" width="300" />
						<@textinput id="bankcode_f" label="开户行账号" width="300" />
					</tr>
					<tr>
						<@textinput id="invoicecontacts_f" label="发票联系人" width="100" />
						<@textinput id="invoiceaddress_f" label="发票地址" width="300" />
						<@textinput id="idcar_f" label="营业执照证号" width="300" />
						<@dateinput id="carbegindate_f" label="发证日期" width="100" />
						<@dateinput id="carenddate_f" label="失效日期" width="100" />
					</tr>
					
				</table> 
						<@detailgrid name="dg_customerbank"
						  columns=[
										"\lth data-options=\"field:\'bankname_f\',width:80\">开户行\l/th\g"
										,"\lth data-options=\"field:\'bankcode_f\',width:80\">银行账户\l/th\g"
										]
										editable="true"
						/>
			</div>
			<div title="其它信息" >
				<table> 
					<tr>
						<@selectinput id="trade_trade_f" label="行业信息" width="300" />
						<@textinput id="registeredcapital_f" label="注册资本" width="300" /><@selectinput id="currency_currency_f" width="100" />
					</tr>
					<tr>
						<@selectinput id="enterprisetype_enterprisetype_f" label="企业类型" width="300" />
						<@selectinput id="enterpriseproperty_f" label="企业性质" width="300" />
						<@selectinput id="enterprisescale_enterprisescale_f" label="企业规模" width="300" />
					</tr>
					<tr>
						<@dateinput id="enterprisecreatedate_f" label="成立时间" width="300" />
						<@textinput id="legalrepresentative_f" label="法定代表人" width="300" />
						<@textinput id="employeeqty_f" label="员工数量" width="300" />
					</tr>
					<tr>
						<@textinput id="income_f" label="年营业收入" width="300" />
						<@textinput id="totalassets_f" label="年资产总额" width="300" />
						<@textinput id="apr_f" label="年利润" width="300" />
					</tr>
					<tr>
						<@selectinput id="region_province_f" label="省" width="300" />
						<@selectinput id="region_city_f" label="市" width="300" />
						<@selectinput id="region_district_f" label="区" width="300" />
					</th>
					<tr>
						<@textinput id="enterpriseregisteraddress_f" label="注册地址"  colspan="5"/>
					</tr>
					<tr>
						<@textinput id="mainbusiness_f" label="主营产品及主营业务"  colspan="5"/>
					</tr>
					<tr>
						<@textinput id="remark_f" label="备注" colspan="5"/>
					</th>
					<tr>
						<@textinput id="homepage_f" label="公司官网" width="300"/>
						<@textinput id="tel_f" label="公司固话" width="300"/>
						<@textinput id="fax_f" label="公司传真" width="300"/>
					</tr>
					<tr>
						<@textinput id="homepage_f" label="邮政编码" width="300"/>
						<@textinput id="businessaddress_f" label="经营地址"  colspan="4"/>
					</tr>
					
				</table> 
						<@detailgrid name="dg_customeruser" 
							columns=["\lth data-options=\"field:\'username_f\',width:80\">姓名\l/th\g"
										   ,"\lth data-options=\"field:\'usermobile\',width:80\">手机\l/th\g"
										   ,"\lth data-options=\"field:\'userfax_f\',width:80\">传真\l/th\g"
										   ,"\lth data-options=\"field:\'useremail_f\',width:150\">邮箱\l/th\g"
										   ,"\lth data-options=\"field:\'remark_f\',width:80\">备注\l/th\g"
										   ]
							/>
			</div>
	</div>
</div>

<div data-options="region:'south'" >
    <table>
    		<tr>
                <th><@textinput id="p_creator_f" label="制单人" width="100" readonly="true"/> </th>
                <th><@textinput id="createtime_f" label="制单时间" width="100" readonly="true"/>  </th>
                <th><@textinput id="p_modifier_f" label="最后修改人" width="100" readonly="true"/>  </th>
                <th><@textinput id="modifytime_f" label="最后修改时间" width="100" readonly="true"/> </th>
            </tr>
    </table>
  </div>
		
</form>
<@selector/>
<@billinit/>
 </body>
</html>	