package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.SignupDTO;

public class SignupDAO {

	public boolean insertAccount(SignupDTO signup) throws SQLException {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DBConnection.getConnection();
			String sql = "INSERT INTO accounts (mail, pass, name) VALUES (?, ?, ?)";
			statement = connection.prepareStatement(sql);

			statement.setString(1, signup.getMail());
			statement.setString(2, signup.getPass());
			statement.setString(3, signup.getName());
						
			int rowsInserted = statement.executeUpdate();
			return rowsInserted > 0;

		} finally {
			if (statement != null) statement.close();
			if (connection != null)	connection.close();
		}
	}
}
