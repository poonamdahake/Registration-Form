package com.login.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;	
	private String dob;
	private String gender;
	private String streetAddress;
	private String city;
	private String state;
	private String loginId;
	private String password;
	
	public User() {
		super();	
	}
	public User(int id, String name, String dob, String gender, String streetAddress, String city, String state,
			String loginId, String password) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.gender = gender;
		this.streetAddress = streetAddress;
		this.city = city;
		this.state = state;
		this.loginId = loginId;
		this.password = password;
	}
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getDob() {
		return dob;
	}
	public String getGender() {
		return gender;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public String getLoginId() {
		return loginId;
	}
	public String getPassword() {
		return password;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "User [id=" + id + " , name=" + name + ",  dob=" + dob+ ", gender=" + gender + ", streetAddress=" + streetAddress + " ,city=" + city +", "
				+ "state=" + state +", loginId=" + loginId +",password=" + password + "]";
	}
	


}