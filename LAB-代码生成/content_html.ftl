<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>${title}</title>
<meta name="viewport" content="width=device-width initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link href="../../../css/zixun.css" type="text/css" rel="stylesheet"/>
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no" />


</head>
<body>
<a id="openApp" href='' style="display:none;">
    <img id="openAppImg" width="100%" src="../../../images/header_download.jpg" style="max-width: 720px;">
</a>
<div class="wrap_box">
	<h4 class="zixun_tit">${title}</h4>
    <p class="zixun_inf">
    <#if canReply?? && canReply == 1>
    <span class="commentCount">回复: 0</span>
    </#if>
    <span>作者：${userTel} / ${releaseDate}</span></p>
    <div class="zixun_cont contentHtml">
    	<!--此处为4:3比例的图-->
    	<#if shareImg??>
    		<p><img src="${shareImg}" width="100%"></p>
    	</#if>	
        ${contents}    	
    </div>
    <#if medicineList?exists && medicineList?has_content>
    <div class="zixun_list_box">
    	<#list medicineList as medicine>
    	<div class="zixun_list">
        	<i></i>
        	<span><img src="${medicine.dpPicUrl}" width="80"></span>
            <h4 class="drugName">${medicine.ndName}</h4>
            <p>规格：${medicine.ndSpecifitions}</p>
            <p>厂家：${medicine.ndManufacturer}</p>
        </div>
		</#list>
        <div class="zixun_action"><a href="javascript:;">我要买药（0）</a></div>
    </div>
    </#if>
    
</div>
<#if canReply?? && canReply == 1>
<div class="commentHeader">
	<img src="../../../images/arrow.png" />
    <p>全部评论</p>
</div>
<div class="wrap_box comment">
	<div class="lineStand"></div>
	<ul id="commentList">
    	
    </ul>
    <button class="loadMore">加载更多评论</button>
</div>
</#if>

<script type="text/javascript" src="../../../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../../../js/webMutual.js"></script>
<script type="text/javascript"> 
// 添加药品个数
var medicineCount = 0;
// 资讯内容id
var curContentId = ${contentId};


</script>
<script type="text/javascript" src="../../../js/zixun.js"></script>

</body>
</html>
