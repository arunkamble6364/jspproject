package com.pd.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.pd.connection.ConnectionMaster;
import com.pd.model.Employee;

public class EmployeedaoImpl implements Employeedao{

	Connection conn=null;
	@Override
	public List<Employee> getall() throws SQLException {
		// TODO Auto-generated method stub
		List<Employee> e=new ArrayList();
		 conn=ConnectionMaster.getconnection();
		PreparedStatement prep=conn.prepareStatement("select * from Employee");
		ResultSet rs=prep.executeQuery();
		while(rs.next()){
			e.add(new Employee(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5),rs.getInt(6)));
		}
		conn.close();
		return e;
	}
	
	
	@Override
	public Employee getaEmployeeById(int id) throws SQLException {
		// TODO Auto-generated method stub
		Employee emp=null;
		conn=ConnectionMaster.getconnection();
		PreparedStatement prep=conn.prepareStatement("SELECT * FROM EMPLOYEE WHERE ID=?");
		prep.setInt(1, id);
		ResultSet rs=prep.executeQuery();
		if(rs.next())
			emp=new Employee(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5),rs.getInt(6));
		conn.close();
		return emp;
	}


	@Override
	public void addEmployee(Employee em) throws SQLException {
		// TODO Auto-generated method stub
		
		conn=ConnectionMaster.getconnection();
		PreparedStatement prep=conn.prepareStatement("insert into employee values(?,?,?,?,?,?)");
		prep.setInt(1, em.getEid());
		prep.setString(2, em.getEname());
		prep.setInt(3,em.getDepid());
		prep.setInt(4,em.getSalary());
		prep.setString(5, em.getDesignation());
		prep.setInt(6, em.getMgrid());
		prep.executeUpdate();
		conn.close();
		
	
	}


	@Override
	public int updateemployee(Employee e) throws SQLException {
		// TODO Auto-generated method stub
		
		conn=ConnectionMaster.getconnection();
		PreparedStatement prep=conn.prepareStatement("update employee set ename=?,depid=?,salary=?,designation=?,mgrid=? where id=?");
		prep.setString(1,e.getEname());
		prep.setInt(2,e.getDepid());
		prep.setInt(3,e.getSalary());
		prep.setString(4,e.getDesignation());
		prep.setInt(5,e.getMgrid());
		prep.setInt(6,e.getEid());
		
		int i=prep.executeUpdate();
		conn.close();
		return i;
	}


	@Override
	public boolean deleteemployee(int id) throws SQLException {
		// TODO Auto-generated method stub
		
		conn=ConnectionMaster.getconnection();
		PreparedStatement prep=conn.prepareStatement("delete from employee where id="+id);
		boolean b=prep.execute();
		conn.close();
		return b;
	}

}
