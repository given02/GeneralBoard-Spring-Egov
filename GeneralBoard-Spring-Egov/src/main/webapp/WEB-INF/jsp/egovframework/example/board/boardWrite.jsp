<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="../_inc/title.jsp" %>
</head>
<body>

	<div id="wrap">
	<!-- HEADER BEGIN -->
		<header class="sub">
			<%@include file="../_inc/header.jsp" %>
		</header>
	<!-- HEADER END -->

	<!-- CONTENTS BEGIN -->
		<div id="sub_contents" class="board head_mg mb140">
			<div class="navi">
				<div class="top_navi"><a href="/board.do"><img src="/_img/cont/navi_arrow.png"></a><h2>게시물 작성</h2></div>
			</div>
			<div class="bbs_write w_box top no_line">
				<p class="path mb10">자유게시판</p>
				<form id="frm">
					<input type="hidden" id="idx" name="idx" value="${result.idx }" />
					<input type="text" id="title" name="title" value="${result.title }" placeholder="게시물 제목 입력" class="mb10"/>
					<textarea rows="10" id="content" name="content" placeholder="게시물 내용 입력">${result.content }</textarea>
					
					<!-- <div class="add_photo">
						<a href="javascript:fileUpload()" class="add">
							<span class="icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M194.6 32H317.4C338.1 32 356.4 45.22 362.9 64.82L373.3 96H448C483.3 96 512 124.7 512 160V416C512 451.3 483.3 480 448 480H64C28.65 480 0 451.3 0 416V160C0 124.7 28.65 96 64 96H138.7L149.1 64.82C155.6 45.22 173.9 32 194.6 32H194.6zM256 384C309 384 352 341 352 288C352 234.1 309 192 256 192C202.1 192 160 234.1 160 288C160 341 202.1 384 256 384z"/></svg></span>
							<span class="count"><b>1</b> /10</span>
						</a>
						<ul>
							<li>
								<span><img src="/_img/cont/photo_thum.png" width="65" height="65" style="background:url('/_img/cont/best03.jpg')no-repeat 50% 50% / cover"></span>
								<a href="#" class="close"></a>
							</li>
						</ul>
					</div> -->
					<p class="btn mt10"><a href="javascript:fnSubmit()">작성완료</a></p>
				</form>
			
			<%@include file="../_inc/bottom_menu.jsp" %>
			</div>
			<%@include file="../_inc/footer.jsp" %>
			</div>
	<!-- CONTENTS END -->

	<!-- POPUP BEGIN -->
	<!-- 작성완료 선택 시 노출 -->
	<div class="layer" id="ok_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="okPop">
			<div class="pop_cont text">
				<p class="tit c">게시물 작성 완료</p>
				<p class="mb20 c">게시물이 등록되었습니다.</p>
				<p class="btn"><a href="/board.do">확인</a></p>
			</div> 
		</div>
	</div>
	<!-- POPUP END -->

</div>
<!-- //wrap -->

</body>
<script>
function fnSubmit(){
	if($("#title").val() == ""){
		alert("제목을 입력하세요.");
		return;
	}
	
	if($("#content").val() == ""){
		alert("내용을 입력하세요.");
		return;
	}
	ajaxSubmit();
}

function ajaxSubmit(){
	var formData = $("#frm").serialize();

	$.ajax({
		type : 'post',
		url : '/board/regist.do',
		async : true,
		dataType : 'text',
		data : formData,
		success : function(msg) {
			if(msg == "success"){
				layer_open("ok_Pop", "okPop");
			} else {
				alert("실패. 잠시 후 다시 시도 해 주세요.");
			}
		},
		error : function(cd, status) {
			
		}
	})
}
</script>
</html>


