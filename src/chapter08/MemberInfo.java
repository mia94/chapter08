package chapter08;

import java.util.Date;

public class MemberInfo {
	private String id;
	private String password;
	private String name;
	private String address;
	private Date registerDate;
	private String email;
	private String testTest;
	
	//get, set
	
	public String getId() {
		return id;
	}
	public String getTestTest() {
		return testTest;
	}
	public void setTestTest(String testTest) {
		this.testTest = testTest;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	//멤버변수 없이 get set 사용하는 것 test
	public String getTestId(){
		return id + name;
	}
	
}














