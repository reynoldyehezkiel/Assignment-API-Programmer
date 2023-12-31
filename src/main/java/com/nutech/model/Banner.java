package com.nutech.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "banners")
public class Banner {
	
	@Id
	@Column("id")
	private Integer id;
	
	@Column("name")
	private String name;
	
	@Column("image")
	private String image;
	
	@Column("description")
	private String description;
	
}
