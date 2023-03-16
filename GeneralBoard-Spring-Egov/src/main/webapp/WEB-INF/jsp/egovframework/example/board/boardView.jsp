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
				<div class="top_navi"><a href="/board.do"><img src="/_img/cont/navi_arrow.png"></a><h2>자유게시판</h2></div>
			</div>
			<div class="bbs_view">
				<div class="view_top">
					<p class="tit">${result.title }</p>
					<%-- <div class="writer"> 
						<a href="#" class="photo">
							<span>
								<!-- 기본이미지 -->
								<img src="/_img/cont/photo_bg.png" style="background:url('/_img/cont/friend_bg2.png')no-repeat 50% 50% / cover" width="85">
								<!-- 이미지 예시 : 권장이미지 225 * 225-->
								<!-- <img src="/_img/cont/photo_bg.png" style="background:url('/_img/cont/ex_photo.jpg')no-repeat 50% 50% /cover" width="85"> -->
							</span>
						</a>
						<div class="info">
							<a href="#" class="name">${result.regId }</a>
							<p class="depart"><span>컴퓨터공학과</span><span>20학번</span></p>
							<p><span>${result.regId }</span><span>11:00</span><span>조회수 ${result.hit }</span></p>
						</div>
					</div> --%>
				</div>
				<div class="view_bottom">
					<div class="view_cont">
						${result.content }
					</div>
					<!-- <a href="#none" class="heart on">
						<span> 하트활성화 :a 태그에 class="on"를 넣어주세요
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z"/></svg>
						</span>
						이 게시물 추천<strong>1</strong>
					</a> -->
					<p class="btn nk_btn mt15">
						<a href="/board.do" class="bt_greenL">목록</a>
						<a href="/boardWrite.do?idx=${result.idx }" class="bt_gray02">수정</a>
						<a href="#" class="bt_grayL" onclick="layer_open('delPop','del_Pop')">삭제</a>
					</p>
				</div>
			</div>

			<%-- <div class="bbs_comment">
				<textarea rows="4" placeholder="댓글입력"></textarea>
				<p class="btn mt5"><a href="#">등록</a></p>
				<ul>
					<li>
						<div class="con">
							<p>테스트 댓글입니다.</p><p>좋아요 눌러주세요 ~~</p>
						</div>
						<div class="info">
							<p><span>닉네임</span><span>2022.05.20</span><span>11:00</span></p>
							<a href="#none" class="heart small on"><!-- 하트활성화 :a 태그에 class="on"를 넣어주세요 -->
								<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z"/></svg></span>
								좋아요<strong>1</strong>
							</a>
						</div>
					</li>
					<li>
						<div class="con">
							<p>테스트 댓글입니다.</p><p>좋아요 눌러주세요 ~~</p>
						</div>
						<div class="info">
							<p><span>닉네임</span><span>2022.05.20</span><span>11:00</span></p>
							<a href="#none" class="heart small"><!-- 하트활성화 : svg에 class="luv"를 넣어주세요 -->
								<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z"/></svg></span>
								좋아요<strong>0</strong>
							</a>
						</div>
					</li>
				</ul>
				<%@include file="../_inc/bottom_menu.jsp" %>
			</div> --%>
			<%@include file="../_inc/footer.jsp" %></div>
	<!-- CONTENTS END -->

	<!-- POPUP BEGIN -->
	<!-- 삭제 선택 시 노출 -->
	<div class="layer" id="del_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="delPop">
			<div class="pop_cont text">
				<p class="tit c">게시물 삭제</p>
				<p class="mb20 c">게시물 삭제 후 복구가 불가합니다.<br/>정말 삭제하시겠습니까?</p>
				<p class="two_btn btn"><a href="#" onclick="ajaxDelete(${result.idx});">확인</a><a href="#" class="bt_red cbtn">취소</a></p>
			</div> 
		</div>
	</div>

	<!-- 삭제 팝업 확인 선택 시 노출 -->
	<div class="layer" id="delok_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="delokPop">
			<div class="pop_cont text">
				<p class="tit c">게시물 삭제 완료</p>
				<p class="mb20 c">게시물이 삭제되었습니다.</p>
				<p class="btn"><a href="/board.do">확인</a></p>
			</div> 
		</div>
	</div>

	<!-- POPUP END -->

</div>
<!-- //wrap -->
<!-- layer_open('delokPop','delok_Pop') -->
</body>
<script>
function ajaxDelete(idx){
	$.ajax({
		type : 'post',
		url : '/board/delete.do',
		async : true,
		dataType : 'text',
		data : {
			"idx": idx
		},
		success : function(msg) {
			if(msg == "success"){
				layer_open('delokPop','delok_Pop')
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