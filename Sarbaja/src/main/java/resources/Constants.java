package resources;

import java.io.File;

public class Constants {
	// Start Region: Database Configuration
	public static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
	public static final String DB_URL = "jdbc:mysql://localhost:3306/coursework_db";
	public static final String DB_USER_NAME = "root"; 		
	public static final String DB_USER_PASSWORD= ""; 
	
	public static final int ADMIN = 1;
	public static final int USER = 0;
	
	public static final String IMAGE_DIR = "School\\WEB DB\\coursework\\src\\main\\webapp\\images\\";
	public static final String IMAGE_DIR_SAVE_PATH = "D:" + File.separator + IMAGE_DIR;
	// End Region: Database Configuration
	
	// Start Region: Select Query
	public static final String CHECK_LOGIN_INFO = "SELECT username, password FROM users WHERE username = ?";
	public static final String GET_ALL_INFO = "SELECT * FROM users";
	public static final String GET_ALL_INFO_BY_ID = "SELECT * FROM users WHERE id = ?";
	public static final String IS_USER = "SELECT is_Admin FROM users WHERE username = ?";
	
	// Start Region: Insert Query
	public static final String USER_REGISTER = "INSERT INTO users"
			+ "(first_name, last_name, username, email, password, is_Admin, image)"
			+ " VALUES(?,?,?,?,?,?,?)";
	// End Region: Insert Query
	
	// Start Region: Update Query
	public static final String UPDATE_USER_INFO = "UPDATE users SET username=?, password = ? WHERE username=?";
	// End Region: Update Query
		
	// Start Region: Delete Query
	public static final String DELETE_USER = "DELETE FROM users WHERE username=?";
	// End Region: Delete Query
	
	public static final String PROD_REGISTER = "INSERT INTO products"
			+ "(prod_name, price, quantity, brand, image)"
			+ " VALUES(?,?,?,?,?)";

}