<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file ="./common/common.jsp"%>
<c:set var= "Name" value="Blog_首页"/>
<c:set var="Keyword" value="blog"/>
<c:set var="Descripte" value="kite的个人博客"/>

<!DOCTYPE html>
<html>
<head>
<%@include file="./common/head.jsp" %>
</head>

<body>

<%@include file="./common/top.jsp" %>
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
                    <a href="${ctx }/blog/content.do?id=${blog_article.id}" target="_blank">
                    <img src="${ctx }/${blog_article.cover }" style="width: 167.5px; height: 137px; display: block;">
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
                        	<span class="lm f_l"><a href="${ctx }/blog/list.do?pn=1&typeId=1" style="color: #759b08">韶华追忆</a></span>
                        </c:if>
                        <c:if test="${blog_article.typeId == 2}">
                        	<span class="lm f_l"><a href="${ctx }/blog/list.do?pn=1&typeId=2" style="color: #759b08">技术分享</a></span>
                        </c:if>
                        <span class="dtime f_l">${blog_article.dateString }</span>
                        <input class="zan_cookie" type="hidden" value="2">
                        <input class="zan_newsid" type="hidden" value="${blog_article.id }">
                       <!-- <span class="label_bottom f_r" style="padding-left: 0;">
                            <a href="javascript:void(0)" onclick="return false;" class="yz_zan" style="">1</a>
                        </span> -->
                        <span class="viewnum f_r">浏览（${blog_article.view }）</span>
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
           	</div>
        </div>
    </div>

</article>
<!--right start-->
<div class="r_box f_r">
        <div class="tit01">
        <h3>关注我</h3>
        <div class="gzwm">
            <ul>
                <li><a class="xlwb" href="" target="_blank">新浪微博</a></li>
                <li><a class="txwb" href="" target="_blank">腾讯微博</a></li>
                <li><a class="wx" href="1208654340@qq.com">邮箱</a></li>
                <li><a class="feedback" href="">意见反馈</a></li>
            </ul>
        </div>
    </div>
        <div class="tit01">
        <h3>最新文章</h3>
        <ul class="smile_rank" style="">
        	<c:forEach items="${pageInfo.list }" var = "blog_article">
            	<li><a href="${ctx }/blog/content.do?id=${blog_article.id}" target="_blank">${blog_article.title }</a></li>
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
    
</script>
</body>
</html>