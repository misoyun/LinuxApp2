package com.big2018.beans;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable      //request 상에서 데이터를 옮겨가는 역할 (VO역할)
{
	private String id;
	private String pw;
	
	
	private String name;
	private int age;
	private String birthday;
	
		
	
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
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBirthday() {
		return birthday;
	}
	
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	
}
