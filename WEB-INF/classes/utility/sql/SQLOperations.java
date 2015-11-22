package utility.sql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.CardBean;

public class SQLOperations {

	private static Connection connection;

	private SQLOperations() {
	}

	private static Connection getDBConnection() {
		try {
			InitialContext context = new InitialContext();
			DataSource dataSource = (DataSource) context
					.lookup("java:comp/env/jdbc/UST-3CSC-DS");

			if (dataSource != null) {
				connection = dataSource.getConnection();
			}
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}

	public static Connection getConnection() {
		return (connection != null) ? connection : getDBConnection();
	}

	public static ResultSet getAllStations(Connection connection) {
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery("select * from stations");
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllStations: "
					+ sqle.getMessage());
			return rs;
		}
		return rs;
	}

	public static ResultSet getAllStations(String direction, String transit,
			Connection connection) {
		ResultSet rs = null;
		try {
			PreparedStatement pstmt = connection
					.prepareStatement("select * from stations where direction=? and transit=?");
			pstmt.setString(1, direction);
			pstmt.setString(2, transit);
			rs = pstmt.executeQuery();
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllStations: "
					+ sqle.getMessage());
			return rs;
		}
		return rs;
	}

	public static CardBean searchCard(String nfc_id, Connection connection) {

		CardBean card = new CardBean();

		try {
			PreparedStatement pstmt = connection
					.prepareStatement("SELECT * FROM Card where nfc_id=?");
			pstmt.setString(1, nfc_id);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				card.setName(rs.getString("name"));
				card.setNfc_id(rs.getString("nfc_id"));
				card.setBalance(rs.getString("balance"));
				card.setStatus(rs.getString("status"));
			}
		} catch (SQLException sqle) {
			System.out.println("SQLException - searchCard: "
					+ sqle.getMessage());
			return card;
		}
		return card;
	}

	public static int updateStation(int passengers, int id,
			Connection connection) {
		int updated = 0;
		try {
			connection.setAutoCommit(false);
			PreparedStatement pstmt = connection
					.prepareStatement("update Stations set passengers = ? where station_id = ?");
			pstmt.setInt(1, passengers);
			pstmt.setInt(2, id);
			updated = pstmt.executeUpdate();
			connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - updateStation: "
					+ sqle.getMessage());

			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Update Connection Rollback - "
						+ sql.getMessage());
			}
			return updated;
		}
		return updated;
	}

	public static int updateStationColors(Connection connection) {
		int updated = 0;
		try {
			
			connection.setAutoCommit(false);
			PreparedStatement pstmt1 = connection
					.prepareStatement("update Stations set color = '#e30015' where passengers >= 200");
			updated = pstmt1.executeUpdate();
			PreparedStatement pstmt2 = connection
					.prepareStatement("update Stations set color = '#e0e300' where passengers >= 100 and passengers < 200");
			updated = pstmt2.executeUpdate();
			PreparedStatement pstmt3 = connection
					.prepareStatement("update Stations set color = '#5dbf22' where passengers < 100");
			updated = pstmt3.executeUpdate();
			PreparedStatement pstmt4 = connection
					.prepareStatement("update Stations set curstatus = 'Heavy' where passengers >= 200");
			updated = pstmt4.executeUpdate();
			PreparedStatement pstmt5 = connection
					.prepareStatement("update Stations set curstatus = 'Moderate' where passengers >= 100 and passengers < 200");
			updated = pstmt5.executeUpdate();
			PreparedStatement pstmt6 = connection
					.prepareStatement("update Stations set curstatus = 'Light' where passengers < 100");
			updated = pstmt6.executeUpdate();
			connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - updateStationColors: "
					+ sqle.getMessage());

			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Update Connection Rollback - "
						+ sql.getMessage());
			}
			return updated;
		}
		return updated;
	}
	

	public static int updateAnnouncement(String announcement, int id,
			Connection connection) {
		int updated = 0;
		try {
			connection.setAutoCommit(false);
			PreparedStatement pstmt = connection
					.prepareStatement("update Stations set announcement = ? where station_id = ?");
			pstmt.setString(1, announcement);
			pstmt.setInt(2, id);
			updated = pstmt.executeUpdate();
			connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - updateAnnouncement: "
					+ sqle.getMessage());

			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Update Connection Rollback - "
						+ sql.getMessage());
			}
			return updated;
		}
		return updated;
	}
	

	public static ResultSet getAllAverages2014(String ee, int id1, int id2, Connection connection) {
		ResultSet rs = null;
		try {
			
			PreparedStatement pstmt = connection
					.prepareStatement("SELECT * FROM daily2014 where entryexit=? and station_id > ? and station_id < ?");
			pstmt.setString(1, ee);
			pstmt.setInt(2, id1);
			pstmt.setInt(3, id2);
			rs = pstmt.executeQuery();
			
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllAverages2014: "
					+ sqle.getMessage());
			return rs;
		}
		return rs;
	}

	public static ResultSet getAllAveragesToday(String ee, int id1, int id2, Connection connection) {
		ResultSet rs = null;
		try {
			PreparedStatement pstmt = connection
					.prepareStatement("SELECT * FROM today where entryexit=? and station_id > ? and station_id < ?");
			pstmt.setString(1, ee);
			pstmt.setInt(2, id1);
			pstmt.setInt(3, id2);
			rs = pstmt.executeQuery();
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllAveragesToday: "
					+ sqle.getMessage());
			return rs;
		}
		return rs;
	}
	/*
	 * public static boolean addEmployee(EmployeeBean employee, Connection
	 * connection) {
	 * 
	 * try { PreparedStatement pstmt =
	 * connection.prepareStatement(INSERT_EMPLOYEE); pstmt.setString(1,
	 * employee.getLastName()); pstmt.setString(2, employee.getFirstName());
	 * pstmt.setString(3, employee.getPosition()); pstmt.setString(4,
	 * employee.getDepartment()); pstmt.executeUpdate(); // execute insert
	 * statement } catch (SQLException sqle) {
	 * System.out.println("SQLException - addEmployee: " + sqle.getMessage());
	 * return false; } return true; }
	 * 
	 * public static EmployeeBean searchEmployee(int id, Connection connection)
	 * {
	 * 
	 * EmployeeBean employee = new EmployeeBean();
	 * 
	 * try { PreparedStatement pstmt =
	 * connection.prepareStatement(SEARCH_EMPLOYEE); pstmt.setInt(1, id);
	 * ResultSet rs = pstmt.executeQuery();
	 * 
	 * while (rs.next()) { employee.setLastName(rs.getString("lastname"));
	 * employee.setFirstName(rs.getString("firstname"));
	 * employee.setPosition(rs.getString("position"));
	 * employee.setDepartment(rs.getString("department")); } } catch
	 * (SQLException sqle) {
	 * System.out.println("SQLException - searchEmployee: " +
	 * sqle.getMessage()); return employee; } return employee; }
	 * 
	 * 
	 * 
	 * 
	 * public static synchronized int deleteEmployee(int id, Connection
	 * connection) { int updated = 0;
	 * 
	 * try { connection.setAutoCommit(false); PreparedStatement pstmt =
	 * connection.prepareStatement(DELETE_EMPLOYEE); pstmt.setInt(1, id);
	 * updated = pstmt.executeUpdate(); connection.commit(); } catch
	 * (SQLException sqle) {
	 * System.out.println("SQLException - deleteEmployee: " +
	 * sqle.getMessage());
	 * 
	 * try { connection.rollback(); } catch (SQLException sql) {
	 * System.err.println("Error on Delete Connection Rollback - " +
	 * sql.getMessage()); } return updated; } return updated; }
	 */
}
