package kr.ac.jbnu.se.advweb.product.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.ac.jbnu.se.advweb.product.model.Product;
import kr.ac.jbnu.se.advweb.product.model.UserAccount;

public class DBUtils {

	public static UserAccount findUser(Connection conn, //
			String userName, String password) throws SQLException {

		String sql = "Select * from User_Account a " //
				+ " where a.User_Name = ? and a.password= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			UserAccount user = new UserAccount(null, null, null, null, null, null, null);
			user.setUserName(userName);
			user.setPassword(password);
			return user;
		}
		return null;
	}

	public static UserAccount findUser(Connection conn, String userName) throws SQLException {

		String sql = "Select * from User_Account a "//
				+ " where a.User_Name = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String password = rs.getString("Password");
			UserAccount user = new UserAccount(null, null, null, null, null, null, null);
			user.setUserName(userName);
			user.setPassword(password);
			return user;
		}
		return null;
	}
	
	public static String findID(Connection conn, String userName) throws SQLException {

		String sql = "Select a.userName from User_Account a where a.User_Name = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);

		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {
			String name = rs.getString("userName");
			if(name == userName){
				return "PASS";
			}	
		}
		return "FALSE";
	}
	

	public static List<Product> queryProduct(Connection conn) throws SQLException {
		String sql = "Select a.Code, a.Name, a.Price from Product a ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			String pCode = rs.getString("Code");
			String pName = rs.getString("Name");
			float pPrice = rs.getFloat("Price");
			Product product = new Product();
			product.setpCode(pCode);
			product.setpName(pName);
			product.setpPrice(pPrice);
			list.add(product);
		}
		return list;
	}

	public static Product findProduct(Connection conn, String pCode) throws SQLException {
		String sql = "Select a.Code, a.Name, a.Price from Product a where a.Code=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, pCode);

		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {
			String pName = rs.getString("Name");
			float pPrice = rs.getFloat("Price");
			Product product = new Product(pCode, pName, pPrice);
			return product;
		}
		return null;
	}

	public static void updateProduct(Connection conn, Product product) throws SQLException {
		String sql = "Update Product set Name =?, Price=? where Code=? ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, product.getpName());
		pstm.setFloat(2, product.getpPrice());
		pstm.setString(3, product.getpCode());
		pstm.executeUpdate();
	}

	public static void insertProduct(Connection conn, Product product) throws SQLException {
		String sql = "Insert into Product(Code, Name,Price) values (?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, product.getpCode());
		pstm.setString(2, product.getpName());
		pstm.setFloat(3, product.getpPrice());

		pstm.executeUpdate();
	}
	
	public static void insertUser(Connection conn, UserAccount userAccount) throws SQLException {
		String sql = "Insert into User_account(User_name, Password, Name, Department, Answer, Address, phone) values (?,?,?,?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, userAccount.getUserName());
		pstm.setString(2, userAccount.getPassword());
		pstm.setString(3, userAccount.getName());
		pstm.setString(4, userAccount.getDepartment());
		pstm.setString(5, userAccount.getAnswer());
		pstm.setString(6, userAccount.getAddress());
		pstm.setString(7, userAccount.getPhone());

		pstm.executeUpdate();
	}

	public static void deleteProduct(Connection conn, String pCode) throws SQLException {
		String sql = "Delete From Product where Code= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, pCode);

		pstm.executeUpdate();
	}

}