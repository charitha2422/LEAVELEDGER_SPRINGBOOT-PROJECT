package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.LeaveDetails;

import jakarta.transaction.Transactional;
@Repository
public interface EmployeeLeaveRepository extends JpaRepository<LeaveDetails, Integer> {
	@Query("update LeaveDetails l set l.status=?1 where  l.id=?2")
	@Modifying
	@Transactional
	public int updateleavestatus(String status,int id);
	
	@Query("select l from LeaveDetails l where l.email=?1 ")
	public List<LeaveDetails> empleavedetails(String email);

}
