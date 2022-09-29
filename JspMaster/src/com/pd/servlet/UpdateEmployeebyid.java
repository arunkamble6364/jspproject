package com.pd.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pd.DAO.EmployeedaoImpl;
import com.pd.model.Employee;

/**
 * Servlet implementation class UpdateEmployeebyid
 */
@WebServlet("/UpdateEmployeebyid")
public class UpdateEmployeebyid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployeebyid() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		try {
			Employee e=new EmployeedaoImpl().getaEmployeeById(Integer.parseInt(request.getParameter("eid")));
			
			int eid=Integer.parseInt(request.getParameter("eid"));
			String ename=request.getParameter("ename");
			int depid=Integer.parseInt(request.getParameter("depid"));
			int salary=Integer.parseInt(request.getParameter("salary"));
			String designation=request.getParameter("designation");
			int mgrid=Integer.parseInt(request.getParameter("mgrid"));
			
			if(e!=null){
				
				
				Employee emp=new Employee(eid,ename,depid,salary,designation,mgrid);
				new EmployeedaoImpl().updateemployee(emp);
			}
			
			else{
				Employee emp=new Employee(eid,ename,depid,salary,designation,mgrid);
				new EmployeedaoImpl().addEmployee(emp);
				
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("EmployeeDisplay").forward(request, response);
	}

}
