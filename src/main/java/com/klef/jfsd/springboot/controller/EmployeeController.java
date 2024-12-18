package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveDetails;
import com.klef.jfsd.springboot.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;
	@PostMapping("empreg")
	public String employeereg(HttpServletRequest request)
	{
		String name=request.getParameter("name");//here name is value of name attribute in signup form of employee
		String g=request.getParameter("gender");//here gender is value of name attribute in signup form of employee
		String email=request.getParameter("email");
		String ph=request.getParameter("phone");
		String a=request.getParameter("address");
		String doj=request.getParameter("doj");
		String dep=request.getParameter("department");
		String loc=request.getParameter("location");
		String pwd=request.getParameter("password");
		
		Employee e=new Employee();
		e.setContact(ph);
		e.setDateofjoining(doj);
		e.setDepartment(dep);
		e.setEmail(email);
		e.setGender(g);
		e.setLocation(loc);
		e.setName(name);
		e.setPassword(pwd);
		e.setStatus("Registered");
		
		employeeService.empreg(e);
		return  "emplogin";
		//we can return jsp files using ModelAndViewObj or String if we keep string the controller by default consider emplogin as emplogin.jsp if we need to return string msg then use @ResponseBody
	}
	
	@PostMapping("checkemplogin")
	public ModelAndView checkemplogin(HttpServletRequest request)
	{
		String email=request.getParameter("email");
		String pwd=request.getParameter("password");
		ModelAndView mv=new ModelAndView();
		Employee e=employeeService.checkemplogin(email, pwd);
		if(e==null)
		{
			mv.setViewName("emplogin");
			mv.addObject("msg", "Login Failed!!");
		}
		else if(e.getStatus().equals("Registered"))
		{
			mv.setViewName("emplogin");
			mv.addObject("msg", "Waiting for Approval of Admin!!");
		}
		else
		{
			mv.setViewName("empdashboard");
			HttpSession session= request.getSession();
			session.setAttribute("employee", e);
			
		}
		return mv;
			
	}
	@GetMapping("updateemp")
	public ModelAndView updateemp()
	{
		
		ModelAndView mv=new ModelAndView();
	    mv.setViewName("updateempprofile");
	    return mv;
	
	} 
	@PostMapping("updateempprofile")
	public ModelAndView updateempprofile(HttpServletRequest request)
	{
		 ModelAndView mv=new ModelAndView();
		 try
		 {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String ph=request.getParameter("phone");
		String dep=request.getParameter("department");
		String loc=	request.getParameter("location");
		String pwd=request.getParameter("password");
		
		Employee e=new Employee();
		e.setId(id);
		e.setName(name);
		e.setEmail(email);
		e.setContact(ph);
		e.setLocation(loc);
		e.setPassword(pwd);
		
		String msg=employeeService.updateemp(e);
	Employee emp=	employeeService.displayempbyId(id);
	   HttpSession session= request.getSession();
	   session.setAttribute("employee", emp);
	 
	         mv.setViewName("updatesuccess");
	         mv.addObject("msg", msg);
		 }
		 catch(Exception e)
		 {
			 mv.setViewName("updatefail");
		 }
		 return mv;
		
	}
	
	@PostMapping("empleaverequest")
	public ModelAndView employeeleavedetails(HttpServletRequest request)
	{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String s=request.getParameter("sdate");
		String e=request.getParameter("edate");
		String type=request.getParameter("ltype");
		String reason=request.getParameter("lreason");
		LeaveDetails l = new  LeaveDetails();
		l.setEmail(email);
		l.setEnddate(e);
		l.setLeaveType(type);
		l.setName(name);
		l.setReason(reason);
		l.setStartdate(s);
		l.setStatus("Waiting");
		String msg=employeeService.insertempleavedetails(l);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("empleaverequest");
		return mv;
	}
	
	
	@GetMapping("empleaves")
	public ModelAndView empleaves(HttpServletRequest request)
	{
	 ModelAndView mv=new ModelAndView();
	 HttpSession session=	request.getSession();
	 Employee e=(Employee)   session.getAttribute("employee");
	 List<LeaveDetails>lelist=	employeeService.leavedetails(e.getEmail());
	 mv.setViewName("myleaves");
	 mv.addObject("lelist", lelist);
	 return mv;
	}
	
	
	
	
	
	
}
