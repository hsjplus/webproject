<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<!-- 초기비율은 1.0이니까 일반적인 비율로해주겠다는 의미.
		웹사이트의 너비는, 장치의 너비와 일치한다. 현재 접속한 디바이스 너비에 맞게 보여주겠다.
	 -->
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>피아셍 쇼핑몰에 오신 것을 환영 합니다</title>
	<link rel="icon" href="images/TCS-Favicon.ico">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/piasengBoots.css">
</head>
	<body>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" 
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<%= request.getContextPath() %>/index.jsp">PiaSeng Mall</a>
				</div>
				<div class="collapsed navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<%= request.getContextPath() %>/index.jsp">INTRO<span class="sr-only"></span></a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
								aria-haspopup="true" aria-expanded="false">Men<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">겨울</a></li>
								<li><a href="#">봄</a></li>
								<li><a href="#">Pomade Style</a></li>
								<li><a href="#">Daily Look</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
								aria-haspopup="true" aria-expanded="false">Women<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">겨울</a></li>
								<li><a href="#">봄</a></li>
								<li><a href="#">AshyColor Style</a></li>
								<li><a href="#">Daily Look</a></li>
							</ul>
						</li>
						<li><a href="<%= request.getContextPath() %>/board/board.do">BOARD</a></li>
					</ul>
					<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="내용을 입력하세요"/>
						</div>
						<button type="submit" class="btn btn-default">search</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<a href="<%= request.getContextPath() %>/login/loginForm.do"><button type="button" class="btn btn-default navbar-btn">Login</button></a>
						&nbsp;&nbsp;&nbsp;
						<a href="<%= request.getContextPath() %>/login/joinForm.do"><button type="button" class="btn btn-default navbar-btn">&nbsp;Join&nbsp;</button></a>
					</ul>
				</div>
			</div>
		</nav>
		<br/><br/>
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">
								<span class="glyphicon glyphicon-tag"></span>
								&nbsp;&nbsp;상품후기
							</h3>
						</div>
						<div class="panel-body">
							<div class="media">
								<div class="media-left">
									<a href="#">
										<img class="media-object" src="../images/windows.png" alt="개발자 이미지">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">여기는 후기를 적는 곳입니다.</h4>
										편하게 작성해주세요.
								</div>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th>강사명</th>
									<th>강의 번호</th>
									<th>강의 제목</th>
									<th>강의 날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>권용훈</td>
									<td>1</td>
									<td><a href="#">c언어 기초 프로그래밍 강좌</a></td>
									<td>2017-03-20</td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td>권용훈</td>
									<td>1</td>
									<td><a href="#">c언어 기초 프로그래밍 강좌</a></td>
									<td>2017-03-20</td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td>권용훈</td>
									<td>1</td>
									<td><a href="#">c언어 기초 프로그래밍 강좌</a></td>
									<td>2017-03-20</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-lg-4">
					    <div class="input-group">
					      <div class="input-group-btn">
					        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span></button>
					        <ul class="dropdown-menu" role="menu">
					          <li><a href="#">Action</a></li>
					          <li><a href="#">Another action</a></li>
					          <li><a href="#">Something else here</a></li>
					          <li class="divider"></li>
					          <li><a href="#">Separated link</a></li>
					        </ul>
					      </div>
					      <input type="text" class="form-control" aria-label="...">
					    </div>
					  </div>
				</div>
			</div>
		</div>
		<br/><br/>
		<footer style="background-color: #000000; color: #ffffff">
			<div class="container">
				<br/>
				<div class="row">
					<div class="col-sm-2" style="text-align: center;"><h5>Copyright &copy; 2017</h5><h5>권용훈(Yonghoon Kwon)</h5></div>
					<div class="col-sm-4"><h4>대표자 소개</h4><p>저는 PiaSeng의 대표 권용훈입니다. 더조은 컴퓨터학원에서 공부중이며 웹 개발에 관심이 많습니다.</p></div>
					<div class="col-sm-2"><h4 style="text-align: center;">네비게이션</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">소개</a>
							<a href="#" class="list-group-item">소개</a>
						</div>
					</div>
					<div class="col-sm-2"><h4 style="text-align: center;">SNS</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">Facebook</a>
							<a href="#" class="list-group-item">Twitter</a>
						</div>
					</div>
					<div class="col-sm-2">
						<h4 style="text-align: center;"><span class="glyphicon glyphicon-ok">&nbsp;by 권용훈</span></h4>
					</div>
				</div>
			</div>
		</footer>
		<div class="row">
			<div class="modal" id="modal" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							PiaSeng의 특징
							<button class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body" style="text-align: center;">
							<h4>저희 서비스의 특징은 실시간 소통에 있습니다.<br/>
							특히 실시간 채팅서비스를 통하여, 부담없는 상담을 받으실 수 있습니다.<br/><br/></h4>
							<hr/>
							<img src="images/imgpreview.ico" id="imagepreview" style="width: 256px; height: 256px;">
							<hr/>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="../js/jquery-3.2.1.min.js"></script>
		<script src="../js/bootstrap.js"></script>
	</body>
</html>