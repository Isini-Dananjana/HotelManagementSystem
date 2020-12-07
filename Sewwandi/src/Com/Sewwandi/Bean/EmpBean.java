package Com.Sewwandi.Bean;

public class EmpBean {
	
	private String employeeId;
	private String firstName;
	private String lastName;
	private String birthday;
	private String gender;
	private String phoneNumber;
	private String email;
	private String address;
	private String section;
	private String designation;
	private String basicSalary;
	
	
	public EmpBean() {
		super();
	}


	 


	public EmpBean(String employeeId, String firstName, String lastName, String birthday, String gender,
			String phoneNumber, String email, String address, String section, String designation, 
			String basicSalary) {
		super();
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.birthday = birthday;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.address = address;
		this.section = section;
		this.designation = designation;
		this.basicSalary = basicSalary;
	}





	public String getEmployeeId() {
		return employeeId;
	}





	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}





	public String getFirstName() {
		return firstName;
	}





	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}





	public String getLastName() {
		return lastName;
	}





	public void setLastName(String lastName) {
		this.lastName = lastName;
	}





	public String getBirthday() {
		return birthday;
	}





	public void setBirthday(String birtday) {
		this.birthday = birtday;
	}





	public String getGender() {
		return gender;
	}





	public void setGender(String gender) {
		this.gender = gender;
	}





	public String getPhoneNumber() {
		return phoneNumber;
	}





	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}





	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getAddress() {
		return address;
	}





	public void setAddress(String address) {
		this.address = address;
	}





	public String getSection() {
		return section;
	}





	public void setSection(String section) {
		this.section = section;
	}





	public String getDesignation() {
		return designation;
	}





	public void setDesignation(String designation) {
		this.designation = designation;
	}





	
	public String getBasicSalary() {
		return basicSalary;
	}





	public void setBasicSalary(String basicSalary) {
		this.basicSalary = basicSalary;
	}




 



}
