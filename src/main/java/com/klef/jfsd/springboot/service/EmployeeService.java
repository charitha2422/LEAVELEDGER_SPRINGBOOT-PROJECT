package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveDetails;

public interface EmployeeService {
	public String empreg(Employee e);
	public Employee checkemplogin(String e,String pwd);
	public String updateemp(Employee e);
	public Employee displayempbyId(int id);
	public String insertempleavedetails(LeaveDetails l);
	public  List<LeaveDetails> leavedetails(String email);

}
