<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><head><!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>blog_个人归档</title>
	<%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
<!--<link href="https://www.yezismile.com/favicon.ico" rel="shortcut icon">-->
<script type="text/javascript" src="${APP_PATH}/style/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${APP_PATH}/style/files/base.css">
<link href="${APP_PATH}/style/files/index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${APP_PATH}/style/files/jquery.classyleaves.min.css">
<!--<noscript>&lt;iframe src="*.html"&gt;&lt;/iframe&gt;</noscript>-->
</head>
<body>
<header>
  <div class="topbg">
    <ul class="topnav">
      <a href="http://www.yezismile.com/ " target="_blank">Home</a>
      <a href="/about/index" target="_blank">关于我们</a>
    </ul>
  </div>
  <div class="topbgline"></div>
  <div class="logo"></div>
  <nav id="topnav">
    <ul>
      <a href="/" title="首页" class="nav_first">首页</a>
            <a class="nav_4" href="/mood/index" title="心情随笔">心情随笔</a> 
            <a class="nav_3" href="/memory/index?tag=3" title="韶华追忆">韶华追忆</a> 
            <a class="nav_12" href="/memory/index?tag=12" title="技术分享">技术分享</a> 
            <a class="nav_22" href="/archives/index" title="个人归档" id="topnav_current">个人归档</a> 
            <a class="nav_18" href="/book/index" title="书屋">书屋</a> 
            <a class="nav_16" href="/index/message" title="Blog留言">Blog留言</a> 
            <a class="nav_1" href="/about/index" title="关于我">关于我</a> 
          </ul>
  </nav>
</header>
<link rel="stylesheet" href="https://static.yezismile.com/sun/css/archives.css?v=2.3">
<article>
  <div class="l_box f_l">
    <!-- banner -->
    <div class="topnews">
        <div class="box">
            <ul class="event_year">
               <li class="current">
               	<label for="2017">2017</label>
               </li>

               <li><label for="2016">2016</label></li>

               <li><label for="2015">2015</label></li>

               <li><label for="2014">2014</label></li>

               <li><label for="2013">2013</label></li>
                
             </ul>
            <ul class="event_list">
                                <div>
                    <h3 id="2017">2017</h3>
                                                            <li>
                        <span>10-14</span>
                        <p>
                            <span>
                                <a href="https://www.yezismile.com/detail/455.html" target="_blank" title="不要把自己的苦难看得过于独特">不要把自己的苦难看得过于独特</a>
                            </span>
                        </p>
                    </li>
                                  
					</ul>
				</div>
            <div class="clearfix">
			
			</div>

        </div>

    </div>
  
</article>
<div class="blank"></div>
<div id="copright">
   <div id="tbox"> 
      <a id="gotop" href="javascript:void(0);" title="返回顶部" style="display: none;"></a> 
  </div>
  <div>
      <p>Copyright ? 2017
          <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000188223'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000188223%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1000188223"><a href="http://www.cnzz.com/stat/website.php?web_id=1000188223" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="https://icon.cnzz.com/img/pic.gif"></a></span><script src=" https://s22.cnzz.com/z_stat.php?id=1000188223&amp;show=pic" type="text/javascript"></script><script src="https://c.cnzz.com/core.php?web_id=1000188223&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script>
          <br>
      www.yezismile.com All rights reserved. 京ICP备15029736号-1</p>
  </div>
</div>


<script type="text/javascript" src="https://static.yezismile.com/admin/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="https://static.yezismile.com/admin/js/jquery.form.js"></script>
<script type="text/javascript" src="https://static.yezismile.com/sun/js/top.js"></script>
<script type="text/javascript" src="https://static.yezismile.com/sun/js/jquery.lazyload.js"></script>
</body>
</html>