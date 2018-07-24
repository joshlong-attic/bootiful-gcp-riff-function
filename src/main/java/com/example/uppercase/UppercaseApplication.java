package com.example.uppercase;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import reactor.core.publisher.Flux;

import java.util.function.Function;

@SpringBootApplication
public class UppercaseApplication {

		@Bean
		Function<Flux<String>, Flux<String>> uppercase() {
				return input -> input.map(String::toUpperCase);
		}

		public static void main(String[] args) {
				SpringApplication.run(UppercaseApplication.class, args);
		}
}
