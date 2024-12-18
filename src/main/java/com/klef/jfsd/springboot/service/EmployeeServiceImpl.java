package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveDetails;
import com.klef.jfsd.springboot.repository.EmployeeLeaveRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService{
  @Autowired
  private EmployeeRepository employeeRepository;
  @Autowired
  private EmployeeLeaveRepository employeeLeaveRepository;
	@Override
	public String empreg(Employee e) {
		
		employeeRepository.save(e);
		return "Employee Added Successfully";
	}
	@Override
	public Employee checkemplogin(String e, String pwd) {
		// TODO Auto-generated method stub
		return employeeRepository.checkemplogin(e, pwd);
	}
	@Override
	public String updateemp(Employee e) {
	Employee emp=employeeRepository.findById(e.getId()).get();
		emp.setContact(e.getContact());
		emp.setEmail(e.getEmail());
		emp.setDepartment(e.getDepartment());
		emp.setLocation(e.getLocation());
		emp.setPassword(e.getPassword());
		emp.setName(e.getName());
		return "Employee Details Updated Successfully";
	}
	@Override
	public Employee displayempbyId(int id) {
		// TODO Auto-generated method stub
		return employeeRepository.findById(id).get();
	}
	@Override
	public String insertempleavedetails(LeaveDetails l) {
		// TODO Auto-generated method stub
		employeeLeaveRepository.save(l);
		return "Employee Leave details added successfully";
	}
	@Override
	public List<LeaveDetails> leavedetails(String email) {
		// TODO Auto-generated method stub
		return employeeLeaveRepository.empleavedetails(email);
	}

}
