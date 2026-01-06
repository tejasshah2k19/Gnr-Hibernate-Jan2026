package com.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

		return "redirect:/listUser";// url
	}

	@GetMapping("listUser")
	public String listUser(Model model) {
		// select * from users
		List<UserEntity> users = userRepository.findAll();
		model.addAttribute("users", users);
		return "ListUser";
	}

	@GetMapping("deleteUser")
	public String deleteUser(Integer userId) {
		// delete from users where userId = ?
		userRepository.deleteById(userId);
		return "redirect:/listUser";// url
	}

	@GetMapping("viewUser")
	public String viewUser(Integer userId, Model model) {
		// select * from users where userId = ?
		Optional<UserEntity> op = userRepository.findById(userId);// Optional

		if (op.isPresent()) {
			UserEntity userEntity = op.get();
			model.addAttribute("user", userEntity);

		} else {
			// error
		}
		return "ViewUser";
	}

	@GetMapping("editUser")
	public String editUser(Integer userId, Model model) {
		// select * from users where userId = ?
		Optional<UserEntity> op = userRepository.findById(userId);// Optional

		if (op.isPresent()) {
			UserEntity userEntity = op.get();
			model.addAttribute("user", userEntity);

		} else {
			// error
		}
		return "EditUser";
	}

}
