<%@page import="kr.co.pj.product.dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.pj.product.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  
	주석 아는만큼 달겠습니다.
	어느정도 시간 지나면 주석 다 지우겠습니다.
	
	링크는 걸려있는것도 있고 없는것도 있는데, #으로 검색하시면 연결되지 않는  링크가 나오게됩니다.
-->
<%
	String idx = request.getParameter("idx");
	
	if(idx == null){
		idx = "1";
	}
	
	System.out.println(idx);
	
	List<ProductVO> totalList = new ProductDAO().selectAllProduct();
	List<ProductVO> list = new ProductDAO().selectAllProduct( Integer.parseInt(idx) );
	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<!-- 초기비율은 1.0이니까 일반적인 비율로해주겠다는 의미.
		웹사이트의 너비는, 장치의 너비와 일치한다. 현재 접속한 디바이스 너비에 맞게 보여주겠다.
	 -->
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>피아셍 쇼핑몰에 오신 것을 환영 합니다</title>
	
	<!-- 웹브라우저 맨위에 창왼쪽에 붙는 아이콘 모양 -->
	<link rel="icon" href="images/TCS-Favicon.ico">
	
	<!-- 부트스트랩에서 제공하는 CSS파일. 아래 두개는 링크 거는것이 좋음 -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- 피아셍부트.CSS는 제가 직접 제작한 CSS파일이라서 변동하셔도 됩니다. -->
	<link rel="stylesheet" type="text/css" href="css/piasengBoots.css">
</head>
	<body>
		<style type="text/css">
		/*
			점보트론은 정해진 클래스. 최초 큰화면 역할
		*/
			.jumbotron {
				background-image: url('images/jumbotronBackground.jpg');
				background-size: cover;
				text-shadow: black 0.2em 0.2em 0.2em;
				color: white;
			}
		
		</style>
		<!-- 
			navbar 상단 맨위에 위치 크롬 개발자 도구로 보시면 더 쉽게 보실수 있습니다. 	
		-->
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
					<a class="navbar-brand" href="index.jsp">PiaSeng Mall</a>
				</div>
				<div class="collapsed navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">INTRO<span class="sr-only"></span></a></li>
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
						<li><a href="<%=request.getContextPath() %>/board/board.do">BOARD</a></li>
					</ul>
					<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="내용을 입력하세요"/>
						</div>
						<button type="submit" class="btn btn-default">search</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<a href="<%=request.getContextPath() %>/login/loginForm.do"><button type="button" class="btn btn-default navbar-btn">Login</button></a>
						&nbsp;&nbsp;&nbsp;
						<a href="<%=request.getContextPath() %>/login/joinForm.do"><button type="button" class="btn btn-default navbar-btn">&nbsp;Join&nbsp;</button></a>
					</ul>
				</div>
			</div>
		</nav>
		<br/><br/>
		
		<!-- 
			점보트론 및 아래 컨텐트 보관 창 
		-->
		<div class="container">
			<div class="jumbotron">
				<h1 class="text-center" style="color: #7878E1;"><span style="color: #FF1493;">P</span>ia Seng</h1>
				<p class="text-center">피아셍은 의류 전문 사이트입니다. </p>
				<p class="text-center"><a class="btn btn-primary btn-lg" href="#" role="button">둘러보기</a></p>
			</div>
			
			<div class="row">
				<div class="col-md-4">
					<h4>PiaSeng의 특징</h4>
					<p>PiaSeng은 다른 쇼핑몰과는 차원이 다른 깔끔한 구성을 보여줍니다.</p>
					<p><a class="btn btn-default" data-target="#modal" data-toggle="modal">자세히 알아보기</a></p>
				</div>
				<div class="col-md-4">
					<h4>Width</h4>
					<p>여러분에게 딱 맞는 특별한 상품은 분명히 존재 합니다.</p>
					<p><a class="btn btn-default" href="#">자세히 알아보기</a></p>
				</div>
				<div class="col-md-4">
					<h4>Height</h4>
					<p>Quality is higher than Width.<br/>손끝으로 만지는 순간 다른 세계가 열립니다.</p>
					<p><a class="btn btn-default" href="#">자세히 알아보기</a></p>
				</div>
			</div>
			<hr/>
			
			
			<!--  상품 게시 부분 -->
			<c:forEach items="${ list }" var="product" varStatus="loop">
				
	            <c:if test="${ loop.count % 4 eq 1 and loop.count != 1}">
	            	</div>
	            </c:if>

				<c:if test="${ loop.count % 4 eq 1}">
					<div class="row">
				</c:if>
				
				<!-- 상품 row 한 묶음 -->
	            <div class="col-xs-12 col-lg-3">
	              <h2>상품명: ${ product.pname }</h2>
	              <img src="/project1/images/${ product.pimg_save_nm }" width="150" height="150"/></p>
	              <p>가격: ${ product.price }</p>
	              <p>조회수: ${ product.view_cnt }</p>
	              <p>날짜: ${ product.reg_date }</p>
	            </div>
	            
            </c:forEach>
            </div>
            <!--  상품 게시 끝 -->
            <br/><br/>
            <%
            	 double rowSize = totalList.size();  
            	 int idxSize = (int)Math.ceil(rowSize / 4);
            	 pageContext.setAttribute("idxSize", idxSize);
            %>
            
 			<c:forEach var="idx" begin="1" end="${idxSize }">
 				[<a href="/project1/index.jsp?idx=${idx}"> ${idx} </a>] &nbsp;
 			</c:forEach>
       
            
            <br/>
            <a href="<%=request.getContextPath() %>/product/productForm.jsp">
            <button type="button" class="btn btn-default navbar-btn">상품 입력</button></a>
			        
			<hr/>
			
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title"><span class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;12월 신상품 목록</h3>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="media-left">
							<a href="#"><img style="width: 96px; height: 96px;" class="media-object" src="images/BD.ico" alt="12월 신상품"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><a href="#">c언어 기초 프로그래밍 강의</a>&nbsp;<span class="badge">New</span></h4>
							C언어 강의는 기초 프로그래밍 강의입니다. 처음 프로그래밍을 접하는 입문자가 듣기에 적합한 강의입니다.
						</div>
					</div>
					<hr/>
					<div class="media">
						<div class="media-left">
							<a href="#"><img style="width: 96px; height: 96px;" class="media-object" src="images/BD.ico" alt="12월 신상품"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><a href="#">Java 기초 프로그래밍 강의</a>&nbsp;<span class="badge">New</span></h4>
							C언어 강의는 기초 프로그래밍 강의입니다. 처음 프로그래밍을 접하는 입문자가 듣기에 적합한 강의입니다.
						</div>
					</div>
					<hr/>
					<div class="media">
						<div class="media-left">
							<a href="#"><img style="width: 96px; height: 96px;" class="media-object" src="images/BD.ico" alt="12월 신상품"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><a href="#">테스트3 기초 프로그래밍 강의</a>&nbsp;<span class="badge">New</span></h4>
							C언어 강의는 기초 프로그래밍 강의입니다. 처음 프로그래밍을 접하는 입문자가 듣기에 적합한 강의입니다.
						</div>
					</div>
				</div>
			</div>
		</div>
		
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
		<!--
			footer영역.   
		-->
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
						<h4 style="text-align: center;"><span class="glyphicon glyphicon-ok">&nbsp;by 권용훈, 홍석준 </span></h4>
					</div>
				</div>
			</div>
		</footer>
		<!-- 
			Core tag. 아래 두개는 부트스트랩을 위한 태그.(변동 불가)
		-->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>