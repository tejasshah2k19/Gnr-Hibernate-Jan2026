package com.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@GetMapping(value = { "newUser", "newuser", "/" })
	public String newUser() {
		return "NewUser";
	}

	@PostMapping("saveUser")
	public String saveUser(UserEntity userEntity) {

		userEntity.setCreatedAt(LocalDate.now());
		userRepository.save(userEntity); // insert

		return "Login";
	}

	@GetMapping("listUser")
	public String listUser(Model model) {
		// select * from users
		List<UserEntity> users = userRepository.findAll();
		model.addAttribute("users",users);
		return "ListUser";
	}

}
