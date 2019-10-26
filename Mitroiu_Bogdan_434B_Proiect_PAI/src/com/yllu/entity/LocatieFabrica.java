package com.yllu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="locatiefabrica")
public class LocatieFabrica {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="locatie")
	private String locatie;
	
	@Column(name="locatie_id")
	private int locatie_id;

    public LocatieFabrica() {
    	
    }
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocatie() {
		return locatie;
	}

	public void setLocatie(String locatie) {
		this.locatie = locatie;
	}

	public int getLocatie_id() {
		return locatie_id;
	}

	public void setLocatie_id(int locatie_id) {
		this.locatie_id = locatie_id;
	}

	
	public String show() {
		return "LocatieFabrica [id=" + id + ", locatie=" + locatie + ", locatie_id=" + locatie_id + "]";
	}
	
	
	
}
