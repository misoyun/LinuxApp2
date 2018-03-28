
package com.example.container;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class User {

	private Long no;
	private String name;
	private Friend friend;  //다른 클래스의 객체 참조변수가 필드값으로 옴 (포함관계)
	private ArrayList<Friend> friends;  //복합 객체의 주입!
	
	public User() {}
	
	public User(Long no, String name) {
		super();
		this.no = no;
		this.name = name;
	}
	
	
	
	public ArrayList<Friend> getFriends() {
		return friends;
	}

	public void setFriends(ArrayList<Friend> friends) {
		this.friends = friends;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.no + this.name + this.friend + this.friends;
	}

	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Friend getFriend() {
		return friend;
	}
	public void setFriend(Friend friend) {
		this.friend = friend;
	}
	
	
	
	
	
}
