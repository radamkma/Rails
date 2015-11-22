<jsp:useBean id="recordStations3" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations3a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations33" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations33a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="averages2014a3" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="averagesTodaya3" type="java.sql.ResultSet" scope="request"/>
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
				<div class="col-sm-4" style="text-align: center;"><h1><img src="images/train.png"> MRT 3</h1></div>
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
						<a data-toggle="modal" href="#modalnorth"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="north1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="north2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">North</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalquezon"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="quezon1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="quezon2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Quezon</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalkamuning"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="kamuning1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="kamuning2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Kamuning</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalcubao"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="cubao1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="cubao2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Cubao</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalsantolan"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="santolan1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="santolan2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Santolan</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalortigas"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="ortigas1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="ortigas2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Ortigas</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalshaw"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="shaw1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="shaw2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Shaw</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalboni"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="boni1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="boni2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Boni</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalguadalupe"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="guadalupe1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="guadalupe2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Guadalupe</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalbuendia"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="buendia1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="buendia2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Buendia</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalayala"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="ayala1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="ayala2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Ayala</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modalmagellanes"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="magellanes1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="magellanes2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">Magellanes</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
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
						<a data-toggle="modal" href="#modaledsa"><% recordStations3.next(); %> <% recordStations3a.next(); %>
						<div id="edsa1" style="background-color:<%=recordStations3.getString("color")%>"></div>
						<div id="edsa2" style="background-color:<%=recordStations3a.getString("color")%>"></div>
						</a>
						<div style="display: inline-block; height: 40px;"><font style="font-size:20px;">EDSA/Pasay</font></div> 
						<%if(!recordStations3.getString("announcement").equals("")){ %>
						<span class="glyphicon glyphicon-alert" style="display: inline; color:#e30015;"></span>
						<%} %>
					</div>
				</div>
		</div>

		
		<!-- Modal -->
		<div class="modal fade" id="modalnorth" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">North</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statisticSs: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalquezon" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Quezon</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalkamuning" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Kamuning</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
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
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
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
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalortigas" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Ortigas</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalshaw" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Shaw</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalboni" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Boni</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				  <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalguadalupe" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Guadalupe</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalbuendia" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Buendia</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalayala" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Ayala</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="modal fade" id="modalmagellanes" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Magellanes</h4>
				</div>
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
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
				<div class="modal-body"><% recordStations33.next(); %> <% recordStations33a.next(); %> <% averages2014a3.next(); %> <% averagesTodaya3.next(); %>
				  
				  <p>Northbound: <font style="color: <%=recordStations33.getString("color")%>;"><%=recordStations33.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></p>
				  <p>Southbound: <font style="color: <%=recordStations33a.getString("color")%>;"><font style="color: <%=recordStations33a.getString("color")%>;"><%=recordStations33a.getString("curstatus")%>(<%=recordStations33.getString("passengers")%>)</font></font></p>
				   <%if(averages2014a3.getInt("average")>averagesTodaya3.getInt("average")){ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This looks like a busy day.</p>
				  <%}else{ %>
				  <p>Today's statistics: <%=averagesTodaya3.getString("average")%> passengers</p>
				  <p>This is a normal day.</p>
				  <%} %>
				  <p><%=recordStations33.getString("announcement")%></p>
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