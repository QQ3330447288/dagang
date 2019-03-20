package entity;

import java.sql.Date;

public class Admin {
	private int id;
	private String username;
	private String password;
	private Date logintime;

	public Admin() {
	}

	public Admin(int id, String username, String password,Date logintime) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.logintime = logintime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getLogintime() {
		return logintime;
	}

	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}

}
