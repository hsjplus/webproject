<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>�ǾƼ� ���θ��� ���� ���� ȯ�� �մϴ�</title>
	<meta name="description" content="">
    <meta name="author" content="">
    <!-- url ���ʿ� �ߴ� ������ -->
    <!-- ����� ǥ�ù� 
    	../ (����������� �ǹ�) 
    	 ./ (���� ���� ���丮 �ǹ�)
    	  / (������. c:/�̷��� �����ϴ°�)
    -->
    <link rel="icon" href="../images/TCS-Favicon.ico">

    <!-- �Ʒ� ��ũ��Ʈ js�� ������ ������ ���?�� ���� �뵵. ���� �� ���ʹ� �ȸ���. -->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
	
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
						<li><a href="<%= request.getContextPath() %>/board/board.do">BOARD</a></li>
					</ul>
					<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="������ �Է��ϼ���"/>
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
		<!-- �α��� ���� -->
		<div class="container" style="width: 300px;">
        	<form class="form-signin">
       		 <h2 class="form-signin-heading">Please sign in</h2>
       		 <label for="inputEmail" class="sr-only">Email address</label>
       		 <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        	 <label for="inputPassword" class="sr-only">Password</label>
       		 <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      		 <div class="checkbox">
	          <label>
	            <input type="checkbox" value="remember-me"> Remember me
	          </label>
	         </div>
	         <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	     	</form>
	    </div>
		<br/><br/><br/>
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
		<script src="../js/jquery-3.2.1.min.js"></script>
		<script src="../js/bootstrap.js"></script>
	</body>
</html>