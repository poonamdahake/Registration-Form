package com.login.entity;

public class UserLogin {

	
	private String loginId;
	private String password;
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserLogin [loginId=" + loginId + ", password=" + password + "]";
	}
	public UserLogin(String loginId, String password) {
		super();
		this.loginId = loginId;
		this.password = password;
	}
	public UserLogin() {
		super();
		
	}
	
}
