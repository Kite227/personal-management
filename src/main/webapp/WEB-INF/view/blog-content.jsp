<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./common/common.jsp" %>
<<c:set var="name" value="${blogContent.title } - kite博客"></c:set>

<!DOCTYPE html>
<html >
<head>
<%@include file="./common/head.jsp" %>
</head>

<body>

<header>
  <div class="topbg">
    <ul class="topnav">
      <a href="${ctx}/blog/index.do" target="_blank">Home</a>
      <a href="" target="_blank">关于我们</a>
    </ul>
  </div>
  <div class="topbgline"></div>
  <div class="logo"></div>
  <nav id="topnav">
    <ul>
      <a href="${ctx}/blog/index.do" title="首页" class="nav_first">首页</a>
      <a class="nav_4" href="${ctx }/essay/blog_essay.do" title="心情随笔">心情随笔</a> 
      <a class="nav_3" href="${ctx }/blog/list.do?pn=1&typeId=1" title="韶华追忆" id="topnav_current">韶华追忆</a> 
      <a class="nav_12" href="${ctx }/blog/list.do?pn=1&typeId=2" title="技术分享">技术分享</a>
      <!-- <a class="nav_22" href="" title="个人归档">个人归档</a> --> 
      <a class="nav_16" href="${ctx }/file/list.do" title="文件下载">文件下载</a>
      <a class="nav_1" href="" title="关于我">关于我</a> 
   	</ul>
  </nav>
</header>

<link rel="stylesheet" href="${ctx }/style/files/view.css">
<style type="text/css">
	.copyright_author{background:#f3f3f3;border:#e9e9e9 1px solid;margin-bottom:20px;color: #a0a0a0;padding:25px 20px;}
	.copyright_author a {transition:all .3s}
	.copyright_author a:hover{color:#a0a0a0;}
	.copyright_author p{padding:0;margin:0}
	.copyright_author p:last-of-type{margin-top:4px}
	.copyright_author .p-hidden {text-overflow:ellipsis;white-space:nowrap;overflow:hidden}
</style>

<article>
	<input type="hidden" name="get_title_name" value="${blogContent.title}">
	<input type="hidden" name="get_news_photo" value="${ctx }/${blogContent.cover }">
	<div style="display:none;" id="get_qrcode_url_id">
		https%3A%2F%2Fwww.yezismile.com%2Fdetail%2F456.html
	</div>
	<div class="l_box f_l">
    <!-- banner -->
    <div class="topnews weizhi">
      <h2>您现在的位置是：
         <a href="${ctx }/blog/index.do">首页</a>&nbsp;&gt;&nbsp;
         <a href="${ctx }/blog/list.do?pn=1&typeId=1">韶华追忆</a>&nbsp;&gt;&nbsp;
      </h2>
      <!-- 文章内容 -->
      <div class="news_title">${blogContent.title}</div>
	  <div class="news_author">
	  	<span class="au01">kite</span>
	  	<span class="au02">${blogContent.dateString }</span>
	  </div>
	  <div class="news_content">${blogContent.content }</div>
	<div class="copyright_author">
		<p><strong>版权声明：</strong>本站原创文章，由<a href="" target="_blank">kite</a>发表</p>
		<p class="p-hidden"><strong>转载请注明：</strong><a href="${ctx }/blog/content.do?id=${blogContent.id}" target="_self">${blogContent.title }</a> | <a href="${ctx}/blog/index.do">kite博客</a></p>
	</div>
	
	<!--nextpage-->
	<div class="nextpage">
		<p><b>下一篇:</b> <a href="${ctx }/blog/content.do?id=${blogContent.nextId}">${blogContent.nextTitle }</a></p>
	</div>
   </div>
 </div>
  
<!--right start-->
<div class="r_box f_r">
	<div class="tit01 myself-nav">
		<nav>
			<ul>
	           <li class="ab"><a href="" title="关于博主">关于博主</a></li>
	           <li class="sy"><a href="${ctx }/essay/blog_essay.do" title="心情随笔">心情随笔</a></li>
	           <li class="js"><a href="${ctx }/blog/list.do?pn=1&typeId=1" title="韶华追忆">韶华追忆</a></li>
	           <li class="msh"><a href="${ctx }/blog/index.do" title="网站首页">网站首页</a></li>
	           <li class="ly"><a href="${ctx }/blog/list.do?pn=1&typeId=2" title="技术分享">技术分享</a></li>
	           <li class="ly"><a href="${ctx }/file/list.do" title="文件下载">文件下载</a></li>
       		</ul>  
      	</nav>
     </div>
     <div class="tit01">
		<h3>最新文章</h3>
        <ul class="smile_rank" style="">
        <c:forEach items="${pageInfo.list }" var="blog_article">
	        <li><a href="${ctx }/blog/content.do?id=${blog_article.id}" target="_blank" title="${blog_article.title }">${blog_article.title }</a></li>
		</c:forEach>	    
	    </ul>
    </div>
    <div class="links">
    	<h3>友情链接</h3>
       	<ul>
	        <li><a href="http://www.icourse163.org/" target="_blank">慕课网</a></li>
	        <li><a href="https://github.com/Kite227/personal-management.git" target="_blank">项目git地址</a></li>
	        <li><a href="https://leetcode.com/" target="_blank">leetcode</a></li>
	        <li><a href="https://www.w3cschool.cn/" target="_blank">W3Cschool</a></li>
	        <li><a href="http://www.csdn.net/" target="_blank">CSDN开源社区</a></li>
	        <li><a href="http://www.iyingdi.cn/" target="_blank">旅法师营地</a></li>
	        <li><a href="http://www.leftso.com/" target="_blank">Leftso(左搜)</a></li>
	        <li><a href="http://www.iteye.com/" target="_blank">ITeye</a></li>
	   	</ul>
    </div>
 </div>
 
<!--r_box end -->
</article>
<div class="blank"></div>
<div id="copright">
   	<div id="tbox"> 
      	<a id="gotop" href="javascript:void(0);" title="返回顶部" style="display: block;"></a> 
  	</div>
</div>

</body>
</html>