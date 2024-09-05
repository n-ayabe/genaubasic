package dto;

public class SignupDTO {

	private int userId;
	private String mail;
	private String pass;
	private String name;

	public SignupDTO(int userId, String mail, String pass, String name) {
		this.userId = userId;
		this.mail = mail;
		this.pass = pass;
		this.name = name;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
