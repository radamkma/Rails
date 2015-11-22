<jsp:useBean id="recordStations2" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations2a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations22" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations22a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="averages2014a2" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="averagesTodaya2" type="java.sql.ResultSet" scope="request"/>
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
				<div class="col-sm-4" style="text-align: center;"><h1><img src="images/train.png"> LRT 2</h1></div>
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
						<a data-toggle="modal" href="#modalrecto"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="recto1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="recto2" style="background-color:<%=recordStations2a.getString("color")%>"></div></a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Recto</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modallegarda"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="legarda1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="legarda2" style="background-color:<%=recordStations2a.getString("color")%>"></div></a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Legarda</font></div> <%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
						
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalpureza"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="pureza1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="pureza2" style="background-color:<%=recordStations2a.getString("color")%>"></div></a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Pureza</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalvmapa"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="vmapa1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="vmapa2" style="background-color:<%=recordStations2a.getString("color")%>"></div></a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">V. Mapa</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modaljruiz"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="jruiz1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="jruiz2" style="background-color:<%=recordStations2a.getString("color")%>"></div></a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">J. Ruiz</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalgilmore"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="gilmore1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="gilmore2" style="background-color:<%=recordStations2a.getString("color")%>"></div></a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Gilmore</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">	
						<a data-toggle="modal" href="#modalbettygo"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="bettygo1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="bettygo2" style="background-color:<%=recordStations2a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Betty Go Belmonte</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalcubao"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="cubao1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="cubao2" style="background-color:<%=recordStations2a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Cubao</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalanonas"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="anonas1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="anonas2" style="background-color:<%=recordStations2a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Anonas</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalkatipunan"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="katipunan1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="katipunan2" style="background-color:<%=recordStations2a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Katipunan</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-11px;">
						<div style="display: inline-block; height:60px; margin-left: 16px; margin-top:-8px; width:7px; background-color: #54aed0; color:transparent"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4" style="margin-top:-6px;">
						<a data-toggle="modal" href="#modalsantolan"><% recordStations2.next(); %> <% recordStations2a.next(); %>
						<div id="santolan1" style="background-color:<%=recordStations2.getString("color")%>"></div>
						<div id="santolan2" style="background-color:<%=recordStations2a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Santolan</font></div> 
						<%if(!recordStations2.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
				
		</div>	
		
		<!-- Modal -->
		<div class="modal fade" id="modalrecto" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Recto</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		 </div>
		 
		 <div class="modal fade" id="modallegarda" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Legarda</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				 <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalpureza" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Pureza</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalvmapa" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">V. Mapa</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modaljruiz" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">J. Ruiz</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				 <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalgilmore" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Gilmore</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalbettygo" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Betty Go Belmonte</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalcubao" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Cubao</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				 <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalanonas" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Anonas</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalkatipunan" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Katipunan</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalsantolan" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Santolan</h4>
				</div>
				<div class="modal-body"><% recordStations22.next(); %> <% recordStations22a.next(); %> <% averages2014a2.next(); %> <% averagesTodaya2.next(); %>
				  
				  <p>Northbound: <font style="color:<%=recordStations22.getString("color")%>;"><font style="color:<%=recordStations22.getString("color")%>;"><%=recordStations22.getString("curstatus")%>(<%=recordStations22.getString("passengers")%>)</font></font></p>
				  <p>Southbound: <font style="color:<%=recordStations22a.getString("color")%>;"><font style="color:<%=recordStations22a.getString("color")%>;"><%=recordStations22a.getString("curstatus")%>(<%=recordStations22a.getString("passengers")%>)</font></font></p>
				 <%if(averages2014a2.getInt("average")>averagesTodaya2.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya2.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations22.getString("announcement")%></p>
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