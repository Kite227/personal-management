<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html><head>
<title>blog_首页</title>
	<%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
<script type="text/javascript" src="${APP_PATH}/style/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${APP_PATH}/style/files/base.css">
<link href="${APP_PATH}/style/files/index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${APP_PATH}/style/files/jquery.classyleaves.min.css">
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
      <a href="https://www.yezismile.com/" title="首页" class="nav_first" id="topnav_current">首页</a>
            <a class="nav_4" href="https://www.yezismile.com/mood/index" title="心情随笔">心情随笔</a> 
            <a class="nav_3" href="https://www.yezismile.com/memory/index?tag=3" title="韶华追忆">韶华追忆</a> 
            <!--<a class="nav_12" href="https://www.yezismile.com/memory/index?tag=12" title="技术分享">技术分享</a> --> 
            <a class="nav_22" href="https://www.yezismile.com/archives/index" title="个人归档">个人归档</a> 
            <a class="nav_18" href="https://www.yezismile.com/book/index" title="书屋">书屋</a> 
           	<!--<a class="nav_16" href="https://www.yezismile.com/index/message" title="Blog留言">Blog留言</a> -->
            <a class="nav_1" href="https://www.yezismile.com/about/index" title="关于我">关于我</a> 
          </ul>
  </nav>
</header>
<link rel="stylesheet" href="${APP_PATH}/style/files/luara.top.css">
<style type="text/css">
    .blog_more{width:100%;text-align: center;background:#FFFBFO;}
    .blog_more a{font: 16px/40px "Microsoft YaHei";display:block;}
    .blog_more:hover,.global_more a:hover{ background:#fff;}
    .blog_more a i{ background-position:-189px  -621px; width: 11px; height: 12px; display: inline-block; margin-left: 10px;}
</style>
<article>
    <div class="l_box f_l">
       
        <div class="topnews">
            <h2>
                <b>最新</b>文章
            </h2>
                        <div class="blogs">
                <figure>
                    <a href="https://www.yezismile.com/detail/454.html" target="_blank">
                    <img src="./叶子个人博客 - 一个伪文艺女青年原创博客网站首页_files/201710091321426416_s.jpg" original="https://static.yezismile.com/data/photo/day_20171009/201710091321426416_s.jpg" style="width: 167.5px; height: 137px; display: block;">
                    </a>
                </figure>
                <ul>
                    <h3><a href="https://www.yezismile.com/detail/454.html" target="_blank">曾梦想仗剑走天涯，后来因为bug太多就没去</a></h3>
                    <p>
                        
	曾经梦想仗剑走天涯，可谁曾想，一入IT深似海，曾经梦想赴沧海。总是有写不完的程序，改不完的bug，扯不完的皮。产品一筹莫展的时候最喜欢拉着俺们程序员开会了，乱七八糟的需求理不清的思路，拉着我们扯一会儿皮，问题就迎刃而...
                        <a href="https://www.yezismile.com/detail/454.html" target="_blank" style="color: #759b08;padding-left:5px;">[详情]</a>
                    </p>
                    <p class="autor">
                        <span class="lm f_l"><a href="https://www.yezismile.com/memory/index?tag=3" style="color: #759b08">韶华追忆</a></span>
                        <span class="dtime f_l">2017-10-13  09:12:57</span>
                        <!-- <input class="zan_cookie" type="hidden" value="2">-->
                        <!--<input class="zan_newsid" type="hidden" value="454"> -->
                        <span class="viewnum f_r">浏览（29）</span>
                        <!--<span class="pingl f_r">
                            <a href="https://www.yezismile.com/detail/454.html#SOHUCS">
				               <span id="sourceId::454" class="cy_cmt_count">评论（0 )</span>
                            </a>
                        </span> -->
                    </p>
            </ul>
            </div>
                        <div class="blog_more"><a href="javascript:;" onclick="getShow(this)"><span>点击查看更多&gt;&gt;</span></a><i></i></div>
            <div class="blog_more" id="alreadyread" style="display:none"><a href="javascript:;" class="finish">
                <span>所有文章已加载完</span></a>
            </div>
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
        <div class="tit01">
        <h3>关注我</h3>
        <div class="gzwm">
            <ul>
                <li><a class="xlwb" href="http://weibo.com/tzk826" target="_blank">新浪微博</a></li>
                <li><a class="txwb" href="http://t.qq.com/tianzhukui2010" target="_blank">腾讯微博</a></li>
                <li><a class="wx" href="mailto:tianzhukui@126.com">邮箱</a></li>
                <li><a class="feedback" href="https://www.yezismile.com/#">意见反馈</a></li>
            </ul>
        </div>
    </div>
        <div class="tit01">
        <h3>最新文章</h3>
        <ul class="smile_rank" style="">
                        <li><a href="https://www.yezismile.com/detail/451.html" target="_blank">php面试题总结（一）</a></li>
                        <li><a href="https://www.yezismile.com/detail/450.html" target="_blank">戳开真相的我，眼泪掉下来</a></li>
                        <li><a href="https://www.yezismile.com/detail/449.html" target="_blank">其实我是个假程序员</a></li>
                        <li><a href="https://www.yezismile.com/detail/448.html" target="_blank">中秋之夜，俺哥醉酒祝大家过年好</a></li>
                        <li><a href="https://www.yezismile.com/detail/447.html" target="_blank">扒苞米棒子之感受</a></li>
                        <li><a href="https://www.yezismile.com/detail/446.html" target="_blank">中秋佳节，九十岁的奶奶盼儿归</a></li>
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
      <a id="gotop" href="javascript:void(0);" title="返回顶部" style="display: block;"></a> 
  </div>
  
</div>

<script type="text/javascript">
$(function() {
	to_page(1)
});

function to_page(pn) {
	$.ajax({
		url:"${APP_PATH}/blog/page_info",
		data:"pn=" + pn,
		type:"GET",
		success:function(result) {
			
		}
	});
}
</script>
</body>
</html>