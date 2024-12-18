
package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="empleavedetails_table")
public class  LeaveDetails

{

	 @Id //3 ways to take id manually in  springmvc
	 @GeneratedValue(strategy = GenerationType.IDENTITY) // you can take this manually also through form
	 @Column(name="emp_id")
	 private int id;
	 @Column(name="emp_name",nullable=false,length = 50)
	 private String name;
	
	 @Column(name="emp_email",nullable=false,length = 50)
	 private String email;
	 
	 @Column(name="leave_startdate",nullable=false)
	 private String startdate;
	 @Column(name="leave_enddate",nullable=false)
	 private String enddate;
	 @Column(name="emp_leaveType",nullable=false,length = 50)
	 private String leaveType;
	 @Column(name="leave_reason",nullable=false,length=80)
	 private String reason;
	 @Column(name="leave_status",nullable=false,length = 50)
	 private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	 
	 
	
	 
}
