package com.yllu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="producatori")
public class Producatori {

	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="nume")
	private String nume;

	 public Producatori(){
		 
	 }
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNume() {
		return nume;
	}

	public void setNume(String nume) {
		this.nume = nume;
	}
	
	
	
}
