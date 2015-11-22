<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="recordStations1" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations1a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations2" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations2a" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations3" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="recordStations3a" type="java.sql.ResultSet" scope="request"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rails</title>
</head>
<body>
	
	<h1>LRT1 NB</h1>
	
	<table border="1" width="100%" cellpadding="3" cellspacing="3">
		<tr>
			<th align="center">ID</th>
			<th align="center">Station</th>
			<th align="center">Passengers</th>
			<th align="center">Direction</th>
			<th align="center">Transit</th>
		</tr>
		
			<% 
				while(recordStations1.next()) {	
			%>
				<tr>
					<td><%=recordStations1.getInt("station_id")%></td>
					<td><%=recordStations1.getString("station_name")%></td>
					<td><font style="color:<%=recordStations1.getString("color")%>;"><%=recordStations1.getInt("passengers")%></font></td>
					<td><%=recordStations1.getString("direction")%></td>
					<td><%=recordStations1.getString("transit")%></td>
				</tr>			
	<% } %>
	</table>
	<br/><br/>
	
	<h1>LRT1 SB</h1>
	
	<table border="1" width="100%" cellpadding="3" cellspacing="3">
		<tr>
			<th align="center">ID</th>
			<th align="center">Station</th>
			<th align="center">Passengers</th>
			<th align="center">Direction</th>
			<th align="center">Transit</th>
		</tr>
		
			<% 
				while(recordStations1a.next()) {	
			%>
				<tr>
					<td><%=recordStations1a.getInt("station_id")%></td>
					<td><%=recordStations1a.getString("station_name")%></td>
					<td><font style="color:<%=recordStations1a.getString("color")%>;"><%=recordStations1a.getInt("passengers")%></font></td>
					<td><%=recordStations1a.getString("direction")%></td>
					<td><%=recordStations1a.getString("transit")%></td>
				</tr>			
	<% } %>
	</table>
	<br/><br/>
	
	<h1>LRT2 NB</h1>
	
	<table border="1" width="100%" cellpadding="3" cellspacing="3">
		<tr>
			<th align="center">ID</th>
			<th align="center">Station</th>
			<th align="center">Passengers</th>
			<th align="center">Direction</th>
			<th align="center">Transit</th>
		</tr>
		
			<% 
				while(recordStations2.next()) {	
			%>
				<tr>
					<td><%=recordStations2.getInt("station_id")%></td>
					<td><%=recordStations2.getString("station_name")%></td>
					<td><font style="color:<%=recordStations2.getString("color")%>;"><%=recordStations2.getInt("passengers")%></font></td>
					<td><%=recordStations2.getString("direction")%></td>
					<td><%=recordStations2.getString("transit")%></td>
				</tr>			
	<% } %>
	</table>
	<br/><br/>
	
	<h1>LRT2 SB</h1>
	
	<table border="1" width="100%" cellpadding="3" cellspacing="3">
		<tr>
			<th align="center">ID</th>
			<th align="center">Station</th>
			<th align="center">Passengers</th>
			<th align="center">Direction</th>
			<th align="center">Transit</th>
		</tr>
		
			<% 
				while(recordStations2a.next()) {	
			%>
				<tr>
					<td><%=recordStations2a.getInt("station_id")%></td>
					<td><%=recordStations2a.getString("station_name")%></td>
					<td><font style="color:<%=recordStations2a.getString("color")%>;"><%=recordStations2a.getInt("passengers")%></font></td>
					<td><%=recordStations2a.getString("direction")%></td>
					<td><%=recordStations2a.getString("transit")%></td>
				</tr>			
	<% } %>
	</table>
	<br/><br/>
	
	<h1>MRT3 NB</h1>
	
	<table border="1" width="100%" cellpadding="3" cellspacing="3">
		<tr>
			<th align="center">ID</th>
			<th align="center">Station</th>
			<th align="center">Passengers</th>
			<th align="center">Direction</th>
			<th align="center">Transit</th>
		</tr>
		
			<% 
				while(recordStations3.next()) {	
			%>
				<tr>
					<td><%=recordStations3.getInt("station_id")%></td>
					<td><%=recordStations3.getString("station_name")%></td>
					<td><font style="color:<%=recordStations3.getString("color")%>;"><%=recordStations3.getInt("passengers")%></font></td>
					<td><%=recordStations3.getString("direction")%></td>
					<td><%=recordStations3.getString("transit")%></td>
				</tr>			
	<% } %>
	</table>
	<br/><br/>
	
	<h1>MRT3 SB</h1>
	
	<table border="1" width="100%" cellpadding="3" cellspacing="3">
		<tr>
			<th align="center">ID</th>
			<th align="center">Station</th>
			<th align="center">Passengers</th>
			<th align="center">Direction</th>
			<th align="center">Transit</th>
		</tr>
		
			<% 
				while(recordStations3a.next()) {	
			%>
				<tr>
					<td><%=recordStations3a.getInt("station_id")%></td>
					<td><%=recordStations3a.getString("station_name")%></td>
					<td><font style="color:<%=recordStations3a.getString("color")%>;"><%=recordStations3a.getInt("passengers")%></font></td>
					<td><%=recordStations3a.getString("direction")%></td>
					<td><%=recordStations3a.getString("transit")%></td>
				</tr>			
	<% } %>
	</table>
</body>
</html>