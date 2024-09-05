package service;

import java.sql.SQLException;

import dao.SignupDAO;
import dto.SignupDTO;

public class SignupService {
	private SignupDAO signupDAO = new SignupDAO();
	
	public boolean addAccount(String mail, String pass, String name) throws SQLException {
		SignupDTO signupDTO = new SignupDTO(0, mail, pass, name);		
		return signupDAO.insertAccount(signupDTO);
	}

}
