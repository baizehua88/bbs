package com.bai.model;

public class Block {
	private String bid;
	private String bname;
	private String bdesc;
	private String uid;
	private String btime;
	private int bnum;
	
	
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBdesc() {
		return bdesc;
	}
	public void setBdesc(String bdesc) {
		this.bdesc = bdesc;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getBtime() {
		return btime;
	}
	public void setBtime(String btime) {
		this.btime = btime;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	
	
	@Override
	public String toString() {
		return "Block [bid=" + bid + ", bname=" + bname + ", bdesc=" + bdesc + ", uid=" + uid + ", btime=" + btime
				+ ", bnum=" + bnum +  "]";
	}
}
