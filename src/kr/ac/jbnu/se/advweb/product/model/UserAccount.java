package kr.ac.jbnu.se.advweb.product.model;

public class UserAccount {


	private String userName;
	private String password;
	private String name;
	private String answer;
	private String address;
	private String department;
	private String phone;
	

	public UserAccount(String userName, String password, String name, String department, String answer, String address, String phone ) {
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.department = department;
		this.answer =answer;
		this.address= address;
		this.phone = phone;

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}