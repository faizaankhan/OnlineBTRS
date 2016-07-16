package com.bus;

import java.io.Serializable;

public class CustomerData implements Serializable {
  private String fname,lname,sex,city,phone,pswd,email;
  
  public CustomerData() {  }

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getSex() {
	return sex;
}

public void setSex(String sex) {
	this.sex = sex;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getPswd() {
	return pswd;
}

public void setPswd(String pswd) {
	this.pswd = pswd;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

}
