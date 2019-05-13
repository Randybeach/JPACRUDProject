package com.skilldistillery.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class ProjectMvcBootApplication extends SpringBootServletInitializer {
	
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(ProjectMvcBootApplication.class);
	   
	  }
	public static void main(String[] args) {
		SpringApplication.run(ProjectMvcBootApplication.class, args);
	}

}
