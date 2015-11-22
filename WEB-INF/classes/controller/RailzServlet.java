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


@WebServlet("/liststations.html")
public class RailzServlet extends HttpServlet {
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
				ResultSet rs1 = SQLOperations.getAllStations("NB","LRT1",connection); 			
				request.setAttribute("recordStations1", rs1);
				ResultSet rs2 = SQLOperations.getAllStations("NB","LRT2",connection); 			
				request.setAttribute("recordStations2", rs2);
				ResultSet rs3 = SQLOperations.getAllStations("NB","MRT3",connection); 			
				request.setAttribute("recordStations3", rs3);
				ResultSet rs4 = SQLOperations.getAllStations("SB","LRT1",connection); 			
				request.setAttribute("recordStations1a", rs4);
				ResultSet rs5 = SQLOperations.getAllStations("SB","LRT2",connection); 			
				request.setAttribute("recordStations2a", rs5);
				ResultSet rs6 = SQLOperations.getAllStations("SB","MRT3",connection); 			
				request.setAttribute("recordStations3a", rs6);
				getServletContext().getRequestDispatcher("/display.jsp")
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