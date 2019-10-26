package com.yllu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="masini")
public class Masini {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="model")
	private String model;
	
	@Column(name="masina_id")
	private int masina_id;

	public Masini() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getMasina_id() {
		return masina_id;
	}

	public void setMasina_id(int masina_id) {
		this.masina_id = masina_id;
	}


	
	
}
