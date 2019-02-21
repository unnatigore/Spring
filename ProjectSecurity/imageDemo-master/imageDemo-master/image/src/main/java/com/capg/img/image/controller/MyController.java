package com.capg.img.image.controller;

import java.io.IOException;

import org.springframework.core.io.ClassPathResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class MyController {

	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	@RequestMapping("/action")
	public String depositForm() {
		return "URI";
	}
	

	@RequestMapping(value = "/displayImage", method = RequestMethod.GET, produces = MediaType.IMAGE_PNG_VALUE)
	public ResponseEntity<byte[]> getImage() throws IOException {

		ClassPathResource imgFile = new ClassPathResource("images/URI.png");
		byte[] bytes = StreamUtils.copyToByteArray(imgFile.getInputStream());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(bytes);
	}

}
