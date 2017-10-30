<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
      <a href="${ctx}/blog/index.do" title="首页" class="nav_first" id="topnav_current">首页</a>
      <a class="nav_4" href="${ctx }/essay/blog_essay.do" title="心情随笔">心情随笔</a> 
      <a class="nav_3" href="${ctx }/blog/list.do?pn=1&typeId=1" title="韶华追忆">韶华追忆</a> 
      <a class="nav_12" href="${ctx }/blog/list.do?pn=1&typeId=2" title="技术分享">技术分享</a>
      <!-- <a class="nav_22" href="" title="个人归档">个人归档</a> --> 
      <a class="nav_16" href="${ctx }/file/list.do" title="文件下载">文件下载</a>
      <a class="nav_1" href="https://www.yezismile.com/about/index" title="关于我">关于我</a> 
   	</ul>
  </nav>
</header>