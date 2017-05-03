package net.myapp.services.form;

import java.util.Iterator;
import java.util.List;

import com.journaldev.spring.model.Marka;
import com.journaldev.spring.model.Model;

public class FindAnnouncementForm {

	
	
	
/**	create model options in order to marka as HTML
*/
	public String createModelOptions (List<Object> models){
		 String html="";
		 Object[] modeller=null;
		 Model model=null;
		System.out.println("model is "+models);
		for (int i = 0; i < models.size(); i++) {
		
		
		    modeller=(Object[])models.get(i);
		    model=(Model) modeller[0];
		    Marka marka=(Marka)modeller[0];
		    System.out.println("model is "+model);
			System.out.println("marka is "+marka);
			html=html+"<label>"
					+ "<input  value ='"+model.getId()+"' type='checkbox' />"
					+ "<span>"+model.getModel()+"</span>"
					+ "</label>";
		}
		System.out.println("html is "+html);
		
		return html;
		
		
		
	}
}
