<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./common/common.jsp" %>

<!DOCTYPE html>
<html >
<head>
<title>${blogContent.title } - kite博客</title>

<link href="${ctx }/style/files/base.css" rel="stylesheet" type="text/css">
<link href="${ctx }/style/files/index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${ctx }/style/files/jquery.classyleaves.min.css">

</head>
<body>
<header>
  <div class="topbg">
    <ul class="topnav">
      <a href="http://www.yezismile.com/" target="_blank">Home</a>
      <a href="https://www.yezismile.com/about/index" target="_blank">关于我们</a>
    </ul>
  </div>
  <div class="topbgline"></div>
  <div class="logo"></div>
  <nav id="topnav">
    <ul>
   		<a href="https://www.yezismile.com/" title="首页" class="nav_first" id="">首页</a>
        <a class="nav_4" href="https://www.yezismile.com/mood/index" title="心情随笔">心情随笔</a> 
        <a class="nav_3" href="https://www.yezismile.com/memory/index?tag=3" title="韶华追忆" id="topnav_current">韶华追忆</a> 
        <a class="nav_12" href="https://www.yezismile.com/memory/index?tag=12" title="技术分享">技术分享</a> 
        <a class="nav_22" href="https://www.yezismile.com/archives/index" title="个人归档">个人归档</a> 
        <a class="nav_18" href="https://www.yezismile.com/book/index" title="书屋">书屋</a> 
        <a class="nav_16" href="https://www.yezismile.com/index/message" title="Blog留言">Blog留言</a> 
        <a class="nav_1" href="https://www.yezismile.com/about/index" title="关于我">关于我</a> 
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
	<input type="hidden" name="get_title_name" value="王先森，生日快乐">
	<input type="hidden" name="get_news_photo" value="/data/photo/day_20171015/201710152006433298_s.jpg">
	<div style="display:none;" id="get_qrcode_url_id">
		https%3A%2F%2Fwww.yezismile.com%2Fdetail%2F456.html
	</div>
	<div class="l_box f_l">
    <!-- banner -->
    <div class="topnews weizhi">
      <h2>您现在的位置是：
         <a href="https://www.yezismile.com/">首页</a>&nbsp;&gt;&nbsp;
         <a href="https://www.yezismile.com/memory/index?tag=3">韶华追忆</a>&nbsp;&gt;&nbsp;
      </h2>
      <!-- 文章内容 -->
      <div class="news_title">${blogContent.title}</div>
	  <div class="news_author">
	  	<span class="au01">kite</span>
	  	<span class="au02">${blogContent.dateString }</span>
	  </div>
	  <div class="news_content">${blogContent.content }</div>
	<div class="copyright_author">
		<p><strong>版权声明：</strong>本站原创文章，由<a href="https://www.yezismile.com/detail/5.html" target="_blank">kite</a>发表</p>
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
				<li class="ab"><a href="https://www.yezismile.com/about/" title="关于博主">关于博主</a></li>
	            <li class="sy"><a href="https://www.yezismile.com/mood/" title="心情随笔">心情随笔</a></li>
	            <li class="js"><a href="https://www.yezismile.com/memory/index?tag=3" title="韶华追忆">韶华追忆</a></li>
	            <li class="msh"><a href="https://www.yezismile.com/" title="网站首页">网站首页</a></li>
	            <li class="ly"><a href="https://www.yezismile.com/index/message" title="Blog留言">Blog留言</a></li>
	            <li class="ly"><a href="https://www.yezismile.com/book/index" title="淘宝小屋">叶子书屋</a></li>
       		</ul>      
      	</nav>
     </div>
     <div class="tit01">
		<h3>最新文章</h3>
        <ul class="smile_rank" style="">
	        <li><a href="https://www.yezismile.com/detail/456.html" target="_blank" title="王先森，生日快乐">王先森，生日快乐</a></li>
	        <li><a href="https://www.yezismile.com/detail/455.html" target="_blank" title="不要把自己的苦难看得过于独特">不要把自己的苦难看得过于独特</a></li>
	        <li><a href="https://www.yezismile.com/detail/454.html" target="_blank" title="曾梦想仗剑走天涯，后来因为bug太多就没去">曾梦想仗剑走天涯，后来因为bug太多就没去</a></li>
	        <li><a href="https://www.yezismile.com/detail/453.html" target="_blank" title="天寒地冻，记得穿秋裤">天寒地冻，记得穿秋裤</a></li>
	        <li><a href="https://www.yezismile.com/detail/452.html" target="_blank" title="我有那么一帮傻姑娘">我有那么一帮傻姑娘</a></li>
	        <li><a href="https://www.yezismile.com/detail/451.html" target="_blank" title="php面试题总结（一）">php面试题总结（一）</a></li>
	    </ul>
    </div>
    <div class="links">
    	<h3>友情链接</h3>
       	<ul>
	        <li><a href="https://zhaojingxian.cn/" target="_blank">zhjx922博客</a></li>
	        <li><a href="http://www.viphper.com/" target="_blank">PHP学习网</a></li>
	        <li><a href="http://www.wangzhijun.com.cn/" target="_blank">王志军博客</a></li>
	        <li><a href="http://www.k2zone.cn/" target="_blank">KTWO博客</a></li>
	        <li><a href="http://www.80le.net/" target="_blank">80乐</a></li>
	        <li><a href="http://www.zhangweisen.cn/" target="_blank">张伟森博客</a></li>
	        <li><a href="http://www.leftso.com/" target="_blank">Leftso(左搜)</a></li>
	        <li><a href="http://lovefc.cn/" target="_blank">封尘博客</a></li>
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