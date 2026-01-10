package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class SessionController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@GetMapping("login")
	public String login() {
		return "Login";
	}

	@PostMapping("login")
	public String authenticate(String email, String password, Model model) {

		// select * from users where email = ?
		Optional<UserEntity> op = userRepository.findByEmail(email);

		if (op.isPresent()) {
			UserEntity user = op.get();
			boolean status = passwordEncoder.matches(password, user.getPassword());
			if (status) {
				return "Home";
			}
		}
		model.addAttribute("error", "Invalid Credentials");
		return "Login";
	}

}
