package com.example.docker.springboot_docker_example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringbootDockerExampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootDockerExampleApplication.class, args);
	}

	@GetMapping("/message")
	public String showMessage(){
		return "Congratulation you have deployed first application on Docker by Jenkins issues Resolved !!!!!";
	}

}
