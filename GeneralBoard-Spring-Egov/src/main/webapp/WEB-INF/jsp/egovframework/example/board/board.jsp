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
			<div class="tab">
				<ul>
					<li><a href="/board.do" class="on">자유게시판</a></li>
					<li><!-- <a href="#">주제별 게시판</a> --></li>
					<li><!-- <a href="#">학교 정보</a> --></li>
				</ul>
			</div>
			<div class="w_box no_line">
				<form id="frm" name="frm" method="POST" action="/board.do">
				<div class="search">
					<select id="searchCondition" name="searchCondition">
						<option <c:if test="${boardVO.searchCondition eq ''}">selected</c:if>>전체</option>
						<option value="title" <c:if test="${boardVO.searchCondition eq 'title'}">selected</c:if>>제목</option>
						<option value="content" <c:if test="${boardVO.searchCondition eq 'content'}">selected</c:if>>내용</option>
						<option value="regId" <c:if test="${boardVO.searchCondition eq 'regId'}">selected</c:if>>사용자</option>
					</select>
					<p class="input_box">
						<input type="text" placeholder="게시물 검색" id="searchKeyword" name="searchKeyword" value="${boardVO.searchKeyword}">
						<a href="#"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M500.3 443.7l-119.7-119.7c27.22-40.41 40.65-90.9 33.46-144.7C401.8 87.79 326.8 13.32 235.2 1.723C99.01-15.51-15.51 99.01 1.724 235.2c11.6 91.64 86.08 166.7 177.6 178.9c53.8 7.189 104.3-6.236 144.7-33.46l119.7 119.7c15.62 15.62 40.95 15.62 56.57 0C515.9 484.7 515.9 459.3 500.3 443.7zM79.1 208c0-70.58 57.42-128 128-128s128 57.42 128 128c0 70.58-57.42 128-128 128S79.1 278.6 79.1 208z"></path></svg></a>
					</p>
				</div>
				<div class="list_top">
					<p class="left sub_tab">
						<a href="#" class="btn_mini state on">모든 게시물</a> <!-- 해당 버튼에 클래스 on을 넣어주세요 -->
						<!-- <a href="#" class="btn_mini state">인기 게시물</a> -->			
					</p>
					<a href="/boardWrite.do" class="btn_mini bt_greenL">게시물 작성</a>
				</div>
				<ul class="best_list basic">
					<c:choose>
						<c:when test="${fn:length(resultList) > 0}">
							<c:forEach var="item" items="${resultList }">
							<li onclick="location.href='/boardView.do?idx=${item.idx}'">
								<div>
									<div>
										<p class="tit">${item.title}</p>
										<p class="con">${item.content}</p>
									</div>
									<p class="bottom">
										<!-- <span>${item.regId }</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z"/></svg>
											111
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M256 32C114.6 32 .0272 125.1 .0272 240c0 49.63 21.35 94.98 56.97 130.7c-12.5 50.37-54.27 95.27-54.77 95.77c-2.25 2.25-2.875 5.734-1.5 8.734C1.979 478.2 4.75 480 8 480c66.25 0 115.1-31.76 140.6-51.39C181.2 440.9 217.6 448 256 448c141.4 0 255.1-93.13 255.1-208S397.4 32 256 32z"/></svg>
											63
										</span> -->
										<span>${item.regDate }</span>
										<%-- <span>조회수 ${item.hit }</span> --%>
									</p>
								</div>
								<p class="img">
									<!-- <img alt="자유게시판" src="/_img/cont/best_bg.png" style="background: url('/_img/cont/best01.jpg')no-repeat 50% 50% / cover;"> -->
								</p>
							</li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<li class="nodata">등록된 게시글이 없습니다.</li>
						</c:otherwise>
					</c:choose>
				</ul>
				
				<p class="paging">
	        		<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
	        		<input type="hidden" id="pageIndex" name="pageIndex" value="${boardVO.pageIndex}" />
	        	</p>
				</form>

				<%@include file="../_inc/bottom_menu.jsp" %>
			</div>
			<%@include file="../_inc/footer.jsp" %>
			</div>
	<!-- CONTENTS END -->
	


</div>
<!-- //wrap -->

</body>
<script>
function fnSubmit(){
	document.frm.pageIndex.value = '1';
	document.frm.submit();
}
function fn_egov_link_page(pageNo){
	document.frm.pageIndex.value = pageNo;
   	document.frm.submit();
}
</script>
</html>