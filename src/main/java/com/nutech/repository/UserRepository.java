package com.nutech.repository;


import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nutech.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, String> {
	
	@Query("INSERT INTO Users(email,firstName,lastName,password,saldo) VALUES ('?','?','?','?','?')")
	public User createUser(User user);
	
}
