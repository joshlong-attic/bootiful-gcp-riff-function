package com.example.uppercase;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.function.Function;

@SpringBootApplication
public class UppercaseApplication {

		@Bean
		Function<String, String> uppercase() {
				return String::toUpperCase;
		}

		public static void main(String[] args) {
				SpringApplication.run(UppercaseApplication.class, args);
		}
}
