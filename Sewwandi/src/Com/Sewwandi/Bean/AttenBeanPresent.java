package Com.Sewwandi.Bean;

public class AttenBeanPresent {
	
	private String attendanceId;
	private String date;
	private String employeeId;
	private String firstName;
	private String lastName;
	private String section;
	private String designation;
	
	private String basicsalary;
	private String status;
	private String Clockin;

	
	
	
	public AttenBeanPresent() {
		super();
	}




	public AttenBeanPresent(String attendanceId, String date, String employeeId, String firstName, String lastName,
			String section, String designation, String basicsalary, String status, String clockin) {
		super();
		this.attendanceId = attendanceId;
		this.date = date;
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.section = section;
		this.designation = designation;
		this.basicsalary = basicsalary;
		this.status = status;
		Clockin = clockin;
	}




	public String getAttendanceId() {
		return attendanceId;
	}




	public void setAttendanceId(String attendanceId) {
		this.attendanceId = attendanceId;
	}




	public String getDate() {
		return date;
	}




	public void setDate(String date) {
		this.date = date;
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




	public String getBasicsalary() {
		return basicsalary;
	}




	public void setBasicsalary(String basicsalary) {
		this.basicsalary = basicsalary;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	public String getClockin() {
		return Clockin;
	}




	public void setClockin(String clockin) {
		Clockin = clockin;
	}





	
	
}
