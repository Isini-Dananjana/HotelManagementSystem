package javabean;


public class Result {

	
	
	
	private int id;
	private String student_class;
	private String student_roll;
	private String mark1;
	private String mark2;
	private String mark3;
	private String mark4;
	private String mark5;
	private String mark6;
	private String mark7;
	private String mark8;
	private String mark9;
	private String mark10;
	private double total;
	private double average;
	
	
	
	
	public Result(int id, String student_class, String student_roll, String mark1, String mark2, String mark3,
			String mark4, String mark5, String mark6, String mark7, String mark8, String mark9, String mark10,
			double total , double average) {
		super();
		this.id = id;
		this.student_class = student_class;
		this.student_roll = student_roll;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
		this.mark4 = mark4;
		this.mark5 = mark5;
		this.mark6 = mark6;
		this.mark7 = mark7;
		this.mark8 = mark8;
		this.mark9 = mark9;
		this.mark10 = mark10;
		this.total = total;
		this.average = average;
	}

	public Result(String student_class,String student_roll, String mark1, String mark2, String mark3, String mark4, String mark5,
			String mark6, String mark7, String mark8, String mark9, String mark10) {
		super();
		this.student_class = student_class;
		this.student_roll = student_roll;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
		this.mark4 = mark4;
		this.mark5 = mark5;
		this.mark6 = mark6;
		this.mark7 = mark7;
		this.mark8 = mark8;
		this.mark9 = mark9;
		this.mark10 = mark10;
	}
	public Result(int id,String student_class, String student_roll, String mark1, String mark2, String mark3, String mark4, String mark5,
			String mark6, String mark7, String mark8, String mark9, String mark10) {
		super();
		this.id = id;
		this.student_class = student_class;
		this.student_roll = student_roll;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
		this.mark4 = mark4;
		this.mark5 = mark5;
		this.mark6 = mark6;
		this.mark7 = mark7;
		this.mark8 = mark8;
		this.mark9 = mark9;
		this.mark10 = mark10;
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getStudent_class() {
		return student_class;
	}
	public void setStudent_classl(String student_class) {
		this.student_class = student_class;
	}
	
	public String getStudent_roll() {
		return student_roll;
	}
	public void setStudent_roll(String student_roll) {
		this.student_roll = student_roll;
	}
	public String getMark1() {
		return mark1;
	}
	public void setMark1(String mark1) {
		this.mark1 = mark1;
	}
	public String getMark2() {
		return mark2;
	}
	public void setMark2(String mark2) {
		this.mark2 = mark2;
	}
	public String getMark3() {
		return mark3;
	}
	public void setMark3(String mark3) {
		this.mark3 = mark3;
	}
	public String getMark4() {
		return mark4;
	}
	public void setMark4(String mark4) {
		this.mark4 = mark4;
	}
	public String getMark5() {
		return mark5;
	}
	public void setMark5(String mark5) {
		this.mark5 = mark5;
	}
	public String getMark6() {
		return mark6;
	}
	public void setMark6(String mark6) {
		this.mark6 = mark6;
	}
	public String getMark7() {
		return mark7;
	}
	public void setMark7(String mark7) {
		this.mark7 = mark7;
	}
	public String getMark8() {
		return mark8;
	}
	public void setMark8(String mark8) {
		this.mark8 = mark8;
	}
	public String getMark9() {
		return mark9;
	}
	public void setMark9(String mark9) {
		this.mark9 = mark9;
	}
	public String getMark10() {
		return mark10;
	}
	public void setMark10(String mark10) {
		this.mark10 = mark10;
	}
	
	
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total= total;
	}
	
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average= average;

	}
}
