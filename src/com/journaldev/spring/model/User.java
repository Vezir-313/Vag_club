package com.journaldev.spring.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.OneToOne;

@Entity
@javax.persistence.Table(name="users")
public class User {
	@javax.persistence.Id
	  @Column(name="ID")
	  @GeneratedValue(strategy=javax.persistence.GenerationType.IDENTITY)
	  private int id;
	  String ad;
	  String seher;
	  String email;
	  String telefon_nomresi;
	  
//		@OneToOne(fetch = FetchType.LAZY, mappedBy = "user",cascade = {CascadeType.ALL})
//		Car car;
//		
		
		
	  public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

	public String getSeher() {
		return seher;
	}

	public void setSeher(String seher) {
		this.seher = seher;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefon_nomresi() {
		return telefon_nomresi;
	}

	public void setTelefon_nomresi(String telefon_nomresi) {
		this.telefon_nomresi = telefon_nomresi;
	}

//	public Car getCar() {
//		return car;
//	}
//
//	public void setCar(Car car) {
//		this.car = car;
//	}
//
//	
//		
	
}
