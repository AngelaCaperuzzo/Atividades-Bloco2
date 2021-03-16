package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping
public class HelloController {
	@GetMapping
	public String HelloController()
	{
		return " Utilizei as mentalidades de persistência e atenção aos detalhes, para poder aprender.";
	}

}
