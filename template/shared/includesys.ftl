<#assign ctx = rc.contextPath>
<#assign public = ctx+"/public">
<#assign uri = rc.requestUri>

<#-- js部分 -->
<script src= "${public}/easyui/jquery.min.js" type="text/javascript"></script>
<script src= "${public}/easyui/jquery.easyui.min.js" type="text/javascript"></script>
<script src= "${public}/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
<#-- css部分 -->
 <link href="${public}/easyui/themes/metro/easyui.css" rel="stylesheet" type="text/css" />
 <link href="${public}/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
<link href="/public/css/common.css" rel="stylesheet" type="text/css" />
<input id="basePath" value="${ctx}" type="hidden">