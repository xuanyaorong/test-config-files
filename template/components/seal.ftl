<#macro seal>
<div id="winSealImg">
    <div class="easyui-layout"  data-options="fit:true">
        <div data-options="region:'north'" style="height:50px">
            <input id="size_number" type="text" class="easyui-numberbox" value="18" data-options="label:'号码大小',min:0,precision:0">
            <a href="#" id="positionContact" class="easyui-linkbutton" onclick="positionContact()">定位合同号</a>
            <input id="img_size_number" type="text" class="easyui-numberbox" value="180" data-options="label:'盖章宽度',min:0,precision:0">
            <a href="#" id="positionSeal" class="easyui-linkbutton hide" onclick="positionSeal()">盖章</a>
            <a href="#" id="saveSeal" class="easyui-linkbutton hide" onclick="saveSeal()">保存盖章</a>
        </div>
        <div data-options="region:'center',title:'',fit:true">
            <div id="sealBigImg">
                <div id="sealdraggable1" class="hide" style="width:100px;height:100px;">
                    <p id="sealdraggable1text"></p>
                    <a href="#" class="easyui-linkbutton" onclick="confirmContact()">确定</a>
                    <a href="#" class="easyui-linkbutton" onclick="$('#sealdraggable1').hide();">取消</a>
                </div>
                <div id="sealdraggable2" class="hide" style="width:100px;height:100px;">
                    <img id="sealdraggable2img" width="200px" height="200px"/>
                    <a href="#" class="easyui-linkbutton" onclick="confirmSeal()">确定</a>
                    <a href="#" class="easyui-linkbutton" onclick="$('#sealdraggable2').hide();">取消</a>
                </div>
            </div>
        </div>
    </div>
</div>
</#macro>
<div id="winSealImgPrint">
    <iframe id="winSealImgPrintIframe" frameborder="false" src="" height="100%" width="100%"></iframe>
</div>

<div id="winSeal">
    <div class="easyui-layout"  data-options="fit:true">
        <div data-options="region:'north'" style="height:30px">
            <!--那么属性必须为file后台根据这个取数据-->
            <input class="easyui-filebox" style="width:300px" data-options="multiple:true,buttonText:'上传',onChange:change_photo" name="file">
            <a id="loadSource" href="#" class="easyui-linkbutton hide" onclick="loadSource()">下载原始文件</a>
        </div>
        <div data-options="region:'west'" title="" style="width:300px;">
            <div id="piclistContent" class="easyui-panel" data-options="closed:true">
                <table id="piclist"></table>
            </div>
        </div>
        <div id="sealImg" data-options="region:'center',title:''">

        </div>
    </div>
</div>
<div id="selectImg">
    <div id="picselectlistContent" class="easyui-panel" data-options="closed:true">
        <table id="picselectlist"></table>
        <div id="picselectlisttoolbar">
            <a href="#" class="easyui-linkbutton" data-options="plain:true" onclick="confirmMultiImg()">保存</a>
        </div>
    </div>
</div>

<!--上传列表页面-->
<div id="winSeallist">
    <div class="easyui-layout"  data-options="fit:true">
        <div data-options="region:'north'" style="height:30px">
            <a href="#" class="easyui-linkbutton" onclick="seal_upload()">上传</a>
            <a href="#" class="easyui-linkbutton" onclick="picall_refresh()">刷新</a>
            <a id="isSeallist" href="#" class="easyui-linkbutton hide" onclick="sealBigImgPrint()">盖章</a>
            <a id="loadSourcelist" href="#" class="easyui-linkbutton hide" onclick="loadSourceList()">下载原始文件</a>
        </div>
        <div data-options="region:'west'" title="" style="width:300px;">
            <div id="picalllistContent" class="easyui-panel" data-options="closed:true">
                <table id="picalllist"></table>
            </div>
        </div>
        <div id="sealImglist" data-options="region:'center',title:''">
        </div>
    </div>
</div>