package com.jianZhi.ssh.web;

public class StudentLogin {

	private String username;
	private String password;

	@Override
	public String toString() {
		return "StudentLogin [username=" + username + ", password=" + password + "]";
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

}
