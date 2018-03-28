package com.mem.vo;

public class MemberVO 
{
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return  "id :" + id + "pw :" + pw ;
	}
	private String id; 
	private String pw;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	} 
}
