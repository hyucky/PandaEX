<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!Doctype html>
<html>
<!-- Header -->

<header>


<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<jsp:include page="../addon/chatList.jsp"/>
<script src="/resources/js/main.js"></script>
<script src="/resources/js/chat.js"></script>
	<!-- 임시 -->
	<script>
		function mo() {
			alert('정보수정할래요');
		}
		function lo() {
			alert('로그아웃할래요');
		}
		
	</script>





	<!-- Header desktop -->
	<div class="container-menu-desktop">

		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<a href="index.html" class="logo"> <img
					src="/resources/images/icons/PANDA.png" alt="IMG-LOGO"> <span
					class="maintext">PANDA</span>
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop" style="padding-top: 13px;">
					<ul class="main-menu">
						<li class="active-menu"><a href="index.html">중고거래</a></li>
						<li><a href="#">기부하기</a></li>
					</ul>
				</div>

				<!-- Icon header -->


				<div class="wrap-icon-header flex-w flex-r-m">
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search"
						style="padding-right: 0px;">
						<a id="chatOpen">
						 <input type="hidden" id="idVal" value="${user_id }">
						 <img id="chat-on" class="panda-header-chaticon"
							src="/resources/images/icons/Panda_Chat.png" alt="panda-chat">
							<img class="panda-header-chaticon-hover"
							src="/resources/images/icons/panda_chat_hover.gif"
							alt="panda-chat-hover">
						</a>
					</div>
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11"
						style="padding-bottom: 10px; padding-right: 0px;">
						<a href="#" memo="my shop 이동"> <img class="panda-header-shop"
							src="/resources/images/icons/panda-shop.png" alt="panda-shop">
						</a>
					</div>


					<div class="icon-header-item trans-04 p-l-22 p-r-11" id="usersel"
						style="padding-bottom: 10px; padding-right: 15px; display: inline-block;">
						<a memo="내정보"> <img class="panda-header-user"
							src="/resources/images/icons/panda-user.png" alt="panda-user">
						</a>
					</div>
					<div class="hoversup"></div>
					<div class="category">
						<div class="user-sel-images">
								<c:if test="${user_id eq ''}">
									<img class="bamboo" src="/resources/images/icons/bamboo.png"
										style="margin-left: 166px;">
								</c:if>
								<c:if test="${user_id ne '' and adminchk lt '1' }">
									<img class="bamboo" src="/resources/images/icons/bamboo.png"
										style="height: 88px;">
								</c:if>
						</div>

						<!-- 로그인 시 -->
						
							<c:if test="${sessionScope.user_id == null }">
								<p>
									<strong>로그인</strong> 후 이용해주세요
								</p>
								<q>아이디가 없으시다면?<br> &nbsp;회원가입 후 이용해주세요!
								</q>
								<div class="user-modify">
									<input type="button" class="usermodal" value="로그인"
										style="width: 64.5px; margin-top: 7px;">
								</div>
								<div class="user-logout">
									<input type="button" onclick="location.href='#'" id="user-join" class="logout"
										value="회원가입" style="margin-top: 7px;">
								</div>
							</c:if>
							<c:if test="${user_id != null}">
								<p>
									<span>${sessionScope.user_id}/${sessionScope.user_nick }</span> 님 환영합니다
								</p>
								<ul>
									<li><a class="my" href="#">내 정보<img class="right"
											src="/resources/images/icons/right-arrow.png"></a></li>
									<li><a class="my" href="#">내 상점<img class="right"
											src="/resources/images/icons/right-arrow.png"></a></li>
								</ul>
								<div class="user-modify">
									<input type="button" onclick="mo()" class="modify" value="정보수정">
								</div>
								<div class="user-logout">
									<input type="button" onclick="location.href='/member/logout';" value="로그아웃">
<!-- 									<input type="button" onclick="location.href='/member/logout';" class="logout" value="로그아웃"> -->
									
								</div>
							</c:if>
							<c:if test="${user_id ne '' and adminchk lt '1'}">
								<p style="margin-bottom: 5px;">
									<span class="login-admin">${admin }</span> 님 환영합니다
								</p>
								<ul>
									<li><a class="adminmenu" href="#">관리자 메뉴 이동<img
											class="right" src="/resources/images/icons/right-arrow.png"></a></li>
								</ul>
								<div class="user-logout" style="margin-left: 40px;">
									<input type="button" onclick=" location.href='/logout';" class="logout" value="로그아웃"
										style="margin-top: 7px;">
										
								</div>
							</c:if>
						<!-- 로그인 시  -->


					</div>

				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<a href="index.html" class="logo"> <img
			src="/resources/images/icons/PANDA.png" alt="IMG-LOGO"> <span
			class="maintext">PANDA</span>
		</a>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m m-r-15">
			<div
				class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
				<i class="zmdi zmdi-search"></i>
			</div>

			<div
				class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
				data-notify="2">
				<i class="zmdi zmdi-shopping-cart"></i>
			</div>

			<a href="#"
				class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
				data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
			</a>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li class="active-menu"><a href="index.html">중고거래</a></li>
			<li><a href="#">기부하기</a></li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button
				class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="/resources/images/icons/icon-close2.png" alt="CLOSE">
			</button>

			<form class="wrap-search-header flex-w p-l-15">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search"
					placeholder="Search...">
			</form>
		</div>
	</div>
</header>
</head>

 

<!-- 로그인 모달창 -->
<script
	src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
<div class="login-modal">
	<div class="modal-body">
		<div class="modal-logo">
			<img src="/resources/images/icons/PANDA.png" alt="IMG-LOGO">
		</div>
		<div class="modal-top">PANDA LOGIN</div>
		<img src="/resources/images/icons/close.png" alt="IMG-close"
			class="modalhide">
		<img src="/resources/images/icons/back.png" alt="IMG-back"
		class="back-joinpage">
			
			<form action="/member/login" method="post" id="login">
		<div class="modal-text">
			<img src="/resources/images/icons/user.png" alt="id입력"
				class="userimg">
			<!-- 			<img src="/resources/images/icons/reset.png" alt="idreset" id="idreset" class="resetimg"> -->
			
			<input type="text" id="user_id" name="user_id" placeholder="PANDA ID"
				maxlength="10" class="id" onkeypress="chkCapsLock(event)"
				onclick="chkCapsLock(event)" onblur="chkCapsLock1(event)" autocomplete="off" class="id" > 
				
				<img src="/resources/images/icons/pass.png" alt="id입력" class="passimg">
			<!-- 			<img src="/resources/images/icons/reset.png" alt="idreset" id="pwreset"class="resetimg"> -->
			
			
			<input type="password" id="user_pw" name="user_pw"
				placeholder="PANDA PW" maxlength="15" class="pass"
				onkeypress="chkCapsLock(event)" onclick="chkCapsLock(event)"
				onblur="chkCapsLock1(event)" autocomplete="new-password">
				
				
			<div id="capslock"
				style="font-size: 12px; margin: -2px 0 0 200px; color: darkblue; position: absolute;"></div>
			<div class="check-box">
				<label class="chk_id"><input type="checkbox" class="id_save">
					<strong>아이디 저장</strong></label> <label class="show_pw"><input
					type="checkbox" class="pw_show" onclick="chkCapsLock(event)"
					onblur="chkCapsLock1(event)"> <strong>패스워드 보기</strong></label>
			</div>
		</div>
		<div class="login-submit">
			<input type="submit" value="로그인" >
			<!-- 로그인 실패 시, ajax 로 얼럿 뜨게 만들기(페이지 이동 막기) -->
		</div>
				</form>
		<div class="find">
			<div class="findid">아이디찾기</div>
			<div class="division">│</div>
			<div class="findpw">비밀번호찾기</div>
		</div>
		<div class="join">
			<a>계정이 없으신가요?</a>&nbsp;&nbsp;
			<p id="onclick-join">회원가입</p>
		</div>
		
		
		<!-- 카카오 로그인 -->
		<div class="social-login">
			<img src="/resources/images/icons/division-line.png">
			<p>Social Login</p>
			<img src="/resources/images/icons/division-line.png">
		</div>
			 
			 <a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=d2adbec5b44fdcc0559d1e3ca898739e&redirect_uri=http://localhost:8080/main/index&response_type=code">
			 
			<img src="/resources/images/icons/kakao_login_large_wide.png"" style="width:268pt;height:50pt;margin:auto;"><br><br>
			 </a>
			 
			 
			 
			 
		<div class="modal-join">
		<form action="/member/insert" method="post">
			<div class="join-text">
				<input id="user-id-join" type="text" placeholder="아이디" maxlength="10" autocomplete="off" name="user_id">
				<div id="tooltip" class="idtooltip">아이디는 영어,숫자 5~10글자, 한글,특수문자 사용불가</div>
				<input id="user-pw-join" type="password" placeholder="비밀번호"maxlength="15"
				onkeypress="chkCapsLock2(event)" onclick="chkCapsLock2(event)"
				onblur="chkCapsLock3(event)" autocomplete="new-password" name="user_pw">
				<img class="capsl" src ="/resources/images/icons/capslock.png" alt="캡스락">
				<div id="tooltip" class="pwtooltip">비밀번호는 영어대/소문자, 숫자, 특수기호 포함 8~15글자, 한글사용 불가</div>
				<div class="passlv">
					<div class="passlv-info">비밀번호 안전도 :</div>
					<div class="lv-info"></div>
					<input type="text" readonly class="lv1" tabindex="-1" > 
					<input type="text" readonly class="lv2" tabindex="-1"> 
					<input type="text" readonly class="lv3" tabindex="-1">
					<!-- 비밀번호는 영어대/소문자,숫자,특수기호 8~15글자, 한글사용불가 -->
				</div>
				<input id="user-name-join" type="text" placeholder="이름입력" maxlength="6" autocomplete="off" name="user_name">
				<div id="tooltip" class="nametooltip">본명을 입력해주세요</div>
				<input id="user-nick-join" type="text" placeholder="닉네임" maxlength="10" autocomplete="off" name="user_nick">
				<div id="tooltip" class="nicktooltip" >사용하실 닉네임을 입력해주세요.</div>
				<div class="tellsel">
					<div id="tel">
						<input class="select" type="text" value="통신사" readonly tabindex="-1"> <img
							id="updown" src="/resources/images/icons/updown.png">
							<div id="telecom">
								<div class="skt">SKT</div>
								<div class="kt">KT</div>
								<div class="lgu">LGU+</div>
							</div>
					</div>
					<input id="user-tel-join" class="telephone" type="tel" placeholder="핸드폰번호"
						maxlength="13" autocomplete="off" name="user_tel"> <input type="button"
						class="tel-certification" value="문자전송" tabindex="-1">
				</div>
				<div id="tooltip" class="teltooltip">핸드폰번호를 입력하세요.</div>
				<div id="telephone-certification">
					<input class="telephone-certification" type="tel"
						placeholder="인증번호" maxlength="6"> <input type="button"
						id="tel-certification" value="인증확인" tabindex="-1">
					<input type="hidden" class="sucess-certification" value="" memo="인증완료 시 밸류값저장(0/1)" tabindex="-1">
				</div>
				<div class="mylocation">우리동네 조회하기</div>
				<div class="findloca"> <!-- 배열로 넣기  -->
					<input type="text" id="si" readonly tabindex="-1" name="addr[0]"> 
					<input type="text" id="gu" readonly tabindex="-1" name="addr[1]"> 
					<img src="/resources/images/icons/placeholder.png" id="findlocation">
				</div>
				<div class="locationfind-false">&nbsp;</div>
				<div class="terms">
					<div class="terms-service">판다 서비스 이용 약관</div>
						<input id="service-chk" type="checkbox" tabindex="-1"><p>판다 이용약관, 개인정보 수집 및 이용 (선택), 위치기반서비스 이용약관에 모두 동의합니다.</p>
						<input id="service-chk-val" value="0" type="hidden" memo="survice-chk y/n" tabindex="-1">
					<div class="terms-advertising">개인 정보 광고 활용 동의(선택)</div>
						<input id="advertising-chk" type="checkbox" tabindex="-1"><p>판다 서비스 이용 중 판다가 제공하는 고객맞춤 컨텐츠 추천 등 광고 정보를 수신합니다.</p>
						<input id="advertising-chk-val" value="0" type="hidden" memo="advertising-chk y/n" tabindex="-1">
				</div>
				<input type="submit" value="회원가입" class="member-join">
			</div>
			</form>
		</div>	
		
		<script type="text/javascript">
        $(document).ready(function(){
        	
        	$("#user_id").keyup(function(){
        		//alert("이벤트!");
        		//키보드 입력시마다, 입력된 아이디 정보가 사용가능한지 확인(DB)
        		
        		//$("#userIDdiv").append("@");
        		//$("#userIDdiv").text("@");
        		//$("#userIDdiv").html("<h2> @ </h2>");
        		
        		//alert($("#userid").val());
        	
	        		// 문제 없을때(5~10자리 일때)
	        		// 해당 아이디 정보가,디비에 있는지 체크
	        		// GET 방식 - /members/ckID + 데이터
	        		$.ajax({
	        			type:"GET",
	        			url:"/members/ckID",
	        			data:{userid:$("#user_id").val()},
	        			success:function(){
	        				//alert("성공");
	        				if(data == "OK"){
	        	        		$("#userIDdiv").html("<font color='blue'> 정상적인 아이디 사용입니다 </font>");
	        				}else{
	        	        		$("#userIDdiv").html("<font color='green'> 이미 사용중인 아이디입니다 </font>");

	        			
	        		});
	        		
	        		$("#userIDdiv").html("<font color='blue'> 정상적인 아이디 사용입니다 </font>");
        		}
        		
        	
        });    
     </script>
     
     
     
		<div class="modal-findid">
			<div class="findid-input">
				<input type="text" id="findid-id" placeholder="가입하신 이름을 입력해주세요." maxlength="6" autocomplete="off">
				<input type="text" id="findid-nick" placeholder="사용중인 닉네임을 입력해주세요." maxlength="10" autocomplete="off">
				<div class="error-text">&nbsp;</div>
				<input id="search-id" type="button" value="아이디 찾기">
			</div>
		</div>
		<div class="modal-findpw">
			<div class="findpw-input">
				<input type="text" id="findpw-pw" placeholder="사용중인 아이디를 입력해주세요." maxlength="6" autocomplete="off">
				<input type="text" id="findpw-tel" placeholder="가입하신 전화번호 입력해주세요." maxlength="10" autocomplete="off">
				<div class="error-text">&nbsp;</div>
				<input id="search-pw" type="button" value="비밀번호찾기">
			</div>
		</div>
	</div>
</div>


<!-- 만들다 뒤질거같다. -->