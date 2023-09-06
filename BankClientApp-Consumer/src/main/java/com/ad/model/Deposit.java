package com.ad.model;


public class Deposit {
private String name;
private String branch;
private Long amount;
private Long accNo;
private String email;
//0-param constructor
public Deposit() {
	System.out.println("Deposit.Deposit()-0-param constructor");
}
//param constructor
public Deposit(String name, String branch, Long amount, Long accNo, String email) {
	System.out.println("Deposit.Deposit()-param constructor");
	this.name = name;
	this.branch = branch;
	this.amount = amount;
	this.accNo = accNo;
	this.email = email;
}
//toString
@Override
public String toString() {
	return "Deposit [name=" + name + ", branch=" + branch + ", amount=" + amount + ", accNo=" + accNo + ", email="
			+ email + "]";
}
//getters and setters
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBranch() {
	return branch;
}
public void setBranch(String branch) {
	this.branch = branch;
}
public Long getAmount() {
	return amount;
}
public void setAmount(Long amount) {
	this.amount = amount;
}
public Long getAccNo() {
	return accNo;
}
public void setAccNo(Long accNo) {
	this.accNo = accNo;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

}
