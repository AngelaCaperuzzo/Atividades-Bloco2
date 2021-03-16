package com.objetivo.objetivo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class ObjetivoController {
	
	@GetMapping
	public String ObjetivoController()
	{
		return "Meu objetivo é obter conhecimento para me tornar uma boa junior.";
	}

}
