<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVo" %>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>myblog</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="../../css/styles.css">
</head>
<body>

	<!-- 로그인 성공 모달창 -->
	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">로그인 성공!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
			</div>
		</div>
	</div>

	<!-- 로그인 모달창 -->
	<div class="modal" id="LoginModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">안녕하세요.</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						<!-- 로그인 폼 -->
					<form class="form-group my-2 my-lg-0" id="LoginForm">
						<div class="form-group">
							<label for="id">아이디</label> <input type="text"
								class="form-control" id="id" placeholder="아이디" aria-label="ID"
								required>
						</div>
						<div class="form-group">
							<label for="pwd">비밀번호</label> <input type="password"
								class="form-control" id="pwd" aria-label="PWD"
								placeholder="비밀번호" required>
						</div>
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그인</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 회원가입 성공 모달창 -->
	<div class="modal" id="joinedModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">환영합니다!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
			</div>
		</div>
	</div>

	<!-- 회원가입 모달창 -->
	<div class="modal" id="SignUpModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">환영합니다.</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
					<form class="form-group my-2 my-lg-0" id="joinForm">
						<div class="form-group">
							<input type="radio" name="grade" id="freshman" checked>
							1학년 <input type="radio" name="grade" id="sophomore"> 2학년
							<input type="radio" name="grade" id="junior"> 3학년<br />
						</div>
						<div class="form-group">
							<select name="class">
								<option value="1">1반</option>
								<option value="2">2반</option>
								<option value="3">3반</option>
								<option value="4">4반</option>
								<option value="5">5반</option>
								<option value="6">6반</option>
							</select>
						</div>
						<div class="form-group">
							<input class="form-control mr-sm-2" type="text"
								id="number" placeholder="번호"
								aria-label="number" required>
						</div>
						<div class="form-group">
							<input class="form-control mr-sm-2" type="text"
								id="name" placeholder="이름"
								aria-label="name" required>
						</div>
						<div class="modal-footer">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">회원가입</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">대문</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this)"><a class="nav-link" href="a.html">
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="hobby.html"><a class="nav-link" href="hobby.html">좋아하는
						것</a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this)"><a class="nav-link"
					href="written.html">고 집</a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this)"><a class="nav-link"
					href="dream.html">꿈</a></li>
			</ul>
			<div>
			<%
				UserVo user = (UserVo) session.getAttribute("user");
		    	if(user == null) {
		    %>
		    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">로그인</a>
		    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
				<button class="btn btn-outline-success my-2 my-sm-0"
					onclick="signUpModal();">회원가입</button>
		    
		    <% } else { %>
		    <%-- 세션이 있는 경우 --%>
			    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
			    <li class="nav-item dropdown">
			      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    	<%= user.getName() + "님" %>
			      </a>
			      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
			      	<form action="/WebClass/bloglogout" method="post">
				      	<button type="submit" class="dropdown-item">로그아웃</button>	      	
			      	</form>
			       	<div class="dropdown-divider"></div>
			        <button type="button" class="dropdown-item">Action1</button>
			        <button type="button" class="dropdown-item">Action2</button>
			      </div>
			    </li>
			    </ul>
			    <% } %>
			</div>
		</div>
	</nav>
	<div class="container" style="align: center;">
		<h1>안녕하세요.</h1>
		<p>제 블로그에 오신 것을 환영합니다.</p>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="../../js/snow.js"></script>
	<script src="../../js/hello.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>


	<script>
		function loginModal() {
			var LoginModal = $("#LoginModal");
			LoginModal.modal();
		}
		function signUpModal() {
			var SignUpModal = $("#SignUpModal");
			SignUpModal.modal();
		}
		function menu_over(e) {
			e.setAttribute("class", "nav-item active"); // <li class="nav-item active">	
		}
		function menu_out(e) {
			e.setAttribute("class", "nav-item"); // <li class="nav-item">	
		}
		// jquery 문법
		$(document).ready(
				function() {
					$('#LoginForm').submit(
							function(event) {
								// submit 되는 것을 막기
								event.preventDefault();

								console.log('start');
								//id, pwd 가져오기
								var id = $("#id").val(); // = document.getElementById("id").value
								var pwd = $("#pwd").val();
								console.log(id, pwd);

								//서버로 post 방식 전송 (ajax)

								$.post("http://httpbin.org/post", {
									'id' : id,
									'pwd' : pwd
								}, function(data) {
									// 서버로부터 응답을 받으면
									// alert(data.form.id + '님 로그인 되었습니다.')
									var myModal = $("#myModal");
									myModal.modal();
									myModal.find('.modal-body').text(
											data.form.id + '님 로그인되었습니다.');
									$("#LoginModal").modal("hide");
								});
							});
				});
		// jquery 문법
		$(document).ready(
				function() {
					$('#SignUpModal').submit(
							function(event) {
								// submit 되는 것을 막기
								event.preventDefault();

								console.log('start');
								//name 가져오기
								var name = $("#name").val(); // = document.getElementById("name").value
								console.log(name);

								//서버로 post 방식 전송 (ajax)

								$.post("http://httpbin.org/post", {
									'name' : name
								}, function(data) {
									// 서버로부터 응답을 받으면
									// alert(data.form.id + '님 회원가입 되었습니다.')
									var joinedModal = $("#joinedModal");
									joinedModal.modal();
									joinedModal.find('.modal-body').text(
											data.form.name + '님 회원가입되었습니다.');
									$("#SignUpModal").modal("hide");
								});
							});
				});
	</script>
</body>
</html>