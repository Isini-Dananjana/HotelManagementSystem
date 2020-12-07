package Com.Sewwandi.Bean;

public class AttenBean {
	
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
	private String Clockout;
	private String work_hrs;
	private String non_OT;
	private String OT;
	
	
	
	public AttenBean() {
		super();
	}



	public AttenBean(String attendanceId, String date, String employeeId, String firstName, String lastName,
			String section, String designation, String status, String clockin, String clockout, String work_hrs,
			String non_OT, String oT,String basicsalary) {
		super();
		this.attendanceId = attendanceId;
		this.date = date;
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.section = section;
		this.designation = designation;
		this.status = status;
		Clockin = clockin;
		Clockout = clockout;
		this.work_hrs = work_hrs;
		this.non_OT = non_OT;
		OT = oT;
		this.basicsalary = basicsalary;
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



	public String getClockout() {
		return Clockout;
	}



	public void setClockout(String clockout) {
		Clockout = clockout;
	}



	public String getWork_hrs() {
		return work_hrs;
	}



	public void setWork_hrs(String work_hrs) {
		this.work_hrs = work_hrs;
	}



	public String getNon_OT() {
		return non_OT;
	}



	public void setNon_OT(String non_OT) {
		this.non_OT = non_OT;
	}



	public String getOT() {
		return OT;
	}



	public void setOT(String oT) {
		OT = oT;
	}
	
	public String getBasicsalary() {
		return basicsalary;
	}



	public void setBasicsalary(String basicsalary) {
		this.basicsalary = basicsalary;
	}



	
	
}
