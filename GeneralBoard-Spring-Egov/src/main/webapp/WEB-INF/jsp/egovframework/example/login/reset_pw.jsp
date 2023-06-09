<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="../_inc/title.jsp" %>
</head>
<body>

	<div id="wrap">
	<!-- HEADER BEGIN -->
		<div class="navi">
			<div class="top_navi"><a href="#"><img src="/_img/cont/navi_arrow.png"></a><h2>비밀번호 재설정</h2></div>
			<ul>
				<li>본인 인증</li>
				<li class="on">비밀번호 재설정</li>
			</ul>
		</div>
	<!-- HEADER END -->

	<!-- CONTENTS BEGIN -->
		<div id="contents">
			<div class="login self">
				<div class="input_box">
					<p>
						<input type="password" placeholder="새 비밀번호">
						<input type="password" placeholder="새 비밀번호 확인">
					</p>
				</div>
				<p class="btn">
					<a href="#" onclick="layer_open('confirmPop','confirm_Pop')">비밀번호 변경하기</a>
				</p>
			</div>
		</div>
	
	<!-- CONTENTS END -->
	
	<!-- POPUP BEGIN -->

	<!-- 비밀번호 변경하기 선택 시 노출 -->
	<div class="layer" id="confirm_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="confirmPop">
			
			<!-- 01.비밀번호 틀렸을 시 노출 -->
			<!-- <div class="pop_cont text">
				<p class="mb20 c">비밀번호가 다릅니다.</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>  -->

			<!-- 02. 비밀번호 변경 시 -->
			<div class="pop_cont text">
				<p class="mb20 c">비밀번호가 성공적으로<br/>변경되었습니다.</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>

		</div>
	</div>
	
	<!-- POPUP END -->



</div>

</body>
</html>