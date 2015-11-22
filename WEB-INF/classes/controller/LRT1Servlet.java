package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.sql.SQLOperations;


@WebServlet("/lrt1.html")
public class LRT1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		connection = SQLOperations.getConnection();
		
		if (connection != null) {
			getServletContext().setAttribute("dbConnection", connection);
			System.out.println("connection is READY.");
		} else {
			System.err.println("connection is NULL.");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {	
			if (connection != null) {
				ResultSet rs1 = SQLOperations.getAllStations("NB","LRT1",connection),
							rs11 = SQLOperations.getAllStations("NB","LRT1",connection); 			
				request.setAttribute("recordStations1", rs1);
				request.setAttribute("recordStations11", rs11);
				ResultSet rs2 = SQLOperations.getAllStations("NB","LRT2",connection),
							rs22 = SQLOperations.getAllStations("NB","LRT2",connection); 			
				request.setAttribute("recordStations2", rs2);
				request.setAttribute("recordStations22", rs22);
				ResultSet rs3 = SQLOperations.getAllStations("NB","MRT3",connection),
							rs33 = SQLOperations.getAllStations("NB","MRT3",connection); 			
				request.setAttribute("recordStations3", rs3);
				request.setAttribute("recordStations33", rs33);
				ResultSet rs4 = SQLOperations.getAllStations("SB","LRT1",connection),
							rs44 = SQLOperations.getAllStations("SB","LRT1",connection);
				request.setAttribute("recordStations1a", rs4);
				request.setAttribute("recordStations11a", rs44);
				ResultSet rs5 = SQLOperations.getAllStations("SB","LRT2",connection),
							rs55 = SQLOperations.getAllStations("SB","LRT2",connection);
				request.setAttribute("recordStations2a", rs5);
				request.setAttribute("recordStations22a", rs55);
				ResultSet rs6 = SQLOperations.getAllStations("SB","MRT3",connection),
							rs66 = SQLOperations.getAllStations("SB","MRT3",connection);
				request.setAttribute("recordStations3a", rs6);
				request.setAttribute("recordStations33a", rs66);
				
				ResultSet rs1a = SQLOperations.getAllAverages2014("entry",0,41,connection); 			
				request.setAttribute("averages2014a1", rs1a);
				ResultSet rs1b = SQLOperations.getAllAverages2014("entry",40,65,connection); 			
				request.setAttribute("averages2014a2", rs1b);
				ResultSet rs1c = SQLOperations.getAllAverages2014("entry",64,91,connection); 			
				request.setAttribute("averages2014a3", rs1c);
				ResultSet rs3a = SQLOperations.getAllAveragesToday("entry",0,41,connection); 			
				request.setAttribute("averagesTodaya1", rs3a);
				ResultSet rs3b = SQLOperations.getAllAveragesToday("entry",40,65,connection); 			
				request.setAttribute("averagesTodaya2", rs3b);
				ResultSet rs3c = SQLOperations.getAllAveragesToday("entry",64,91,connection); 			
				request.setAttribute("averagesTodaya3", rs3c);
				
				getServletContext().getRequestDispatcher("/lrt1.jsp")
					.forward(request, response);
			} else {
				System.out.println("Invalid Connection resource");
			}
		 } catch (NullPointerException npe) {
				System.err.println("Invalid Connection resource - " + npe.getMessage());
		 } catch (Exception e) {
				System.err.println("Exception - " + e.getMessage());
		 } 
	}

}