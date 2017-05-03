package com.journaldev.spring.model;


import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.OneToMany;




@Entity
@javax.persistence.Table(name="tools")
public class Tool
{
  @javax.persistence.Id
  @Column(name="ID")
  @GeneratedValue(strategy=javax.persistence.GenerationType.IDENTITY)
  private int id;
  private String tool;

  
  public Set<Connection> getToolSet() {
	return toolSet;
}
public void setToolSet(Set<Connection> toolSet) {
	this.toolSet = toolSet;
}
@OneToMany(fetch = FetchType.LAZY, mappedBy = "tool",cascade = {CascadeType.ALL})
	Set<Connection> toolSet;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTool() {
	return tool;
}
public void setTool(String tool) {
	this.tool = tool;
}
 

}