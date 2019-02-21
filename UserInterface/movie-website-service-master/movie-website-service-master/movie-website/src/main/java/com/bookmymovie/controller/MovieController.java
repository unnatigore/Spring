package com.bookmymovie.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "index";
	}
	
	@RequestMapping("/movies")
	public String movies() {
		return "moviedata";
	}
	
	@ModelAttribute("countryList")
	public Map<String, String> getCountryList() {
	      Map<String, String> countryList = new HashMap<String, String>();
	      countryList.put("US", "United States");
	      countryList.put("CH", "China");
	      countryList.put("SG", "Singapore");
	      countryList.put("MY", "Malaysia");
	      countryList.put("MY", "Malaysia");
	      countryList.put("hu", "Hyderabad");
	      return countryList;
	}
}
