package com.journaldev.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@javax.persistence.Table(name="modeller")
public class Model {
	@javax.persistence.Id
	  @Column(name="ID")
	  @GeneratedValue(strategy=javax.persistence.GenerationType.IDENTITY)
	  private int id;
	
	  @ManyToOne(fetch = FetchType.LAZY)
	  @JoinColumn(name = "marka_id", nullable = false)
	  Marka marka;
	  String model;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Marka getMarka() {
		return marka;
	}
	public void setMarka(Marka marka) {
		this.marka = marka;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
}
