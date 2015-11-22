<jsp:useBean id="recordStations1" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations1a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations11" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations11a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="averages2014a1" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="averagesTodaya1" type="java.sql.ResultSet" scope="request"/>
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
		
			<nav class="navbar navbar-default navbar-fixed-top">
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
							<li><a href="mrt3.html"><font class="t3">MRT 3</font></a></li>
						</ul>
						</div>
					</div>
				</center>
				</div>				
			</nav>
		<div class="container" style="width: 80%; padding-bottom: 50px; margin-top: 80px;">	
			<div class="row">
				<div class="col-sm-4" ></div>
				<div class="col-sm-4" style="text-align: center;"><h1><img src="images/train.png"> LRT 1</h1></div>
				<div class="col-sm-4"></div>			
			</div>
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="row">
						<br/><br/><br/>
						<center><font style="display: inline-block;font-size:23px;">Legend</font></center>
						<hr style="margin:10px"/>
						<div class="col-sm-1"></div>
						<div class="col-sm-2">
							<div style="height:20px; margin-left: 10px; width:20px; border-radius:20px; background-color: #5dbf22; display: inline-block;"></div> <font style="display: inline-block;font-size:20px;">Light</font>
						</div>
						<div class="col-sm-2">
							<div style="height:20px; margin-left: 10px; width:20px; background-color: #e0e300; border-radius:20px; display: inline-block;"></div> <font style="display: inline-block;font-size:20px;">Moderate</font>
						</div>
						<div class="col-sm-2">
							<div style="height:20px; margin-left: 10px; width:20px; background-color: #e30015; border-radius:20px; display: inline-block;"></div> <font style="display: inline-block;font-size:20px;">Heavy</font>
						</div>
						<div class="col-sm-2">
							<div id="LegendCircle1" style="display: inline-block; margin-left: 10px; width:15px; height:25px;"></div> <font style="display: inline-block;font-size:20px;"> &nbsp;South Bound</font>
						</div>
						<div class="col-sm-2">
							<div id="LegendCircle2" style="display: inline-block; margin-left: 10px; width:15px; height:25px;"></div> <font style="display: inline-block;font-size:20px;"> &nbsp;North Bound</font> 
						</div>
						<div class="col-sm-1"></div>
						<br/><br/>
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<div class="row">
					<div class="col-sm-4">
						<a data-toggle="modal" href="#modalroosevelt"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Roosevelt1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Roosevelt2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Roosevelt</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalbalintawak"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Balintawak1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Balintawak2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Balintawak</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalmonumento"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Monumento1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Monumento2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Monumento</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalfifthavenue"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="FifthAve1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="FifthAve2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">5th Avenue</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalrpapa"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="RPapa1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="RPapa2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">R. Papa</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalabadsantos"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="AbadSantos1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="AbadSantos2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Abad Santos</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalblumentrit"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Blumentritt1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Blumentritt2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Blumentrit</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modaltayuman"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Tayuman1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Tayuman2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Tayuman</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalbambang"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Bambang1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Bambang2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Bambang</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modaldoroteo"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Doroteo1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Doroteo2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Doroteo Jose</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalcarriedo"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Carriedo1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Carriedo2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Carriedo</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalcentral"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Central1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Central2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Central</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalunitednations"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="UNAve1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="UNAve2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">United Nations Ave</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalpedrogil"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="PedroGil1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="PedroGil2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a><div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Pedro Gil</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalquirinoave"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Quirino1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Quirino2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Quirino Ave</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalvitocruz"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="VitoCruz1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="VitoCruz2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Vito Cruz</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalgilpuyat"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="GilPuyat1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="GilPuyat2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Gil Puyat</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modallibertad"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Libertad1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Libertad2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Libertad</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modaledsa"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Edsa1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Edsa2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">EDSA/Pasay</font></div> 
						<%if(!recordStations1.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-12px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color:#54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalbaclaran"><% recordStations1.next(); %> <% recordStations1a.next(); %>
							<div id="Baclaran1" style="background-color:<%=recordStations1.getString("color")%>"></div>
							<div id="Baclaran2" style="background-color:<%=recordStations1a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Baclaran</font></div> 
						
					</div>
				</div>
		</div>	
		
		
		
	
		
		<!-- Modal -->
		  <div class="modal fade" id="modalroosevelt" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Roosevelt</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				  				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalbalintawak" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Balintawak</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalmonumento" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Monumento</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalfifthavenue" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">5th Avenue</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalrpapa" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">R. Papa</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalabadsantos" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Abad Santos</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalblumentrit" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Blumentrit</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modaltayuman" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Tayuman</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				 <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalbambang" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Bambang</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modaldoroteo" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Doroteo Jose</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalcarriedo" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Carriedo</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalcentral" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Central</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalunitednations" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">United Nations Avenue</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalpedrogil" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Pedro Gil</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalquirinoave" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Quirino Avenue</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalvitocruz" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Vito Cruz</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalgilpuyat" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Gil Puyat</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modallibertad" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Libertad</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modaledsa" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">EDSA/Pasay</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalbaclaran" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Baclaran</h4>
				</div>
				<div class="modal-body"><% recordStations11.next(); %> <% recordStations11a.next(); %> <% averages2014a1.next(); %> <% averagesTodaya1.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations11.getString("color")%>"><%=recordStations11.getString("curstatus")%>(<%=recordStations11.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations11a.getString("color")%>"><%=recordStations11a.getString("curstatus")%>(<%=recordStations11a.getString("passengers")%>)</font></p>
				  <%if(averages2014a1.getInt("average")>averagesTodaya1.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya1.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations11.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <a href="#" class="back-to-top">Back to Top</a>
		  <script type="text/javascript">
			// create the back to top button
			$('body').prepend('<a href="#" class="back-to-top">Back to Top</a>');
		
			var amountScrolled = 200;
		
			$(window).scroll(function() {
				if ($(window).scrollTop() > amountScrolled) {
					$('a.back-to-top').fadeIn('slow');
				} else {
					$('a.back-to-top').fadeOut('slow');
				}
			});
		
			$('a.back-to-top, a.simple-back-to-top').click(function() {
				$('body').animate({
					scrollTop: 0
				}, 'slow');
				return false;
			});
		</script>
	</body>
</html>