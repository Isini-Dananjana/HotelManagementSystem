package Com.Sewwandi.Bean;

public class PerEmpSalBean {
	
	private String salaryId;
	
	private String employeeId;
	private String firstName;
	
	private String section;
	private String designation;
	
	private String basicsalary;
	
	private String totOT;
	
	
	public PerEmpSalBean(String salaryId, String employeeId, String firstName, String section, String designation,
			String basicsalary, String totOT, String oTpay, String ePF, String fullLeave, String halfLeave,
			String noPay, String netSalary) {
		super();
		this.salaryId = salaryId;
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.section = section;
		this.designation = designation;
		this.basicsalary = basicsalary;
		this.totOT = totOT;
		OTpay = oTpay;
		EPF = ePF;
		this.fullLeave = fullLeave;
		this.halfLeave = halfLeave;
		this.noPay = noPay;
		NetSalary = netSalary;
	}
	
	public PerEmpSalBean() {
		super();
	}
	
	
	public String getSalaryId() {
		return salaryId;
	}
	public void setSalaryId(String salaryId) {
		this.salaryId = salaryId;
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
	public String getTotOT() {
		return totOT;
	}
	public void setTotOT(String totOT) {
		this.totOT = totOT;
	}
	public String getOTpay() {
		return OTpay;
	}
	public void setOTpay(String oTpay) {
		OTpay = oTpay;
	}
	public String getEPF() {
		return EPF;
	}
	public void setEPF(String ePF) {
		EPF = ePF;
	}
	public String getFullLeave() {
		return fullLeave;
	}
	public void setFullLeave(String fullLeave) {
		this.fullLeave = fullLeave;
	}
	public String getHalfLeave() {
		return halfLeave;
	}
	public void setHalfLeave(String halfLeave) {
		this.halfLeave = halfLeave;
	}
	public String getNoPay() {
		return noPay;
	}
	public void setNoPay(String noPay) {
		this.noPay = noPay;
	}
	public String getNetSalary() {
		return NetSalary;
	}
	public void setNetSalary(String netSalary) {
		NetSalary = netSalary;
	}
	private String OTpay;
	private String EPF;
	private String fullLeave;
	private String halfLeave;
	private String noPay;
	private String NetSalary;
	
	
	

}
