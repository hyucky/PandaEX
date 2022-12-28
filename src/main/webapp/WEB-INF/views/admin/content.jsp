<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 헤더 -->
<jsp:include page="../include/header.jsp" />
<!-- css -->
<jsp:include page="../include/css.jsp" />
<!-- remote -->
<jsp:include page="../addon/remote.jsp" />


<br>
<br>
<br>
<br>
<br>
<%-- 	${cvo } --%>
		<!-- 글 내용 vo -->

		<!-- 제목창 윗부분 -->
		<p></p>
		<p class="stext-115 cl6 size-213 p-t-18">글 작성일 : ${cvo.regdate }</p>


<!-- 글 내용 -->
<div class="box box-warning">
	<div class="box-header with-border">
		<h3 class="box-title">공지사항</h3>
	</div>

	<div class="box-body">
		<form role="form">
			
			<div class="form-group">
				<label>제목</label> <input type="text" class="form-control"
					placeholder="Enter ..." value=${cvo.title } readonly>
			</div>
			<div class="form-group">
				<label>작성자</label> <input type="text" class="form-control"
					placeholder="Enter ..." value=${cvo.writer } readonly>
			</div>

			<div class="form-group">
				<label>내용</label>
				<textarea class="form-control" rows="3" readonly>${cvo.content }</textarea>
			</div>



			<!-- 본인글만 가능 -->
			<button type="button" class="btn btn-block btn-success btn-lg" onclick="location.href='/admin/modify?bno=${cvo.bno}';">수정</button>
			<button type="button" class="btn btn-block btn-success btn-lg" onclick="location.href='/admin/remove';">삭제</button>
			<!-- 본인글만 가능 -->
			
			
			<button type="button" class="btn btn-block btn-success btn-lg" onclick="location.href='/admin/list';">목록</button>
			
			
			<!-- <div class="form-group">
				<label>Select</label> <select class="form-control">
					<option>option 1</option>
					<option>option 2</option>
					<option>option 3</option>
					<option>option 4</option>
					<option>option 5</option>
				</select>
			</div>
			<div class="form-group">
				<label>Select Disabled</label> <select class="form-control"
					disabled="">
					<option>option 1</option>
					<option>option 2</option>
					<option>option 3</option>
					<option>option 4</option>
					<option>option 5</option>
				</select>
			</div>

			<div class="form-group">
				<label>Select Multiple</label> <select multiple=""
					class="form-control">
					<option>option 1</option>
					<option>option 2</option>
					<option>option 3</option>
					<option>option 4</option>
					<option>option 5</option>
				</select>
			</div>
			<div class="form-group">
				<label>Select Multiple Disabled</label> <select multiple=""
					class="form-control" disabled="">
					<option>option 1</option>
					<option>option 2</option>
					<option>option 3</option>
					<option>option 4</option>
					<option>option 5</option>
				</select>
			</div> -->
		</form>
	</div>

</div>





<!-- 푸터 -->
<jsp:include page="../include/footer.jsp" />

