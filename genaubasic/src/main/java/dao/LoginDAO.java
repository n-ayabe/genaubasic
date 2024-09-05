package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.LoginDTO;

public class LoginDAO {
				
    public LoginDTO findByMailAndPass(String mail, String pass) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnection.getConnection();
            String sql = "SELECT * FROM logins WHERE mail = ? AND pass = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, mail);
            statement.setString(2, pass);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                return new LoginDTO(resultSet.getInt("user_id"), resultSet.getString("mail"), resultSet.getString("pass"), resultSet.getString("name"));
            } else {
                return null;
            }
        } finally {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }
    }

}
