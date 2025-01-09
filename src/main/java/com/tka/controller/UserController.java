 package com.tka.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tka.entity.Sport;
import com.tka.entity.User;
import com.tka.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService loginservice;

	@GetMapping("/")
	public String save()
	{
		return "login";
	}
	
	@PostMapping("logincheck")
	public String logincheck(@ModelAttribute User user, Model model)
	{
		 boolean correct = loginservice.logincheck(user);
		 System.err.println(correct); 
		 if (correct) { 
			return "player";
		}
		 else
		 {
			 model.addAttribute("error", "Invalid username and password");
			 return "login";
		 }
		 
	}
}
