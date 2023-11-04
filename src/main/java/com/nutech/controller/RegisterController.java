package com.nutech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nutech.model.User;
import com.nutech.model.request.RegisterRequest;
import com.nutech.model.response.HttpApiResponse;
import com.nutech.repository.UserRepository;

@RestController
public class RegisterController {
	
	@Autowired private UserRepository uRepo;
	
	@PostMapping(value = "/registration")
	public HttpApiResponse<User> addUser(@RequestBody RegisterRequest req) {
		HttpApiResponse<User> res = new HttpApiResponse<>();
		
		User entity = User.builder()
				.email(req.getEmail())
				.firstName(req.getFirstName())
				.lastName(req.getLastName())
				.password(req.getPassword())
				.saldo(0)
				.build();
		
		res.setStatus(0);
		res.setMessage("Registrasi berhasil silahkan login");
		res.setData(this.uRepo.createUser(entity));
		
		return res;
	}

}
