<#assign ctx = rc.contextPath>
<#assign public = ctx+"../../public">
<#assign uri = rc.requestUri>

<#assign fileName = viewName?substring(viewName?last_index_of("/")+1)>

<#include "components/selectinput.ftl">
<#include "components/textinput.ftl">
<#include "components/selector.ftl">
<#include "components/daterange.ftl">






<#-- js部分 -->
<script src= "${public}/easyui/jquery.min.js" type="text/javascript"></script>
<script src= "${public}/easyui/jquery.easyui.min.js" type="text/javascript"></script>
<script src= "${public}/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
<#-- css部分 -->
<link href="${public}/easyui/themes/metro/easyui.css" rel="stylesheet" type="text/css" />
<link href="${public}/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
<link href="${public}/easyui/themes/color.css" rel="stylesheet" type="text/css" />
<link href="${public}/css/common.css" rel="stylesheet" type="text/css" />
<#-- 定制部分 -->
<script src="${public}/js/common.js" type="text/javascript"></script>
<script src="${public}/js/components/dgformatter.js" type="text/javascript"></script>

<script src="${public}/js/components/selectinput.js" type="text/javascript"></script>

<script src="${public}/js/components/selector.js" type="text/javascript"></script>

<#-- gridreport打印 -->
<script src="${public}/js/gridreport/grf6_5/CreateControl.js" type="text/javascript"></script>
<script src="${public}/js/gridreport/grf6_5/GRUtility.js" type="text/javascript"></script>
<script src="${public}/js/gridreport/grf6_5/GRInstall.js" type="text/javascript"></script>




<input id="basePath" value="${ctx}" type="hidden">

