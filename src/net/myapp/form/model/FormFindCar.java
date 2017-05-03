package net.myapp.form.model;

import net.myapp.services.Utils;

public class FormFindCar {
	
	String marka;
	String model;
	String reng;
	String seher;
	String yanacaq;
	String ban;
	String suret_qutusu;
	String oturucu;
	String valyuta;
	String kredit;
	String barter;
	String yurus_min;
	String yurus_max;
	String buraxilis_ili_min;
	String buraxilis_ili_max;
	String muherrik_hecmi_min;
	String muherrik_hecmi_max;
	String qiymet_min;
	String qiymet_max;
	String tools;
	public String getKredit() {
		return kredit;
	}
	public void setKredit(String kredit) {
		this.kredit = kredit;
	}
	public String getBarter() {
		return barter;
	}
	public void setBarter(String barter) {
		this.barter = barter;
	}
	
	public String[] getMarka() {
		return Utils.getStringAsArray(marka);
	}
	public void setMarka(String marka) {
		this.marka = marka;
	}
	
	
	
	public String[] getModel() {
		return Utils.getStringAsArray(model);
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	
	
	public String[] getReng() {
		return Utils.getStringAsArray(reng);
	}
	public void setReng(String reng) {
		this.reng = reng;
	}
	
	
	
	public String[] getSeher() {
		return Utils.getStringAsArray(seher);
	}
	public void setSeher(String seher) {
		this.seher = seher;
	}
	
	
	
	public String[] getYanacaq() {
		return Utils.getStringAsArray(yanacaq);
	}
	public void setYanacaq(String yanacaq) {
		this.yanacaq = yanacaq;
	}
	
	
	
	public String[] getBan() {
		return Utils.getStringAsArray(ban);
	}
	public void setBan(String ban) {
		this.ban = ban;
	}
	
	
	
	
	public String[] getSuret_qutusu() {
		return Utils.getStringAsArray(suret_qutusu);
	}
	public void setSuret_qutusu(String suret_qutusu) {
		this.suret_qutusu = suret_qutusu;
	}
	
	
	
	
	public String[] getOturucu() {
		return Utils.getStringAsArray(oturucu);
	}
	public void setOturucu(String oturucu) {
		this.oturucu = oturucu;
	}
	
	
	
	
	public String getValyuta() {
		return valyuta;
	}
	public void setValyuta(String valyuta) {
		this.valyuta = valyuta;
	}
	
	
	
	
	public String getYurus_min() {
		return yurus_min;
	}
	public void setYurus_min(String yurus_min) {
		this.yurus_min = yurus_min;
	}
	public String getYurus_max() {
		return yurus_max;
	}
	public void setYurus_max(String yurus_max) {
		this.yurus_max = yurus_max;
	}
	public String getBuraxilis_ili_min() {
		return buraxilis_ili_min;
	}
	public void setBuraxilis_ili_min(String buraxilis_ili_min) {
		this.buraxilis_ili_min = buraxilis_ili_min;
	}
	public String getBuraxilis_ili_max() {
		return buraxilis_ili_max;
	}
	public void setBuraxilis_ili_max(String buraxilis_ili_max) {
		this.buraxilis_ili_max = buraxilis_ili_max;
	}
	public String getMuherrik_hecmi_min() {
		return muherrik_hecmi_min;
	}
	public void setMuherrik_hecmi_min(String muherrik_hecmi_min) {
		this.muherrik_hecmi_min = muherrik_hecmi_min;
	}
	public String getMuherrik_hecmi_max() {
		return muherrik_hecmi_max;
	}
	public void setMuherrik_hecmi_max(String muherrik_hecmi_max) {
		this.muherrik_hecmi_max = muherrik_hecmi_max;
	}
	public String getQiymet_min() {
		return qiymet_min;
	}
	public void setQiymet_min(String qiymet_min) {
		this.qiymet_min = qiymet_min;
	}
	public String getQiymet_max() {
		return qiymet_max;
	}
	public void setQiymet_max(String qiymet_max) {
		this.qiymet_max = qiymet_max;
	}
	public String[] getTools() {
		return Utils.getStringAsArray(tools);
	}
	public void setTools(String tools) {
		this.tools = tools;
	}
	

}
