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

import net.myapp.services.Utils;
@Entity
@javax.persistence.Table(name="cars")
public class Car2 {
	 
	@javax.persistence.Id
	@Column(name="ID")
	@GeneratedValue(strategy=javax.persistence.GenerationType.IDENTITY)
	  private int id;
	  String marka;
	  String model;
	  String ban;
	  String reng;
	  int yurus;
//	  int buraxilis_ili;
//	  int muherrik_hecmi_sm;
//	  int muherrik_hecmi_ag;
	  String yanacaq;
	  String oturucu;
	  String suret_qutusu;
	 // int qiymet;
	  String valyuta;
	  String barter;
	  String kredit;
	  String link_photos;
	  String link_video;
	  String info;
	  @CreationTimestamp
	  @Temporal(TemporalType.TIMESTAMP)
	  Date date;
	  String apply;
	  
	  @OneToMany(fetch = FetchType.LAZY, mappedBy = "car",cascade = {CascadeType.ALL})
		Set<Connection> connectionSet;
	
	  
	  
	  @OneToOne(cascade = CascadeType.ALL)
	  @JoinColumn(name = "ID")
	  User user;

		  
	  
	  public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



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



	public String getApply() {
		return apply;
	}



	public void setApply(String apply) {
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
	
	
	public void setYurus(String yurus) {
		if(!Utils.isNullOrEmpty(yurus))
		this.yurus = Integer.valueOf(yurus);
		else this.yurus=0;
	}


	/*public int getBuraxilis_ili() {
		return buraxilis_ili;
	}



	public void setBuraxilis_ili(int buraxilis_ili) {
		this.buraxilis_ili = buraxilis_ili;
	}
*/


	/*public int getMuherrik_hecmi_sm_sm() {
		return muherrik_hecmi_sm;
	}



	public void setMuherrik_hecmi_sm(int muherrik_hecmi_sm) {
		this.muherrik_hecmi_sm = muherrik_hecmi_sm;
	}*/



	
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



	/*public int getQiymet() {
		return qiymet;
	}



	public void setQiymet(int qiymet) {
		this.qiymet = qiymet;
	}*/



	public String getValyuta() {
		return valyuta;
	}



	public void setValyuta(String valyuta) {
		this.valyuta = valyuta;
	}



	public String getbarter() {
		return barter;
	}



	public void setbarter(String barter) {
		this.barter = barter;
	}



	public Date getStatus_date() {
		return date;
	}



	/*public int getMuherrik_hecmi_ag() {
		return muherrik_hecmi_ag;
	}



	public void setMuherrik_hecmi_ag(int muherrik_hecmi_ag) {
		this.muherrik_hecmi_ag = muherrik_hecmi_ag;
	}
*/


	public String getBarter() {
		return barter;
	}



	public void setBarter(String barter) {
		this.barter = barter;
	}



	public String getKredit() {
		return kredit;
	}



	public void setKredit(String kredit) {
		this.kredit = kredit;
	}



	public String getInfo() {
		return info;
	}



	public void setInfo(String info) {
		this.info = info;
	}




	public String getLink_video() {
		return link_video;
	}



	public void setLink_video(String link_video) {
		this.link_video = link_video;
	}


	



}
