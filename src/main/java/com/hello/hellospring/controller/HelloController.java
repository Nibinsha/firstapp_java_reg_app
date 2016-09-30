package com.hello.hellospring.controller;

import java.security.Principal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;


@Controller
public class HelloController {
	
	@RequestMapping(value = {"/","/welcome"}, method = RequestMethod.GET)

	public String printWelcome(ModelMap model, Principal principal ) {
		 
		String name = principal.getName();
		model.addAttribute("username", name);
		return "main_page";
		 
		}

	

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
	 
	return "login";
	 
	}
	 
	
	

	@RequestMapping(value="/loginError", method = RequestMethod.GET)
	public String loginError(ModelMap model) {
	model.addAttribute("error", "true");
	return "login";
	 
	}
	
	
	
	 
	}