package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	 @Query("select e from Employee e where e.email=?1 and e.password=?2")//here email and password are the preoperties in Employee Model class
	 public Employee checkemplogin(String e,String pwd);
	 
	 @Query("update Employee e set e.status=?1 where e.id=?2")
	 @Modifying
	 @Transactional
	 public int updateempstatus(String status,int id);
	 
}
