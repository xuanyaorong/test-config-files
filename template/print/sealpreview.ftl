<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">

<html>

<!--合同盖章预览处理页面-->

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
				var grfurl="${grffile}";
				CreatePrintViewerEx("100%", "100%", grfurl, "", true, "");
			}
		}
    </script>
</body>
</html>