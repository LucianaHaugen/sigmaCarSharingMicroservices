package com.sigmatechnology.csa;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.Environment;

import javax.inject.Inject;

@SpringBootApplication
public class WebApp {
	
	private static final Logger log = LoggerFactory.getLogger(WebApp.class);

	@Inject
	private Environment env;

	public static void main(String[] args) {
		SpringApplication.run(WebApp.class, args);
	}

}
