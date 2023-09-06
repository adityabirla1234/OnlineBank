package com.ad.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfiguration;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
//Authentication info provider
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Override
	public  void configure(AuthenticationManagerBuilder auth) throws Exception{
	 auth.inMemoryAuthentication().withUser("raja").password("{noop}hyd").roles("CUSTOMER");
}
	//to authorize the requests
	@Override
	public  void configure(HttpSecurity http) throws Exception{
		http.authorizeHttpRequests().antMatchers("/").permitAll()
		.antMatchers("/services").authenticated().and().formLogin();

	}
}
