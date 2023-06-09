<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="../_inc/title.jsp" %>
</head>
<body>

	<div id="wrap">
	<!-- HEADER BEGIN -->
		<div class="navi">
			<div class="top_navi"><a href="#"><img src="/_img/cont/navi_arrow.png"></a><h2>이메일 인증</h2></div>
			<ul>
				<li>사용자 약관동의</li>
				<li  class="on">이메일 인증</li>
				<li>회원정보 입력</li>
				<li>가입완료</li>
			</ul>
		</div>
	<!-- HEADER END -->

	<!-- CONTENTS BEGIN -->
		<div id="contents">
			<div class="login email">
				<div class="input_box">
					<p class="email">
						<input type="text" placeholder="이메일 입력">
						<span>@</span>
						<input type="text" value="kku.ac.kr" disabled>
					</p>
					<input type="text" placeholder="6자리 인증번호 입력">
				</div>
				<p class="btn">
					<a href="#" onclick="layer_open('sendPop','send_Pop')" class="line">인증번호 발송</a>
					<a href="#" onclick="layer_open('confirmPop','confirm_Pop')">회원 정보 입력하러 가기</a>
				</p>
			</div>
			<div class="guide">
				<p class="mb10">정확한 정보를 입력했으나 인증 번호가 수신되지 않는다면 아래 내용을 참고 해주시길 바랍니다.</p>
				<ol>
					<li>1. 발송된 메일이 스팸 메일함에 있는지 확인해 주세요.<li>
					<li>2. KuKuTeam에서 발송한 이메일 주소가 수신 차단되었는지 확인해 주세요. (<a href="mailto:﻿"KuKuTeam_noreply@gmail.com" >KuKuTeam_noreply@gmail.com</a>)<li>
					<li>3. 위 두가지가 아닐시 일시적 장애 일수도 있습니다.<li>
				</ol>
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
				<p class="mb20 c">이메일 입력을 확인해주세요</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>  -->

			<!-- 02. 인증번호 발송 시 -->
			<div class="pop_cont text">
				<p class="mb20 c">입력하신 이메일로 인증번호를 발송했습니다.<br/>인증번호가 오지 않으면 입력하신 정보가<br/>정확한지 확인해 주세요.</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>

		</div>
	</div>
	
	<!-- 회원 정보 입력하러 가기 선택 시 노출 -->
	<div class="layer" id="confirm_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="confirmPop">
			
			<!-- 01.인증번호가 틀렸을 시 노출 -->
			<!-- <div class="pop_cont text">
				<p class="mb20 c">인증번호가 다릅니다.<br/></p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>  -->

			<!-- 02. 인증번호 확인 시 노출 -->
			<div class="pop_cont text">
				<p class="mb20 c">인증번호가 맞습니다!<br/>회원정보 입력페이지로 이동합니다.</p>
				<p class="btn"><a href="join03.html">확인</a></p>
			</div>

		</div>
	</div>
	<!-- POPUP END -->



</div>

</body>
</html>