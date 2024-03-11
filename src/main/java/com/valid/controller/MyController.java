package com.valid.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import com.valid.pojo.Beans;

import jakarta.validation.Valid;

@Controller
public class MyController 
{
	@GetMapping("/form")
	public String formHandler()
	{
		System.out.println("This is form");
		return "form";
	}
	
	@PostMapping("/data")
	public String dataHandler(@Valid @ModelAttribute("bean") Beans bean,BindingResult result,Model m)
	{
		if(result.hasErrors())
		{
			m.addAttribute("errors", result);
			return "form";
		}
		return "data";
	}
	
	@GetMapping("/map")
	public String attachHandler()
	{
		return "myFile";
	}

}
