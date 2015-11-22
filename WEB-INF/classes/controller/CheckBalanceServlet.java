package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CardBean;
import utility.sql.SQLOperations;

@WebServlet("/checkbalance.html")
public class CheckBalanceServlet extends HttpServlet {
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
			RequestDispatcher dispatcher = null; 
			String nfc_id = request.getParameter("id");
			System.out.println(nfc_id);
			CardBean card = SQLOperations.searchCard(nfc_id, connection);
			request.setAttribute("cardRec", card);
			dispatcher = 
			 getServletContext().getRequestDispatcher("/viewbalance.jsp");
			dispatcher.forward(request, response);		
		} catch (Exception e) {
			System.err.println("Exception e - " + e.getMessage());
			e.printStackTrace();
		} 
	}

}
