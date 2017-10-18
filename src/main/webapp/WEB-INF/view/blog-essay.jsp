<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./common/common.jsp" %>

<!DOCTYPE html>
<html><head>
<title>blog-心情随笔</title>

<!-- <link href="https://www.yezismile.com/favicon.ico" rel="shortcut icon"> -->
<link href="${ctx}/style/files/base.css" rel="stylesheet" type="text/css">
<link href="${ctx}/style/files/index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${ctx}/style/files/jquery.classyleaves.min.css">

</head>
<body>
<header>
  <div class="topbg">
    <ul class="topnav">
      <a href="${ctx}/blog/index.do" target="_blank">Home</a>
      <a href="https://www.yezismile.com/about/index" target="_blank">关于我们</a>
    </ul>
  </div>
  <div class="topbgline"></div>
  <div class="logo"></div>
  <nav id="topnav">
    <ul>
      <a href="${ctx}/blog/index.do" title="首页" class="nav_first">首页</a>
            <a class="nav_4" href="${ctx }/essay/blog_essay.do" title="心情随笔" id="topnav_current">心情随笔</a> 
            <a class="nav_3" href="https://www.yezismile.com/memory/index?tag=3" title="韶华追忆">韶华追忆</a> 
            <a class="nav_12" href="https://www.yezismile.com/memory/index?tag=12" title="技术分享">技术分享</a> 
            <!-- <a class="nav_22" href="https://www.yezismile.com/archives/index" title="个人归档">个人归档</a> --> 
            <a class="nav_18" href="https://www.yezismile.com/book/index" title="书屋">书屋</a> 
            <!--<a class="nav_16" href="https://www.yezismile.com/index/message" title="Blog留言">Blog留言</a> --> 
            <a class="nav_1" href="https://www.yezismile.com/about/index" title="关于我">关于我</a> 
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
                        <li><a href="https://www.yezismile.com/detail/451.html" target="_blank" title="php面试题总结（一）">php面试题总结（一）</a></li>
                        <li><a href="https://www.yezismile.com/detail/450.html" target="_blank" title="戳开真相的我，眼泪掉下来">戳开真相的我，眼泪掉下来</a></li>
                        <li><a href="https://www.yezismile.com/detail/449.html" target="_blank" title="其实我是个假程序员">其实我是个假程序员</a></li>
                        <li><a href="https://www.yezismile.com/detail/448.html" target="_blank" title="中秋之夜，俺哥醉酒祝大家过年好">中秋之夜，俺哥醉酒祝大家过年好</a></li>
                        <li><a href="https://www.yezismile.com/detail/447.html" target="_blank" title="扒苞米棒子之感受">扒苞米棒子之感受</a></li>
                        <li><a href="https://www.yezismile.com/detail/446.html" target="_blank" title="中秋佳节，九十岁的奶奶盼儿归">中秋佳节，九十岁的奶奶盼儿归</a></li>
                    </ul>
    </div>
        <div class="links">
       <h3>友情链接</h3>
       <ul>
                   <li><a href="http://weibo.com/tzk826" target="_blank">叶子微博</a></li>
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
      <a id="gotop" href="javascript:void(0);" title="返回顶部" style="display: none;"></a> 
  </div>
</div>

<script type="text/javascript" src="./叶子个人博客 - 一个伪文艺女青年原创博客网站个人随笔_files/jquery-1.7.1.min.js.下载"></script>
<script type="text/javascript" src="./叶子个人博客 - 一个伪文艺女青年原创博客网站个人随笔_files/jquery.form.js.下载"></script>
<script type="text/javascript" src="./叶子个人博客 - 一个伪文艺女青年原创博客网站个人随笔_files/top.js.下载"></script>
<script type="text/javascript" src="./叶子个人博客 - 一个伪文艺女青年原创博客网站个人随笔_files/jquery.lazyload.js.下载"></script>