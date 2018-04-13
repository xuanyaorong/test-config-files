<#macro selector>


<div id="win_selector" class="easyui-window" title="Modal Window" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:800px;height:500px;">
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'north'" style="height:50px">
			<form id="ffquery" method="post">
				<div style="width:100%; text-align:left; margin-top:10px; margin-bottom:10px;">
				<span>筛选</span> 
				<input id="queryfilter" name="queryfilter" class="easyui-textbox" type="text" style="width:200px" >
				<span>日期范围</span>
				<input class="easyui-datebox" id="begindate" name="begindate" data-options="sharedCalendar:'#cc'" style="width:100px">
				<span>~</span>
				
				<input class="easyui-datebox" id="enddate" name="enddate" data-options="sharedCalendar:'#cc'" style="width:100px">
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px" onclick="btn_query()">筛选</a>
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="btn_ok()">确定</a>
				</div>
			</form>
			
			<div id="cc" class="easyui-calendar"></div>
		</div>
		
		
		<div data-options="region:'center'" >
			<table id="dg_selector" class="easyui-datagrid" rownumbers="true" fitColumns="true" pagination="true" fit="true" showFooter="true" sourcedatagrid="" datagridindex="" billcode="" filtersql="" billfieldfiltersql=""/>
		</div>
	</div>
</div>
</#macro>