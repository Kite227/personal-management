<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file ="./common/common.jsp"%>
<c:set var= "Name" value="技术分享"/>
<!DOCTYPE html>
<html>
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
      <a class="nav_3" href="${ctx }/blog/list.do?pn=1&typeId=1" title="韶华追忆">韶华追忆</a> 
      <a class="nav_12" href="${ctx }/blog/list.do?pn=1&typeId=2" title="技术分享" id="topnav_current">技术分享</a>
      <!-- <a class="nav_22" href="" title="个人归档">个人归档</a> --> 
      <a class="nav_16" href="${ctx }/file/list.do" title="文件下载">文件下载</a>
      <a class="nav_1" href="" title="关于我">关于我</a> 
   	</ul>
  </nav>
</header>

<article>
  <div class="l_box f_l">
    <!-- banner -->
    <div class="topnews">
        <h2>
           	<span>
              <a href="${ctx }/blog/index.do" target="_blank">返回首页&gt;&gt;</a>
           	</span>
        	<b>韶华</b>追忆        
        </h2>
        <c:forEach items="${blogsInfo.list }" var="blog_recall">
         <div class="blogs">
                <figure>
                    <a href="${ctx }/blog/content.do?id=${blog_recall.id}" target="_blank">
                    <img src="${ctx }/${blog_recall.cover }" style="width: 167.5px; height: 137px; display: block;">
                    </a>
                </figure>
                <ul>
                    <h3>
                    	<a href="${ctx }/blog/content.do?id=${blog_recall.id}" target="_blank">${blog_recall.title }</a>
                    </h3>
                    <p>${blog_recall.description }
                        <a href="${ctx }/blog/content.do?id=${blog_recall.id}" target="_blank" style="color: #759b08;padding-left:5px;">[详情]</a>
                    </p>
                    <p class="autor">
                        <span class="lm f_l"><a href="${ctx }/blog/list.do?pn=1&typeId=2" style="color: #759b08">技术分享</a></span>
                        <span class="dtime f_l">${blog_recall.dateString }</span>
                        <input class="zan_cookie" type="hidden" value="2">
                        <input class="zan_newsid" type="hidden" value="">
                       <!--<span class="label_bottom f_r" style="padding-left: 0;">
                            <a href="javascript:void(0)" onclick="return false;" class="yz_zan" style="">1</a>
                        </span> --> 
                        <span class="viewnum f_r">浏览（${blog_recall.view }）</span>
                    </p>
            	</ul>
          	</div>
      </c:forEach>
      	<div class="pagelist">
      		<div class="pages" style="text-align:center;">
		  		<!--分页条信息-->
           	  	<div class="col-md-12">
					 <ul class="pagination">
			 			<li><a href="${ctx }/blog/list.do?pn=1&typeId=2">首页</a></li>
			 			<c:if test="${blogsInfo.hasPreviousPage}">
			 			<li><a href="${ctx }/blog/list.do?pn=${blogsInfo.pageNum-1}&typeId=2">&laquo;</a></li>
			 			</c:if>
			  			<c:forEach items="${blogsInfo.navigatepageNums}" var="page_Num">
			  		 	<c:if test="${page_Num == blogsInfo.pageNum }">  <!-- 页码如果等于当前页码则高亮显示 -->
			  		  	<li class="active"><a href="#">${page_Num}</a></li>
			  		 	</c:if>	    
				   		<c:if test ="${page_Num !=blogsInfo.pageNum}">
				   		<li><a href="${ctx }/blog/list.do?pn=${page_Num}&typeId=2">${page_Num}</a></li>  <!-- 显示下一页 -->
				   		</c:if>
					 	</c:forEach>
					 	<c:if test="${blogsInfo.hasNextPage}">		 
				   		<li><a href="${ctx }/blog/list.do?pn=${blogsInfo.pageNum+1}&typeId=2">&raquo;</a></li>
				   		</c:if>
				    	<li><a href="${ctx }/blog/list.do?pn=${blogsInfo.pages}&typeId=2">末页</a></li>    
				   </ul> 
			   </div>         	
			</div>
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
        	<c:forEach items="${allBlogsInfo.list }" var="blog_article">
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
</article>

<div class="blank"></div>
<div id="copright">
   <div id="tbox"> 
      <a id="gotop" href="javascript:void(0);" title="返回顶部"></a> 
  </div>
</div>

</body>
</html>