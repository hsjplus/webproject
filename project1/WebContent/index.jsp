<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--  
	�ּ� �ƴ¸�ŭ �ްڽ��ϴ�.
	������� �ð� ������ �ּ� �� ����ڽ��ϴ�.
	
	��ũ�� �ɷ��ִ°͵� �ְ� ���°͵� �ִµ�, #���� �˻��Ͻø� ������� �ʴ�  ��ũ�� �����Ե˴ϴ�.
-->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<!-- �ʱ������ 1.0�̴ϱ� �Ϲ����� ���������ְڴٴ� �ǹ�.
		������Ʈ�� �ʺ��, ��ġ�� �ʺ�� ��ġ�Ѵ�. ���� ������ ����̽� �ʺ� �°� �����ְڴ�.
	 -->
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>�ǾƼ� ���θ��� ���� ���� ȯ�� �մϴ�</title>
	
	<!-- �������� ������ â���ʿ� �ٴ� ������ ��� -->
	<link rel="icon" href="images/TCS-Favicon.ico">
	
	<!-- ��Ʈ��Ʈ������ �����ϴ� CSS����. �Ʒ� �ΰ��� ��ũ �Ŵ°��� ���� -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- �ǾƼĺ�Ʈ.CSS�� ���� ���� ������ CSS�����̶� �����ϼŵ� �˴ϴ�. -->
	<link rel="stylesheet" type="text/css" href="css/piasengBoots.css">
</head>
	<body>
		<style type="text/css">
		/*
			����Ʈ���� ������ Ŭ����. ���� ūȭ�� ����
		*/
			.jumbotron {
				background-image: url('images/jumbotronBackground.jpg');
				background-size: cover;
				text-shadow: black 0.2em 0.2em 0.2em;
				color: white;
			}
		</style>
		<!-- 
			navbar ��� ������ ��ġ ũ�� ������ ������ ���ø� �� ���� ���Ǽ� �ֽ��ϴ�. 	
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
								<li><a href="#">�ܿ�</a></li>
								<li><a href="#">��</a></li>
								<li><a href="#">Pomade Style</a></li>
								<li><a href="#">Daily Look</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
								aria-haspopup="true" aria-expanded="false">Women<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">�ܿ�</a></li>
								<li><a href="#">��</a></li>
								<li><a href="#">AshyColor Style</a></li>
								<li><a href="#">Daily Look</a></li>
							</ul>
						</li>
						<li><a href="<%=request.getContextPath() %>/board/board.do">BOARD</a></li>
					</ul>
					<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="������ �Է��ϼ���"/>
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
			����Ʈ�� �� �Ʒ� ����Ʈ ���� â 
		-->
		<div class="container">
			<div class="jumbotron">
				<h1 class="text-center" style="color: #7878E1;"><span style="color: #FF1493;">P</span>ia Seng</h1>
				<p class="text-center">�ǾƼ��� �Ƿ� ���� ����Ʈ�Դϴ�. </p>
				<p class="text-center"><a class="btn btn-primary btn-lg" href="#" role="button">�ѷ�����</a></p>
			</div>
			<div class="row">
				<div class="col-md-4">
					<h4>PiaSeng�� Ư¡</h4>
					<p>PiaSeng�� �ٸ� ���θ����� ������ �ٸ� ����� ������ �����ݴϴ�.</p>
					<p><a class="btn btn-default" data-target="#modal" data-toggle="modal">�ڼ��� �˾ƺ���</a></p>
				</div>
				<div class="col-md-4">
					<h4>Width</h4>
					<p>�����п��� �� �´� Ư���� ��ǰ�� �и��� ���� �մϴ�.</p>
					<p><a class="btn btn-default" href="#">�ڼ��� �˾ƺ���</a></p>
				</div>
				<div class="col-md-4">
					<h4>Height</h4>
					<p>Quality is higher than Width.<br/>�ճ����� ������ ���� �ٸ� ���谡 �����ϴ�.</p>
					<p><a class="btn btn-default" href="#">�ڼ��� �˾ƺ���</a></p>
				</div>
			</div>
			<hr/>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title"><span class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;12�� �Ż�ǰ ���</h3>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="media-left">
							<a href="#"><img style="width: 96px; height: 96px;" class="media-object" src="images/BD.ico" alt="12�� �Ż�ǰ"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><a href="#">c��� ���� ���α׷��� ����</a>&nbsp;<span class="badge">New</span></h4>
							C��� ���Ǵ� ���� ���α׷��� �����Դϴ�. ó�� ���α׷����� ���ϴ� �Թ��ڰ� ��⿡ ������ �����Դϴ�.
						</div>
					</div>
					<hr/>
					<div class="media">
						<div class="media-left">
							<a href="#"><img style="width: 96px; height: 96px;" class="media-object" src="images/BD.ico" alt="12�� �Ż�ǰ"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><a href="#">Java ���� ���α׷��� ����</a>&nbsp;<span class="badge">New</span></h4>
							C��� ���Ǵ� ���� ���α׷��� �����Դϴ�. ó�� ���α׷����� ���ϴ� �Թ��ڰ� ��⿡ ������ �����Դϴ�.
						</div>
					</div>
					<hr/>
					<div class="media">
						<div class="media-left">
							<a href="#"><img style="width: 96px; height: 96px;" class="media-object" src="images/BD.ico" alt="12�� �Ż�ǰ"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><a href="#">�׽�Ʈ3 ���� ���α׷��� ����</a>&nbsp;<span class="badge">New</span></h4>
							C��� ���Ǵ� ���� ���α׷��� �����Դϴ�. ó�� ���α׷����� ���ϴ� �Թ��ڰ� ��⿡ ������ �����Դϴ�.
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
							PiaSeng�� Ư¡
							<button class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body" style="text-align: center;">
							<h4>���� ������ Ư¡�� �ǽð� ���뿡 �ֽ��ϴ�.<br/>
							Ư�� �ǽð� ä�ü��񽺸� ���Ͽ�, �δ���� ����� ������ �� �ֽ��ϴ�.<br/><br/></h4>
							<hr/>
							<img src="images/imgpreview.ico" id="imagepreview" style="width: 256px; height: 256px;">
							<hr/>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--
			footer����.   
		-->
		<footer style="background-color: #000000; color: #ffffff">
			<div class="container">
				<br/>
				<div class="row">
					<div class="col-sm-2" style="text-align: center;"><h5>Copyright &copy; 2017</h5><h5>�ǿ���(Yonghoon Kwon)</h5></div>
					<div class="col-sm-4"><h4>��ǥ�� �Ұ�</h4><p>���� PiaSeng�� ��ǥ �ǿ����Դϴ�. ������ ��ǻ���п����� �������̸� �� ���߿� ������ �����ϴ�.</p></div>
					<div class="col-sm-2"><h4 style="text-align: center;">�׺���̼�</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">�Ұ�</a>
							<a href="#" class="list-group-item">�Ұ�</a>
						</div>
					</div>
					<div class="col-sm-2"><h4 style="text-align: center;">SNS</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">Facebook</a>
							<a href="#" class="list-group-item">Twitter</a>
						</div>
					</div>
					<div class="col-sm-2">
						<h4 style="text-align: center;"><span class="glyphicon glyphicon-ok">&nbsp;by �ǿ���</span></h4>
					</div>
				</div>
			</div>
		</footer>
		<!-- 
			Core tag. �Ʒ� �ΰ��� ��Ʈ��Ʈ���� ���� �±�.(���� �Ұ�)
		-->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>