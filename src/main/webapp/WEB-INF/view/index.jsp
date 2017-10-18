<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file ="./common/common.jsp"%>
<c:set var= "Name" value="Blog_首页"/>
<c:set var="Keyword" value="blog"/>
<c:set var="Descripte" value="kite的个人博客"/>

<!DOCTYPE html>
<html><head>
<title>blog_首页</title>
<script type="text/javascript" src="${ctx}/style/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/style/files/base.css">
<link href="${ctx}/style/files/index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${ctx}/style/files/jquery.classyleaves.min.css">
<link  rel="stylesheet" href="${ctx}/style/bootstrap/bootstrap.min.css">
<script type="text/javascript" src="${ctx}/style/bootstrap/bootstrap/bootstrap.min.js"></script> 
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
      <a href="${ctx}/blog/index.do" title="首页" class="nav_first" id="topnav_current">首页</a>
      <a class="nav_4" href="${ctx }/essay/blog_essay.do" title="心情随笔">心情随笔</a> 
      <a class="nav_3" href="https://www.yezismile.com/memory/index?tag=3" title="韶华追忆">韶华追忆</a> 
      <!--<a class="nav_12" href="https://www.yezismile.com/memory/index?tag=12" title="技术分享">技术分享</a> --> 
      <a class="nav_22" href="https://www.yezismile.com/archives/index" title="个人归档">个人归档</a> 
      <a class="nav_18" href="https://www.yezismile.com/book/index" title="书屋">书屋</a> 
      <!--<a class="nav_16" href="https://www.yezismile.com/index/message" title="Blog留言">Blog留言</a> -->
      <a class="nav_1" href="https://www.yezismile.com/about/index" title="关于我">关于我</a> 
   	</ul>
  </nav>
</header>
<link rel="stylesheet" href="${ctx}/style/files/luara.top.css">
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
          <c:forEach items="${pageInfo.list}" var="blog_article">
              <div class="blogs">
                <figure>
                    <a href="https://www.yezismile.com/detail/454.html" target="_blank">
                    <img src="${blog_article.cover }" original="https://static.yezismile.com/data/photo/day_20171009/201710091321426416_s.jpg" style="width: 167.5px; height: 137px; display: block;">
                    </a>
                </figure>
                <ul>
                    <h3>
                    	<a href="${ctx }/blog/content.do?id=${blog_article.id}" target="_blank">${blog_article.title }</a>
                    </h3>
                    <p>${blog_article.description }
                        <a href="${ctx }/blog/content.do?id=${blog_article.id}" target="_blank" style="color: #759b08;padding-left:5px;">[详情]</a>
                    </p>
                    <p class="autor">
                    	<c:if test="${blog_article.typeId == 1}">
                        	<span class="lm f_l"><a href="https://www.yezismile.com/memory/index?tag=3" style="color: #759b08">韶华追忆</a></span>
                        </c:if>
                        <c:if test="${blog_article.typeId == 2}">
                        	<span class="lm f_l"><a href="https://www.yezismile.com/memory/index?tag=3" style="color: #759b08">韶华追忆</a></span>
                        </c:if>
                        <span class="dtime f_l">${blog_article.dateString }</span>
                        <input class="zan_cookie" type="hidden" value="2">
                        <input class="zan_newsid" type="hidden" value="${blog_article.id }">
                       <!--<span class="label_bottom f_r" style="padding-left: 0;">
                            <a href="javascript:void(0)" onclick="return false;" class="yz_zan" style="">1</a>
                        </span> --> 
                        <span class="viewnum f_r">浏览（${blog_article.view }）</span>
                        <!--<span class="pingl f_r">
                            <a href="https://www.yezismile.com/detail/454.html#SOHUCS">
				               <span id="sourceId::454" class="cy_cmt_count">评论（0 )</span>
                            </a>
                        </span> -->
                    </p>
            	</ul>
          	</div>
          </c:forEach>
           		<div class="blog_more">
	           <!--分页信息-->
			  	<!-- <div class="row"> -->
			 	<!--分页条信息-->
           	  	<div class="col-md-12">
					 <ul class="pagination">
			 			<li><a href="${ctx}/blog/index.do?pn=1">首页</a></li>
			 			<c:if test="${pageInfo.hasPreviousPage}">
			 			<li><a href="${ctx}/blog/index.do?pn=${pageInfo.pageNum-1}">&laquo;</a></li>
			 			</c:if>
			  			<c:forEach items="${pageInfo.navigatepageNums}" var="page_Num">
			  		 	<c:if test="${page_Num == pageInfo.pageNum }">  <!-- 页码如果等于当前页码则高亮显示 -->
			  		  	<li class="active"><a href="#">${page_Num}</a></li>
			  		 	</c:if>	    
				   		<c:if test ="${page_Num !=pageInfo.pageNum}">
				   		<li><a href="${ctx}/blog/index.do?pn=${page_Num}">${page_Num}</a></li>  <!-- 显示下一页 -->
				   		</c:if>
					 	</c:forEach>
					 	<c:if test="${pageInfo.hasNextPage}">		 
				   		<li><a href="${ctx}/blog/index.do?pn=${pageInfo.pageNum+1}">&raquo;</a></li>
				   		</c:if>
				    	<li><a href="${ctx}/blog/index.do?pn=${pageInfo.pages}">末页</a></li>    
				   </ul> 
			   </div>          	
           	<!-- </div> -->
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

</article>
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

$(document).ready(function(){
	/*返回顶部*/
    $("#gotop").click(function(e){
		$('body,html').animate({scrollTop:0},1000);
	})
	$(window).scroll(function(e){
    	if ($(window).scrollTop() > 100 ) {
    		$("#gotop").fadeIn(1000)
    	}else{
    		$("#gotop").fadeOut(1000)
    	}

    })
    
    
	$(".yz_zan").bind('click',function(){
		var obj = $(this);
		var newsid = parseInt(obj.parent().prevAll(".zan_newsid").val());
		var Num = parseInt(obj.text());
		obj.css({cursor:"default"});
		$.ajax({
			type:"post",
			url:'/index/zan',
			data:"num="+Num+"&id="+newsid,
			dataType:"json",
			success:function(data){
				if(data.isZan == 1){
					obj.text(data.num);
					obj.css({ backgroundPosition: "-47px -327px", color: "#406ca9", textDecoration: "none", cursor: "default"});
					obj.after("<em>+1</em>");
					$("em").fadeOut('slow');
				}else{
					obj.css({cursor:"default"});
					obj.removeAttr('href');return false;
				}
			}

		})
	})
</script>
</body>
</html>