	var predomain=jQuery(".l_box").attr("predomain");
	$(".yz_zan").click(function(){
		var obj = $(this);
		var newsid = parseInt(obj.parent().prevAll(".zan_newsid").val());
		var Num = parseInt(obj.text());
		obj.css({cursor:"default"});
		$.ajax({
			type:"post",
			url:predomain+"/index/prove.do",
			data:{
				id:$(".zan_newsid").val()
			},
			dataType:"json",
			success:function(data){
				if(data.isZan == 1){
					obj.text($(".zan_newsid").val+data.isZan);
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