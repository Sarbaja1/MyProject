package controller.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.PasswordEncryptWithAes;
import model.Product;
import model.User;
import resources.Constants;

public class DbConnection {
	public Connection getConnection() {
		try {
			Class.forName(Constants.DRIVER_NAME);
			Connection connection = DriverManager.getConnection(
					Constants.DB_URL,
					Constants.DB_USER_NAME,
					Constants.DB_USER_PASSWORD);
			return connection;
		}
		catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public ResultSet selectWhereQuery(String query, String id) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, id);
				ResultSet result = statement.executeQuery();
				return result;
			} catch (SQLException e) {
				return null;
			}
		}else {
			return null;
		}
	}

	public Boolean isUserAlreadyRegistered(String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(Constants.CHECK_LOGIN_INFO);
				statement.setString(1, username);
				ResultSet result = statement.executeQuery();
				if(result.next()) {
					return true;		
				}else return false;
			} catch (SQLException e) { return null; }
		}else { return null; }
						
	}
	
	public Boolean isUserRegistered(String query, String username, String password) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, username);
				ResultSet result = statement.executeQuery();
				if(result.next()) {
					String userDb = result.getString("username");
					String passwordDb  = result.getString("password");
					String decryptedPwd = null;
					try {
						decryptedPwd = PasswordEncryptWithAes.decrypt(passwordDb, username);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					if(decryptedPwd!=null && userDb.equals(username) && decryptedPwd.equals(password)) return true;
					else return false;
				}else return false;
			} catch (SQLException e) { return null; }
		}else { return null; }
	}
		
	public int isAdmin(String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(Constants.IS_USER);
				statement.setString(1, username);
				ResultSet result = statement.executeQuery();
				if(result.next()) {
					int role = result.getInt("is_Admin");
					if(role == Constants.ADMIN) return 1;
					else return 0;
				}
				else return -1;
			} catch (SQLException e) { return -2; }
		}else { return -3; }
	}
	
	public int registerUser(String query, User userModel) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				if(isUserAlreadyRegistered(userModel.getUsername())) return -1;
				
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, userModel.getFirstName());
				statement.setString(2, userModel.getLastName());
				statement.setString(3, userModel.getUsername());
				statement.setString(4, userModel.getEmail());
				statement.setString(5, PasswordEncryptWithAes.encrypt(
						userModel.getUsername(), userModel.getPassword()));
				statement.setString(6, userModel.getRole());
				statement.setString(7, userModel.getImageUrlFromPart());

				int result = statement.executeUpdate();
				if(result>=0) return 1;
				else return 0;
			} catch (Exception e) { e.printStackTrace(); return -2;}
		}else { return -3; }
	}
	
	public Boolean updateUser(String query, String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, username);
				int result = statement.executeUpdate();
				if(result>=0)return true;
				else return false;
			} catch (SQLException e) { return false; }
		}else { return false; }
	}

	public Boolean deleteUser(String query, String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, username);
				int result = statement.executeUpdate();
				if(result>=0)return true;
				else return false;
			} catch (SQLException e) { return null; }
		}else { return null; }
	}
	
	public int registerProd(String query, Product prodModel) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, prodModel.getprodName());
				statement.setString(2, prodModel.getprice());
				statement.setString(3, prodModel.getquantity());
				statement.setString(4, prodModel.getbrand());
				statement.setString(5, prodModel.getImageUrlFromPart());

				int result = statement.executeUpdate();
				if(result>=0) return 1;
				else return 0;
			} catch (Exception e) { e.printStackTrace(); return -2;}
		}else { return -3; }
	}

	
}