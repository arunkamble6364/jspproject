package com.pd.model;

public class Employee {
	private int eid;
	private String ename;
	private int depid;
	private int salary;
	private String designation;
	private int mgrid;
	private String password="root";
	
	
	public Employee(int eid, String ename, int depid, int salary, String designation, int mgrid) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.depid = depid;
		this.salary = salary;
		this.designation = designation;
		this.mgrid = mgrid;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getDepid() {
		return depid;
	}
	public void setDepid(int depid) {
		this.depid = depid;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getMgrid() {
		return mgrid;
	}
	public void setMgrid(int mgrid) {
		this.mgrid = mgrid;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", depid=" + depid + ", salary=" + salary
				+ ", designation=" + designation + ", mgrid=" + mgrid + "]";
	}
	
	public boolean isCorrect(String pass){
		return this.password.equals(pass);
		
	}

}

