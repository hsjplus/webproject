<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<!-- �ʱ������ 1.0�̴ϱ� �Ϲ����� ���������ְڴٴ� �ǹ�.
		������Ʈ�� �ʺ��, ��ġ�� �ʺ�� ��ġ�Ѵ�. ���� ������ ����̽� �ʺ� �°� �����ְڴ�.
	 -->
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>�ǾƼ� ���θ��� ���� ���� ȯ�� �մϴ�</title>
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
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">
								<span class="glyphicon glyphicon-tag"></span>
								&nbsp;&nbsp;��ǰ�ı�
							</h3>
						</div>
						<div class="panel-body">
							<div class="media">
								<div class="media-left">
									<a href="#">
										<img class="media-object" src="../images/windows.png" alt="������ �̹���">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">����� �ı⸦ ���� ���Դϴ�.</h4>
										���ϰ� �ۼ����ּ���.
								</div>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th>�����</th>
									<th>���� ��ȣ</th>
									<th>���� ����</th>
									<th>���� ��¥</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>�ǿ���</td>
									<td>1</td>
									<td><a href="#">c��� ���� ���α׷��� ����</a></td>
									<td>2017-03-20</td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td>�ǿ���</td>
									<td>1</td>
									<td><a href="#">c��� ���� ���α׷��� ����</a></td>
									<td>2017-03-20</td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td>�ǿ���</td>
									<td>1</td>
									<td><a href="#">c��� ���� ���α׷��� ����</a></td>
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
		<script src="../js/jquery-3.2.1.min.js"></script>
		<script src="../js/bootstrap.js"></script>
	</body>
</html>