package Com.Sewwandi.Bean;

public class empLeaveBean {

	private String ID;
	private String name;
	private String empID;
	private String designation;
	private String date;
	private String type;
	private String description;
	
	
	public empLeaveBean(String ID,String name, String EmpID, String designation, String date, String type, String description) {
		
		this.ID = ID;
		this.name = name;
		this.empID = EmpID;
		this.designation = designation;
		this.date = date;
		this.type = type;
		this.description = description;
	}


	public String getID() {
		return ID;
	}


	public void setID(String iD) {
		ID = iD;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmpID() {
		return empID;
	}


	public void setEmpID(String empID) {
		this.empID = empID;
	}


	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}



}