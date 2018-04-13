<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#include "shared/include.ftl">
<#include "shared/includelist.ftl">

<script src="${public}/js/components/dgformatter.js" type="text/javascript"></script>
<script src="${public}/js/model/price/pricinglist.js" type="text/javascript"></script>


<html>  
<body class="easyui-layout">   
<@queryform/>
 	
<@listgrid/>

    
<@selector/>
</body>   

</html>