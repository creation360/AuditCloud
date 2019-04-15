package com.c360.auditcloud.model;
/***
 * Login Model class to know the model of Login data
 * @author Priyaa Thavasimani
 * @date 11 Apr 2019
 *
 */
public class Login {
	private String email;
	private String password;
	private String password_hash;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword_hash() {
		return password_hash;
	}

	public void setPassword_hash(String password_hash) {
		this.password_hash = password_hash;
	}
}