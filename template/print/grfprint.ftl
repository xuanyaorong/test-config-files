<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">

<html>

<!--单据打印处理页面-->

<head>
    <script type="text/javascript">
    	//插入一个报表对象，用来判断插件是否已经安装，或是否需要安装更新版本
        Install_InsertReport();
    </script>
</head>
<body>
	<script type="text/javascript">
		//用来判断插件是否已经安装，或是否需要安装更新版本。如果需要安装，则在网页中插入安装相关的文字内容
		//如果插件已经安装且也不要更新，则返回 true，反之为 false。
	    if(Install_Detect()){
	    	window.onload=function(){
	  			var basePath =$('#basePath').val();
	  			var sealimg=basePath+"${sealimg}";
				var grfurl=basePath+"/public/gridreport/print/${grffile}";
				var dataurl=basePath+"/print/getgridreportdata?printgrfuuid=${printgrfuuid}&uuid=${uuid}";
				
				/*CreateReport("Report");
				Report.LoadFromURL(grfurl);
				Report.ControlByName("sealimg").AsPictureBox.LoadFromFile(sealimg);
				Report.LoadDataFromURL(dataurl);
				Report.PrintPreview(true);*/
				
				//由于打印文件需要加载印章图片,需将第五个参数设置为false 表示不自动加载打印文件 (ps:当且只有ReportViewer对象时才需要这样操作,如果是ReportDesigner对象,需要传图片到打印文件,参考sealedit.ftl)
				CreatePrintViewerEx("100%", "100%", grfurl, dataurl, false, "");
				ReportViewer.Report.ControlByName("sealimg").AsPictureBox.LoadFromFile(sealimg);
				//图片加载完后,才开始执行打印文件
				ReportViewer.Start();
  			}
	    }
    </script>
</body>
</html>