<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file ="./common/common.jsp"%>
<c:set var= "Name" value="文件下载"/>

<!DOCTYPE html>
<html>
<head>
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
      <a class="nav_4" href="${ctx }/essay/blog_essay.do" title="心情随笔" >心情随笔</a> 
      <a class="nav_3" href="${ctx }/blog/list.do?pn=1&typeId=1" title="韶华追忆">韶华追忆</a> 
      <a class="nav_12" href="${ctx }/blog/list.do?pn=1&typeId=2" title="技术分享">技术分享</a>
      <!-- <a class="nav_22" href="" title="个人归档">个人归档</a> --> 
      <a class="nav_16" href="${ctx }/file/list.do" title="文件下载" id="topnav_current">文件下载</a>
      <a class="nav_1" href="" title="关于我">关于我</a> 
   	</ul>
  </nav>
</header>
<link href="${ctx}/style/files/timeline.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${ctx }/style/files/view.css">
<article>
<div class="l_box f_l">
     <div class="topnews">
      	<h2>
        	<span>
          		<a href="${ctx}/blog/index.do" target="_blank">返回首页&gt;&gt;</a>
         	</span>
         	<b>文件</b>下载
      	</h2>
      	<c:forEach items="${pageInfo.list }" var="blog_file">
	        <div class="blogs">
	        	<span class="news_title">
	        		${blog_file.filename }
	        	</span>
	        	<p>${blog_file.description }</p>
	        	<p class="autor">
	                <span class="viewnum f_r" style="background: url(${ctx}/style/images/download.png) no-repeat;" >
	                <a href="${ctx }/file_handle/download.do?uuid=${blog_file.uuid}&filename=${blog_file.filename}" >点击下载</a>
	                </span>
                </p>
	      	</div>
		</c:forEach>
  	</div>
</div>

<!--right start-->
<div class="r_box f_r">
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="">上传文件</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">上传文件</h4>
            </div>
            <form action="${ctx }/file_handle/upload.do" enctype="multipart/form-data" method="post">
            <div class="modal-body">
                 <table>
		            <tr>
		                <td>请选择文件:</td>
		                <td>
		                	<input id ="lefile" type="file" name="file" style="display:none">
		                	<div class="input-append">
								<input id="fileCover" class="form-control" type="text" style="display:inline-block;width:180px">
								<a class="btn btn-success" onclick="$('input[id=lefile]').click();" style="float:right">浏览</a>
							</div>
		                </td>
		            </tr>
		            <tr>
		                <td>文件描述:</td>
		                <td>
			                <!--<input  class="form-control" rows="5" type="text" name="description">-->
			                <textarea class="form-control" rows="5" type="text" name="description" style=""></textarea>
		                </td>
		            </tr>
		            <tr>
		                <td><input class="btn btn-primary" type="submit" value="上传"></td>
		            </tr>
		        </table>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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

<script type="text/javascript" src="${ctx }/style/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript">
	$('input[id=lefile]').change(function() {
	$('#fileCover').val($(this).val());
	});
</script>
</body>
</html>