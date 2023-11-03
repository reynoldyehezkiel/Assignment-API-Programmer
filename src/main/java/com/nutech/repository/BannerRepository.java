package com.nutech.repository;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nutech.model.Banner;

@Repository
public interface BannerRepository extends CrudRepository<Banner, Integer> {
	
	@Query("SELECT * FROM banners")
	public List<Banner> findAllBanners();
}
