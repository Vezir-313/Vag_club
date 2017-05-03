package com.journaldev.spring.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
@Entity
@javax.persistence.Table(name="cars")
public class Car {
	 
	@javax.persistence.Id
	@Column(name="ID")
	@GeneratedValue(strategy=javax.persistence.GenerationType.IDENTITY)
	  private int id;
	  String marka;
	  String model;
	  String ban;
	  String reng;
	  int yurus;
	  int buraxilis_ili;
	  int muherrik_hecmi;
	  String seher;
	  String yanacaq;
	  String oturucu;
	   String suret_qutusu;
	  int qiymet;
	  String valyuta;
	  String satis;
	  String link_photos;
	  @CreationTimestamp
	  @Temporal(TemporalType.TIMESTAMP)
	  Date date;
	  Boolean apply;
	  
	  @OneToMany(fetch = FetchType.LAZY, mappedBy = "car",cascade = {CascadeType.ALL})
		Set<Connection> connectionSet;
	  
//	  public User getUser() {
//			return user;
//		}
//		public void setUser( User user) {
//			this.user = user;
//		}
//		  @OneToOne(fetch = FetchType.LAZY,cascade = {CascadeType.ALL})
//		  @JoinColumn(name = "userID", nullable = false)
//		  User user;
		  
	  
	  public String getLink_photos() {
		return link_photos;
	}



	public void setLink_photos(String link_photos) {
		this.link_photos = link_photos;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public Boolean getApply() {
		return apply;
	}



	public void setApply(Boolean apply) {
		this.apply = apply;
	}



	
	
	public Set<Connection> getConnectionSet() {
		return connectionSet;
	}



	public void setConnectionSet(Set<Connection> connectionSet) {
		this.connectionSet = connectionSet;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getMarka() {
		return marka;
	}



	public void setMarka(String marka) {
		this.marka = marka;
	}



	public String getModel() {
		return model;
	}



	public void setModel(String model) {
		this.model = model;
	}



	public String getBan() {
		return ban;
	}



	public void setBan(String ban) {
		this.ban = ban;
	}



	public String getReng() {
		return reng;
	}



	public void setReng(String reng) {
		this.reng = reng;
	}



	public int getYurus() {
		return yurus;
	}



	public void setYurus(int yurus) {
		this.yurus = yurus;
	}



	public int getBuraxilis_ili() {
		return buraxilis_ili;
	}



	public void setBuraxilis_ili(int buraxilis_ili) {
		this.buraxilis_ili = buraxilis_ili;
	}



	public int getMuherrik_hecmi() {
		return muherrik_hecmi;
	}



	public void setMuherrik_hecmi(int muherrik_hecmi) {
		this.muherrik_hecmi = muherrik_hecmi;
	}



	public String getSeher() {
		return seher;
	}



	public void setSeher(String seher) {
		this.seher = seher;
	}



	public String getYanacaq() {
		return yanacaq;
	}



	public void setYanacaq(String yanacaq) {
		this.yanacaq = yanacaq;
	}



	public String getOturucu() {
		return oturucu;
	}



	public void setOturucu(String oturucu) {
		this.oturucu = oturucu;
	}



	public String getSuret_qutusu() {
		return suret_qutusu;
	}



	public void setSuret_qutusu(String suret_qutusu) {
		this.suret_qutusu = suret_qutusu;
	}



	public int getQiymet() {
		return qiymet;
	}



	public void setQiymet(int qiymet) {
		this.qiymet = qiymet;
	}



	public String getValyuta() {
		return valyuta;
	}



	public void setValyuta(String valyuta) {
		this.valyuta = valyuta;
	}



	public String getSatis() {
		return satis;
	}



	public void setSatis(String satis) {
		this.satis = satis;
	}



	public Date getStatus_date() {
		return date;
	}



	



}
