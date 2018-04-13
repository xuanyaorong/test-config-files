<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<html>
<head>

<!--合同盖章可编辑处理页面-->

	<script type="text/javascript">
		//插入一个报表对象，用来判断插件是否已经安装，或是否需要安装更新版本
        Install_InsertReport();
        
		//编辑模板保存事件重写
		function OnSaveReport()
		{
			//设置 DefaultAction 属性为 false，不执行控件本身的默认保存行为
			ReportDesigner.DefaultAction = false;
			
		    ReportDesigner.Post();  //将设计器中的设计数据提交到报表对象
		    
		    var _contartimg="${contartimg}";
		    var newgrfurl=_contartimg.substring(_contartimg.indexOf('upload')-1,_contartimg.lastIndexOf('.'))+".grf";
		    var ReportName = newgrfurl; //这里可以是一个参数化的变量
		    var LoadURL ="/print/savegridreportfile?report=" + ReportName;
		    var success = ReportDesigner.Report.SaveToURL(encodeURI(LoadURL) );
		    if ( success ){
		    		parent.sealBigImgPrintClose(newgrfurl);
		        alert("保存报表成功!");
		    }else{
		        alert("保存报表失败!");
		    }
		}
	</script>
	
</head>
<body>
    <script type="text/javascript">
    		//用来判断插件是否已经安装，或是否需要安装更新版本。如果需要安装，则在网页中插入安装相关的文字内容
			//如果插件已经安装且也不要更新，则返回 true，反之为 false。
   	 		if(Install_Detect()){
   	 			window.onload=function(){
		    		var sealimg="${sealimg}";
		    		var contartimg="${contartimg}";
		    		var contartnostr="${contartnostr}";
		    		var grfurl="/public/gridreport/print/seal/seal.grf";
		    		
			        //修改一个报表，在完成报表设计后，将报表保存在web服务器上
			        //前面两个参数分别指定模板载入与保存的URL，
			        //第三个参数指定报表数据的URL，以便在设计时载入数据及时查看效果
			        CreateDesignerEx("100%", "100%", grfurl, "", "", "<param name='OnSaveReport' value='OnSaveReport'>");
			        ReportDesigner.Report.ControlByName("sealimg").AsPictureBox.LoadFromFile(sealimg);
			        ReportDesigner.Report.ControlByName("contartimg").AsPictureBox.LoadFromFile(contartimg);
			        ReportDesigner.Report.ControlByName("StaticBox1").AsStaticBox.Text=contartnostr;
			      	ReportDesigner.Reload();
			     }
       		}
    </script>
</body>
</html>