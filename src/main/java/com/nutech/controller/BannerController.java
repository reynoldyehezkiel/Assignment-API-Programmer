package com.nutech.controller;

import javax.annotation.security.PermitAll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nutech.model.Banner;
import com.nutech.model.response.HttpApiResponse;
import com.nutech.repository.BannerRepository;

@RestController
@RequestMapping("/banner")
public class BannerController {
	
	@Autowired private BannerRepository bRepo;

	@PermitAll
	@GetMapping
	public HttpApiResponse<Iterable<Banner>> findAll() {
		HttpApiResponse<Iterable<Banner>> res = new HttpApiResponse<>();

		res.setStatus(0);
		res.setMessage("Sukses");
		res.setData(this.bRepo.findAllBanners());
		
		return res;
	}
}
