package com.journaldev.spring.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
@javax.persistence.Table(name="markalar")
public class Marka {
	@javax.persistence.Id
	  @Column(name="ID")
	  @GeneratedValue(strategy=javax.persistence.GenerationType.IDENTITY)
	  private int id;
	 
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "id",cascade = {CascadeType.ALL})
		Set<Model> ModelSet;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Set<Model> getModelSet() {
		return ModelSet;
	}

	public void setModelSet(Set<Model> modelSet) {
		ModelSet = modelSet;
	}
	
}
