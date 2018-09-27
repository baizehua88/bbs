package com.bai.model;

public class User {
	private String id;
	private String name;
	private String password;
	private String newpassword;
	private int state;
	private String status;
	private int exstate;
	private String exstatus;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", state=" + state + "]";
	}
	public String getStatus() {
		if(state==0){
			status="管理员";
		}else if (state==1) {
			status="正常";
		}else {
			status="禁言";
		}
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getExstate() {
		
		if(state==0){
			exstate=0;
		}else if (state==1) {
			exstate=2;
		}else {
			exstate=1;
		}
		return exstate;
	}
	public void setExstate(int exstate) {
		this.exstate = exstate;
	}
	public String getExstatus() {
		if(state==0){
			exstatus="管理员";
		}else if (state==1) {
			exstatus="禁言";
		}else {
			exstatus="解封";
		}
		return exstatus;
	}
	public void setExstatus(String exstatus) {
		this.exstatus = exstatus;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

}
