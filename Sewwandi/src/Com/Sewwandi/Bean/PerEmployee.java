package Com.Sewwandi.Bean;

public class PerEmployee {
	
	String employeeId ;
	String firstname  ;
	String lastname   ;
	String phoneNo  ;
	String designation  ;
	String basicSalary  ;
	String countFull  ;
	String countHalf  ;
	String OT ;
	
	public PerEmployee(String employeeId, String firstname, String lastname, String phoneNo, String designation,
			String basicSalary, String countFull, String countHalf, String oT) {


		this.employeeId = employeeId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.phoneNo = phoneNo;
		this.designation = designation;
		this.basicSalary = basicSalary;
		this.countFull = countFull;
		this.countHalf = countHalf;
		OT = oT;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
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

	public String getCountFull() {
		return countFull;
	}

	public void setCountFull(String countFull) {
		this.countFull = countFull;
	}

	public String getCountHalf() {
		return countHalf;
	}

	public void setCountHalf(String countHalf) {
		this.countHalf = countHalf;
	}

	public String getOT() {
		return OT;
	}

	public void setOT(String oT) {
		OT = oT;
	}
	
	
	
}
