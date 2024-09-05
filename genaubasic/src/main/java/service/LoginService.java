package service;

import java.sql.SQLException;

import dao.LoginDAO;
import domain.Login;
import dto.LoginDTO;

public class LoginService {
	private LoginDAO loginDAO = new LoginDAO();

	public Login loginCheck(String mail, String pass) throws SQLException {
		LoginDTO loginDTO = loginDAO.findByMailAndPass(mail, pass);

		if (loginDTO != null && loginDTO.getPass().equals(pass) && loginDTO.getMail().equals(mail)) {
			Login login = new Login(loginDTO.getUser_id(), loginDTO.getMail(), loginDTO.getPass(), loginDTO.getName());
			return login;
		} else {
			return null;
		}
	}


}
