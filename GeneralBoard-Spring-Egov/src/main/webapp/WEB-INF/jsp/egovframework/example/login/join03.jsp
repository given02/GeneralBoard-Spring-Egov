<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="../_inc/title.jsp" %>

<script>
//비밀번호 보이기
$(document).ready(function(){
	$('.password i').on('click' ,function(){
		$(this).parent().toggleClass('active');
		if($('.password').hasClass('active')){
			$(this).siblings('input').attr('type','text');
		}else{
			$(this).siblings('input').attr('type','password');
		}
	});

});
</script>

</head>
<body>

	<div id="wrap">
	<!-- HEADER BEGIN -->
		<div class="navi">
			<div class="top_navi"><a href="#"><img src="/_img/cont/navi_arrow.png"></a><h2>회원정보 입력</h2></div>
			<ul>
				<li>사용자 약관동의</li>
				<li>이메일 인증</li>
				<li class="on">회원정보 입력</li>
				<li>가입완료</li>
			</ul>
		</div>
	<!-- HEADER END -->

	<!-- CONTENTS BEGIN -->
		<div id="contents">
			<ul class="form">
				<li>
					<p class="input_t">EMail</p>
					<input type="text" id="email" value="GyTKim@kku.ac.kr" disabled/>
				</li>
				<li>
					<p class="input_t">닉네임<span class="star">*</span></p>
					<p class="overflow"><input type="text" id="name" placeholder="닉네임을 입력해주세요."/><a href="#" class="btn" onclick="layer_open('confirmPop','confirm_Pop')">중복확인</a></p>
					<p class="tip">* 닉네임 변경은 60일 이후에 가능합니다</p>
				</li>
				<li>
					<p class="input_t">비밀번호<span class="star">*</span></p>
					<p class="password">
						<input type="password" id="pw" placeholder="비밀번호를 입력해주세요."/>
						<i class="fas eyes">보이기</i>
					</p>
				</li>
				<li>
					<p class="input_t">비밀번호 확인<span class="star">*</span></p>
					<div class="input_box">
						<p class="password">
							<input type="password" id="pw" placeholder="비밀번호를 입력해주세요."/>
							<i class="fas eyes">보이기</i>
						</p>
						<p class="feedback Y"><span>!</span>사용 가능합니다.</p>
						<!-- <p class="feedback N"><span>!</span>사용 불가능합니다.</p> -->
					</div>
				</li>
				<li>
					<p class="input_t">이름 입력<span class="star">*</span></p>
					<input type="text" id="name" placeholder="이름을 입력해주세요."/>
				</li>
				<li>
					<p class="input_t">학번 입력<span class="star">*</span></p>
					<input type="text" id="id" placeholder="학번을 입력해주세요."/>
				</li>
				<li>
					<p class="input_t">내 단과대 선택하기<span class="star">*</span></p>
					<select>
						<option>디자인 대학</option>
						<option>인문사회융합대학</option>
						<option>과학기술대학</option>
						<option>의료생명대학</option>
						<option>의과대학</option>
						<option>교양대학</option>
						<option>힐링바이오공유대학</option>
					</select>
				</li>
				<li>
					<p class="input_t">내 학과 선택하기<span class="star">*</span></p>
					<select>
						<option>산업디자인학과</option>
						<option>실내디자인학과</option>
						<option>패션디자인학과</option>
						<option>시간영상디자인학과</option>
						<option>미디어콘텐츠학과</option>
						<option>조형예술학과</option>
					</select>
				</li>
			</ul>
			
			<p class="btn mt35"><a href="join_ok.html">가입하기</a></p>

		</div>
	
	<!-- CONTENTS END -->
	
	<!-- POPUP BEGIN -->
	<!-- 중복확인 선택 시 노출 -->
	<div class="layer" id="confirm_Pop">
		<div class="bg"></div>
		<div class="pop-layer" id="confirmPop">
			
			<!-- 01. 사용가능한 닉네임일 시 -->
			<div class="pop_cont text">
				<p class="mb20 c">닉네임 사용 가능합니다.</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div> 

			<!-- 02. 닉네임이 중복될 시 -->
			<!-- <div class="pop_cont text">
				<p class="mb20 c">이미 사용중인 닉네임입니다.</p>
				<p class="btn"><a href="#" class="cbtn">확인</a></p>
			</div>
			 -->
		</div>
	</div>
	<!-- POPUP END -->



</div>

</body>
</html>

