package com.sin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sin.model.HealthManagement;
import com.sin.service.Service;

@Controller
public class MainController {

	@Autowired
	Service service;
	
	@RequestMapping("/")
	public String indexMethod() {
		return "index.jsp";
	}
	
	@RequestMapping("/healthForm")
	public String formMethod(Model m) {
		m.addAttribute("health", new HealthManagement());
		return "form.jsp";
	}
	
	@RequestMapping("/saveForm")
	public String saveForm(@ModelAttribute ("health") HealthManagement health, Model m) throws Exception {
		service.save(health);
		return "DataSaved.jsp";
	}
	
	@RequestMapping("/showDetails")
	public String showDetails(Model m) throws Exception {
		m.addAttribute("list", service.findall());
		return "Data.jsp";
	}
}
