package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveDetails;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
    @GetMapping("/")
    public String home()
    {
    	return "homepage";
    }
    
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request)
    {
    	String un=request.getParameter("auname");
    	String pwd=request.getParameter("apwd");
        Admin a=adminService.checkadminlogin(un, pwd);
        ModelAndView mv= new ModelAndView();
     
        if(a!=null)
       {
    	HttpSession session= request.getSession();
    	session.setAttribute("admin", a);
    	
    	
    	 mv.setViewName("adminhome");
    	
    	 return mv;
     }
     else
     {
    	 
    	 mv.setViewName("adminlogin");
    	 mv.addObject("msg", "Login Failed TryAgain!!");
    	 
     }
     return mv;
    	
    }
    
    @GetMapping("updateempstatus")
    public ModelAndView updateempstatus()
    {
    	ModelAndView mv= new ModelAndView();
       List<Employee>emplist=	adminService.viewallemps();
       mv.setViewName("empstatus");
       mv.addObject("emplist", emplist);
       return mv;
    }
    
    @GetMapping("updatestatus")
    public String updatestatus(@RequestParam("id") int id,@RequestParam("status") String status)
    {
    	adminService.updateempstatus(id, status);
    	return "redirect:/updateempstatus";
    }
    
    @GetMapping("viewallemps")
    public ModelAndView viewallemps()
    {
    List<Employee>emplist=	adminService.viewallemps();
    ModelAndView mv= new ModelAndView("viewemps");
    mv.addObject("emplist", emplist);
     return  mv;
    
    }
    @GetMapping("viewleaverequests")
    public ModelAndView viewleaverequests()
    {
    	ModelAndView mv= new ModelAndView();
    List<LeaveDetails>lelist=	adminService.viewallleaverequests();
    mv.setViewName("viewleavereq");
    mv.addObject("lelist", lelist);
    return mv;
    }
    
    @GetMapping("updateleavestatus")
    public String updateleavestatus(@RequestParam("id") int id,@RequestParam("status") String status)
    {
    String msg=	adminService.updateleavestatus(status, id);
     return "redirect:/viewleaverequests";
    }
    
    @GetMapping("admindashboard")
    public ModelAndView adminhome(HttpServletRequest request)
    {
    	ModelAndView mv=  new ModelAndView();
    	
      long c= adminService.empcount();
    	 
     long h=adminService.leaverequestscount();
     mv.setViewName("admindashboard");
     mv.addObject("count",c);
	 mv.addObject("lcount", h);
	 return mv;
    }
    
}
