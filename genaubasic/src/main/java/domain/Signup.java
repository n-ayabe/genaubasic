package domain;

import java.io.Serializable;

public class Signup implements Serializable {
	private static final long serialVersionUID = 1L;

	private String mail;
	private String pass;
	private String name;

	public Signup(String mail, String pass, String name) {
		this.mail = mail;
		this.pass = pass;
		this.name = name;
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
