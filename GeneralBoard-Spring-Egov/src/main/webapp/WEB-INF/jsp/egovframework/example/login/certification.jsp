<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="../_inc/title.jsp" %>
</head>
<body>

	<div id="wrap">
	<!-- HEADER BEGIN -->
		<div class="navi">
			<div class="top_navi"><a href="#"><img src="/_img/cont/navi_arrow.png"></a><h2>본인 인증</h2></div>
			<ul>
				<li class="on">본인 인증</li>
				<li>비밀번호 재설정</li>
			</ul>
		</div>
	<!-- HEADER END -->

	<!-- CONTENTS BEGIN -->
		<div id="contents">
			<div class="login self">
				<div class="input_box">
					<p>
						<input type="text" placeholder="이메일 입력해주세요">
						<input type="text" placeholder="인증번호 6자리 숫자 입력">
					</p>
				</div>
				<p class="btn">
					<a href="#" class="line" onclick="layer_open('sendPop','send_Pop')">인증번호 발송</a>
					<a href="#" onclick="layer_open('confirmPop','confirm_Pop')">인증확인</a>
				</p>
			</div>
		</div>
	
	<!-- CONTENTS END -->
	
	<!-- POPUP BEGIN -->
	<!-- 인증번호 발송 선택 시 노출 -->
	<div class="layer" id="send_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="sendPop">
			
			<!-- 01.이메일이 틀렸을 시 노출 -->
			<!-- <div class="pop_cont text">
				<p class="mb20 c">이메일을 확인해주세요</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>  -->

			<!-- 02. 인증번호 발송 시 -->
			<div class="pop_cont text">
				<p class="mb20 c">이메일로 인증번호를 발송했습니다.<br/>인증번호가 오지 않으면 입력하신 정보가<br/>회원정보와 일치하는지 확인해 주세요.</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>

		</div>
	</div>
	
	<!-- 인증확인 선택 시 노출 -->
	<div class="layer" id="confirm_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="confirmPop">
			
			<!-- 01.인증번호가 틀렸을 시 노출 -->
			<!-- <div class="pop_cont text">
				<p class="mb20 c">인증번호가 정확하지 않습니다.</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>  -->

			<!-- 02. 인증번호 확인 시 노출 -->
			<div class="pop_cont text">
				<p class="mb20 c">인증번호가 정확합니다.</p>
				<p class="btn"><a href="reset_pw.html">확인</a></p>
			</div>

		</div>
	</div>
	<!-- POPUP END -->



</div>

</body>
</html>