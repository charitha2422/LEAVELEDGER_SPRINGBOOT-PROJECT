package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveDetails;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EmployeeLeaveRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService{
  @Autowired
  private AdminRepository adminRepository;
  @Autowired
  private EmployeeRepository employeeRepository;
  @Autowired
  private EmployeeLeaveRepository employeeLeaveRepository;
	@Override
	public Admin checkadminlogin(String un, String pwd) {
		// TODO Auto-generated method stub
		return adminRepository.checkadminlogin(un, pwd);
	}
	@Override
	public List<Employee> viewallemps() {
		// TODO Auto-generated method stub
		return employeeRepository.findAll();
	}
	@Override
	public String updateempstatus(int id, String status) {
		// TODO Auto-generated method stub
		 employeeRepository.updateempstatus(status, id);
		 return "Status Updated Successfully";
	}
	@Override
	public List<LeaveDetails> viewallleaverequests() {
		// TODO Auto-generated method stub
		return employeeLeaveRepository.findAll();
	}
	@Override
	public String updateleavestatus(String status, int id) {
		  employeeLeaveRepository.updateleavestatus(status, id);
		return "Leave Status Updated Successfully" ;
	}
	
	public long empcount()
	{
		return employeeRepository.count();
	}
	@Override
	public long leaverequestscount() {
		// TODO Auto-generated method stub
		return employeeLeaveRepository.count();
	}
	

}
