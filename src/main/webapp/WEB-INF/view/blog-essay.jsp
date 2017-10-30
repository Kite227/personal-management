<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./common/common.jsp" %>

<!DOCTYPE html>
<html><head>
<title>blog-心情随笔</title>

<%@include file="./common/head.jsp" %>

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
      <a href="${ctx}/blog/index.do" title="首页" class="nav_first" >首页</a>
      <a class="nav_4" href="${ctx }/essay/blog_essay.do" title="心情随笔" id="topnav_current">心情随笔</a> 
      <a class="nav_3" href="${ctx }/blog/list.do?pn=1&typeId=1" title="韶华追忆">韶华追忆</a> 
      <a class="nav_12" href="${ctx }/blog/list.do?pn=1&typeId=2" title="技术分享">技术分享</a>
      <!-- <a class="nav_22" href="" title="个人归档">个人归档</a> --> 
      <a class="nav_16" href="${ctx }/file/list.do" title="文件下载">文件下载</a>
      <a class="nav_1" href="" title="关于我">关于我</a> 
   	</ul>
  </nav>
</header>
<link href="${ctx}/style/files/timeline.css" rel="stylesheet" type="text/css">
<article>
<div class="l_box f_l">
     <div class="topnews">
      	<h2>
        	<span>
          		<a href="${ctx}/blog/index.do" target="_blank">返回首页&gt;&gt;</a>
         	</span>
         	<b>心情</b>随笔
      	</h2>
      	<c:forEach items="${pageInfo.list }" var="essay">
	        <div class="mood">
	        	<span class="tutime">${essay.dateString }</span>
	    		<p>${essay.content }</p>
	      	</div>
	        <div class="pagelist">			
	        </div>
		</c:forEach>
  	</div>
</div>

<style type="text/css">
    .smile_news {
        overflow: hidden;
        width: 250px;
    }
    .smile_news h3 { font-size: 14px; background: url(/sun/images/r_title_bg.jpg) repeat-x center }
    .smile_news h3 p { background: #fff; width: 70px }
    .smile_news h3 span { color: #65b020 }
    .smile_rank li { height: 25px; line-height: 25px; clear: both; padding-left: 5px; overflow: hidden; padding-left: 15px; background: url(/sun/images/li.jpg) no-repeat left center; }
    .smile_rank { margin: 10px 0 }
    .smile_rank li a { color: #333; }
    .smile_rank li:first-child a {display: block;}
    .gzwm .feedback { background: url(../sun/images/feedback.jpg) no-repeat scroll 0% 0% transparent; }
    .gzwm .feedback:hover { color: #000; background: url(../sun/images/feedback_hover.jpg ) no-repeat scroll 0% 0% transparent; }
</style>

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
        	<c:forEach items="${articleInfo.list }" var="article">
	        	<li><a href="${ctx }/blog/content.do?id=${article.id }" target="_blank" title="${article.title }">${article.title }</a></li>
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
      <a id="gotop" href="javascript:void(0);" title="返回顶部" style="display: none;"></a> 
  </div>
</div>
</body>
</html>