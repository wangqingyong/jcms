package com.joshuait.entity;

import java.sql.Date;

public class User {
	public Long id;
	public String userLogin;
	public String userPass; 
	public String userNicename;  
	public String userEmail;
	public Date userRegistered;
	public String userActivationKey;
	public int userStatus;
	public String displayName;
	
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserNicename() {
		return userNicename;
	}

	public void setUserNicename(String userNicename) {
		this.userNicename = userNicename;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getUserRegistered() {
		return userRegistered;
	}

	public void setUserRegistered(Date userRegistered) {
		this.userRegistered = userRegistered;
	}

	public String getUserActivationKey() {
		return userActivationKey;
	}

	public void setUserActivationKey(String userActivationKey) {
		this.userActivationKey = userActivationKey;
	}

	public int getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	
	@Override
	public String toString() {
		return this.id + " " + this.userLogin + " " + this.userPass + " " + this.userNicename
		+ " " + this.userEmail + " " + this.userRegistered + " " +this.userActivationKey 
		+ " " + this.userStatus + " " + this.displayName;
	}

}
