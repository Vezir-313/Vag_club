package com.journaldev.spring.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.model.Car;
import com.journaldev.spring.model.Connection;
import com.journaldev.spring.model.Marka;
import com.journaldev.spring.model.Model;
import com.journaldev.spring.model.Tool;



public class FormDAO {
	  private SessionFactory sessionFactory;


	  
	  public void setSessionFactory(SessionFactory sf)
	  {
	    sessionFactory = sf;
	  }
	  
	  
	  
/**	  get models in order to marka
*/	  
	  @Transactional
	  public List<Object> GetModels(String marka)
	  {
	    Session session = sessionFactory.getCurrentSession();
	    String hql = "from Model as m "
	    		+ "inner join m.marka "
	    		+ "Where marka=:marka";
	    Query query = session.createQuery(hql);
	    query.setParameter("marka", marka);
	    
	    System.out.println("query is "+query);
	  
	    
	    
	    
//	    List<Object[]> li= (List<Object[]>)query.list();
//	    
//	    Object[] modeller=(Object[])li.get(1);
//	    Model model=(Model) modeller[0];
//	    System.out.println("test is "+model.getModel());
	    return query.list();
	    
	    
	    
	    
	    
	  
	  }
	  @Transactional
	  public List<Connection> GetALLCars() {
	    Session session = sessionFactory.getCurrentSession();
	    Query query = session.createQuery("FROM connection");
	   
	    
	    return query.list();
	  }
	  
	  
	 
}
