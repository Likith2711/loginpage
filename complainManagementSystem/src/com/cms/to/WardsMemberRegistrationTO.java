package com.cms.to;

import java.util.Date;

public class WardsMemberRegistrationTO {
	private int wardsMemID;
	private String name;
	private String fatherName;
	private Date dob;
	private String qualification;
	private int wardID;
	private int loginID;
	private String mail;

	public int getWardsMemID() {
		return wardsMemID;
	}

	public void setWardsMemID(int wardsMemID) {
		this.wardsMemID = wardsMemID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public int getWardID() {
		return wardID;
	}

	public void setWardID(int wardID) {
		this.wardID = wardID;
	}

	public int getLoginID() {
		return loginID;
	}

	public void setLoginID(int loginID) {
		this.loginID = loginID;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

}
