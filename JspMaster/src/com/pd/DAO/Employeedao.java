package com.pd.DAO;

import java.sql.SQLException;
import java.util.List;

import com.pd.model.Employee;

public interface Employeedao {
	public List<Employee> getall() throws SQLException;
	
	public Employee getaEmployeeById(int id) throws SQLException;
	
	public void addEmployee(Employee em) throws SQLException;
	
	public int updateemployee(Employee e) throws SQLException;
	
	public boolean deleteemployee(int id) throws SQLException;

}
