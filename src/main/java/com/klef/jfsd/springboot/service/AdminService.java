package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveDetails;

public interface AdminService {
   public Admin checkadminlogin(String un,String pwd);
   public List<Employee> viewallemps();
   public String  updateempstatus(int id,String status);
   public  List<LeaveDetails> viewallleaverequests();
   public String updateleavestatus(String status,int id);
   public long empcount();
   public long leaverequestscount();
}
