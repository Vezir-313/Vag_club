package com.journaldev.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


@Entity
@javax.persistence.Table(name="connections")
public class Connection {
	  @javax.persistence.Id
	  @Column(name="ID")
	  @GeneratedValue(strategy=javax.persistence.GenerationType.IDENTITY)
	  private int id;
	  
	  @ManyToOne(fetch = FetchType.LAZY)
	  @JoinColumn(name = "toolID", nullable = true)
	  Tool tool;
	 
	  public Tool getTool() {
		return tool;
	}
	public void setTool(Tool tool) {
		this.tool = tool;
	}
	  @ManyToOne(fetch = FetchType.LAZY)
	  @JoinColumn(name = "carID", nullable = false)
	  Car car;
	  
	  
	  
	  

	  public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
