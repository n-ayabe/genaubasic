package dto;

public class LoginDTO {

	private int user_id;
	private String mail;
	private String pass;
	private String name;
	
	public LoginDTO(int user_id, String mail, String pass, String name) {
		this.user_id = user_id;
		this.mail = mail;
		this.pass = pass;
		this.name = name;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
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