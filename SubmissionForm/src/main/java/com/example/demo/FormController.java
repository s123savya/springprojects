package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormController {
	@Autowired
	TeachersRepo repo;

	@RequestMapping("/")
	public String detail() {
		return "savya";
	}
	@RequestMapping("/detail")
	public String detail(Teachers t ){
		repo.save(t);
		return "savya";
	}
	@RequestMapping("/getdetail")
	public String getdetail() {
		return "viewStudents";
	}
	
	
	@PostMapping("/getdetail")
	public ModelAndView getdetail(@RequestParam int tid) {
		
		ModelAndView m = new ModelAndView("Retrieve");
			Teachers t=repo.findById(tid).orElse(null);
			m.addObject(t);
			return m;
	}

	
}
