package com.journaldev.spring.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.journaldev.spring.model.Car;
import com.journaldev.spring.model.Connection;
import com.journaldev.spring.model.Tool;
import com.journaldev.spring.model.User;

import net.myapp.form.model.FormFindCar;
import net.myapp.services.ImageUtil;
import net.myapp.services.Utils;
import net.myapp.services.dao.DataUtilParameter;



public class AnnouncementDAO {
	  private SessionFactory sessionFactory;
	


	  
	  public void setSessionFactory(SessionFactory sf)
	  {
	    sessionFactory = sf;
	  }
	  
	  
	  @Transactional
	  public void InsertAnnouncement(Car car,User user,String[] tools,String UPLOADED_FOLDER,MultipartFile[] files)
	  {
	  ImageUtil imageUtil=new ImageUtil();
	  Session session = sessionFactory.getCurrentSession();

			

	    Tool tool=new Tool();
		   

	    session.save(car);

	   
		
		for (int i = 0; i < tools.length; i++) {
		     Connection Connection=new Connection();

			 	Connection.setCar(car);
			 	tool.setId(Integer.valueOf(tools[i]));
			    Connection.setTool(tool); 
			    session.save(Connection);
			    
			    
				
		}
		
//	imageUtil.upload_MultipleImages(UPLOADED_FOLDER, files);
		
	  }
	  
	  
	  
	  @Transactional
	  public List<Car> GetALLAnnouncement() {
	    Session session = sessionFactory.getCurrentSession();
	    Query query = session.createQuery("from Car");
	    List<Car> list = query.list();
	    
	  
	    System.out.println(list.get(0).getConnectionSet());
	    return list;
	  }
	  
	  
	  @Transactional
	  public List<Connection> FindAnnouncement(FormFindCar formFindCar) {
	    Session session = sessionFactory.getCurrentSession();
	    

        DataUtilParameter.clean();//for clean initialized parameters list

	    
	    String hql = "from Connection as conn "
	    		+ "inner join conn.tool as tool "
	    		+ "inner join conn.car as car  "
	    		+ "Where 1=1";

	    String array[];
	    
	    int i;
	    
	    if(!Utils.isEmpty(formFindCar.getMarka()))
	    {array=formFindCar.getMarka();
	    hql+=" AND  car.marka=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.marka=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    //model
	    if(!Utils.isEmpty(formFindCar.getModel()))
	    {array=formFindCar.getModel();

	    hql+=" AND  car.model=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.model=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    //ban novu
	    if(!Utils.isEmpty(formFindCar.getBan()))
	    {array=formFindCar.getBan();
	    hql+=" AND  car.ban=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.ban=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    
	    //reng
	    if(!Utils.isEmpty(formFindCar.getReng()))
	    {array=formFindCar.getReng();
	    hql+=" AND  car.reng=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.reng=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    //yurus min
	    if(!(Utils.isNullOrEmpty(formFindCar.getYurus_min())))
	    {
        	hql+=" AND  car.yurus>=?";
        	DataUtilParameter.add(Integer.valueOf(formFindCar.getYurus_min()));
        }
	    
	    
	    //yurus max
	    if(!(Utils.isNullOrEmpty(formFindCar.getYurus_max())))
	    {
        	hql+=" AND  car.yurus<=?";
        	DataUtilParameter.add(formFindCar.getYurus_max());
        }
	    
	    
	    //buraxilis ili max
	    if(!Utils.isNullOrEmpty(formFindCar.getBuraxilis_ili_max()))
	    {
        	hql+=" AND  car.buraxilis_ili<=?";
        	DataUtilParameter.add(formFindCar.getBuraxilis_ili_max());
        }
	    
	    
	    //buraxilis ili min
	    if(!Utils.isNullOrEmpty(formFindCar.getBuraxilis_ili_min()))
	    {
        	hql+=" AND  car.buraxilis_ili>=?";
        	DataUtilParameter.add(formFindCar.getBuraxilis_ili_min());
        }
	    
	    
	    
	    //muherrik hecmi max
	    if(!Utils.isNullOrEmpty(formFindCar.getMuherrik_hecmi_max()))
	    {
        	hql+=" AND  car.muherrik_hecmi<=?";
        	DataUtilParameter.add(formFindCar.getMuherrik_hecmi_max());
        }
	    
	  //muherrik hecmi min
	    if(!Utils.isNullOrEmpty(formFindCar.getMuherrik_hecmi_min()))
	    {
        	hql+=" AND  car.muherrik_hecmi>=?";
        	DataUtilParameter.add(formFindCar.getMuherrik_hecmi_min());
        }
	    
	    
	    //seher
	    if(!Utils.isEmpty(formFindCar.getSeher()))
	    {array=formFindCar.getSeher();
	    hql+=" AND  car.seher=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.seher=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    
	    //yanacaq
	    if(!Utils.isEmpty(formFindCar.getYanacaq()))
	    {array=formFindCar.getYanacaq();
	    hql+=" AND  car.yanacaq=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.yanacaq=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    
	    //oturucu
	    if(!Utils.isEmpty(formFindCar.getOturucu()))
	    {array=formFindCar.getOturucu();
	    hql+=" AND  car.oturucu=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.oturucu=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    //suret qutusu
	    if(!Utils.isEmpty(formFindCar.getSuret_qutusu()))
	    
	    {array=formFindCar.getSuret_qutusu();
	    hql+=" AND  car.suret_qutusu=?";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or car.suret_qutusu=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    
	    //qiymet min
	    
	    if(!Utils.isNullOrEmpty(formFindCar.getQiymet_min()))
	    {
        	hql+=" AND  car.qiymet>=?";
        	DataUtilParameter.add(formFindCar.getQiymet_min());
	    }
	    
	    //qiymet max
	    if(!Utils.isNullOrEmpty(formFindCar.getQiymet_max()))
	    {
        	hql+=" AND  car.qiymet<=?";
        	DataUtilParameter.add(formFindCar.getQiymet_max());
        }
	    
	    
	    //valyuta
	    if(!Utils.isNullOrEmpty(formFindCar.getValyuta()))
	    {
        	hql+=" AND  car.valyuta=?";
        	DataUtilParameter.add(formFindCar.getValyuta());
        }
	    
	    //satis
	    if(!Utils.isNullOrEmpty(formFindCar.getBarter()))
	    {
        	hql+=" AND  car.satis=?";
        	DataUtilParameter.add(formFindCar.getBarter());
        }
	    
	    if(!Utils.isNullOrEmpty(formFindCar.getKredit()))
	    {
        	hql+=" AND  car.satis=?";
        	DataUtilParameter.add(formFindCar.getKredit());
        }
	    
	   
	    
	    //tools
	    if(!Utils.isEmpty(formFindCar.getTools()))
	    {array=formFindCar.getTools();
	    hql+=" AND  tool.tool=? ";
	    DataUtilParameter.add(array[0]);

	    	for (i=1; i < array.length; i++) {
			
	    		hql+=" or tool.tool=?";
	        	DataUtilParameter.add(array[i]);
			}
        }
	    
	    System.out.println("sql is "+hql);
	    Query query = session.createQuery(hql);
        DataUtilParameter.setParameter(query);

	    List<Connection> list = query.list();
	    
	  
	    System.out.println(list);
	    return list;
	  }
	  
	  
	  
	  
	  
	  
	 
}
