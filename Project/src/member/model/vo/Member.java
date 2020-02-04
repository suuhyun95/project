package member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String email;
	private String password;
	private String name;
	private Date birthDay;
	private String phone;
	
	private Date enrollDate;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String email, String password, String name, Date birthDay, String phone, Date enrollDate) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.birthDay = birthDay;
		this.phone = phone;
		this.enrollDate = enrollDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	@Override
	public String toString() {
		return "email=" + email + ", password=" + password + ", name=" + name + ", birthDay=" + birthDay
				+ ", phone=" + phone + ", enrollDate=" + enrollDate;
	}
	
	
	
	

}
