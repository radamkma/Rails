<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Rails</title>

		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/datepicket.css" rel="stylesheet">
		<script src="bootstrap-datepicker.js"></script>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>	
		<script src="js/html5shiv.min.js"></script>
		<script src="js/respond.min.js"></script>
		
		
	</head>
  
	<body>
		
			<nav class="navbar navbar-default navbar-static-top">
				<div class="container-fluid" style="margin: 0px 2% 0px 2%;">
				<a class="navbar-brand navbar-right" href="index.html" id="brand"><img src="images/logo2.png" style="width: 80px; margin-top:-5px;"/></a>
				<center>
					<div class="navbar-header">
								 <button type="button" class="navbar-toggle" data-toggle="collapse" 
								 data-target="#mymenu" id="burger">
								 <span class="sr-only">Toggle navigation</span>
								 <span class="icon-bar"></span>
								 <span class="icon-bar"></span>
								 <span class="icon-bar"></span>
							  </button>

						 
					</div>
					<div id="navigation">
						<div class="collapse navbar-collapse" id="mymenu">
						<ul class="nav navbar-nav">
							<li><a href="lrt1.html"><font class="t3">LRT 1</font></a></li>
							<li><a href="lrt2.html"><font class="t3">LRT 2</font></a></li>
							<li><a href="mrt3.html"><font class="t3">MRT</font></a></li>
						</ul>
						</div>
					</div>
				</center>
				</div>				
			</nav>
		<div class="container">	
			<div class="row" id="details">
				<div class="col-sm-2"></div>
				<div class="col-sm-8" style="text-align: center;">
					<h2 class="h">Account Details</h2>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<div class="container-fluid" style="width: 60%;">
				<div class="row" id="details">
					<div class="col-sm-2"></div>
					<div class="col-sm-8" style="text-align: left;">
						<h4 class="h"><span class="glyphicon glyphicon-piggy-bank"></span> Balance: P${cardRec.balance}</h4>
						<h4 class="h"><span class="glyphicon glyphicon-question-sign"></span> Status: ${cardRec.status}</h4>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</div>
		</div>	
	</body>
</html>