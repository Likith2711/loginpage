package com.cms.to;

import java.util.Date;

public class ComplainsTO {

	private int cID;
	private String complaintType;
	private String complaintsDesc;
	private String status;
	private String comment;
	private Date createdDate;
	private Date closedDate;
	private int wardsID;
	private int uesrRegID;
	private int loginID;
	private String address;

	public int getcID() {
		return cID;
	}

	public void setcID(int cID) {
		this.cID = cID;
	}

	public String getComplaintType() {
		return complaintType;
	}

	public void setComplaintType(String complaintType) {
		this.complaintType = complaintType;
	}

	public String getComplaintsDesc() {
		return complaintsDesc;
	}

	public void setComplaintsDesc(String complaintsDesc) {
		this.complaintsDesc = complaintsDesc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getClosedDate() {
		return closedDate;
	}

	public void setClosedDate(Date closedDate) {
		this.closedDate = closedDate;
	}

	public int getWardsID() {
		return wardsID;
	}

	public void setWardsID(int wardsID) {
		this.wardsID = wardsID;
	}

	public int getUesrRegID() {
		return uesrRegID;
	}

	public void setUesrRegID(int uesrRegID) {
		this.uesrRegID = uesrRegID;
	}

	public int getLoginID() {
		return loginID;
	}

	public void setLoginID(int loginID) {
		this.loginID = loginID;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
