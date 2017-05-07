package net.myapp.test.spring.controller;

import com.journaldev.spring.dao.AnnouncementDAO;
import com.journaldev.spring.dao.Blog_statusDAO;
import com.journaldev.spring.dao.FormDAO;
import com.journaldev.spring.model.Car;
import com.journaldev.spring.model.Car2;
import com.journaldev.spring.model.Marka;
import com.journaldev.spring.model.User;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.Normalizer.Form;
import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

import net.myapp.common.web.holders.RequestHelper;
import net.myapp.form.model.FormFindCar;
import net.myapp.services.FileServices;
import net.myapp.services.ImageUtil;
import net.myapp.services.Utils;
import net.myapp.services.form.FindAnnouncementForm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;





@Controller
public class TestController
{
  @Autowired(required=true)
  @Qualifier("Blog_statusDAO")
  private Blog_statusDAO blog_statusDAO;
  
  
  
  
  @Autowired(required=true)
  @Qualifier("AnnouncementDAO")
  private AnnouncementDAO announcementDAO;
  
  @Autowired(required=true)
  @Qualifier("FormDAO")
  private FormDAO formDAO;
  
  
  
  @Autowired(required=true)
  @Qualifier("ImageUtil")
  private ImageUtil imageUtil;
  
  
  String UPLOADED_FOLDER_certificates = "/home/jalabahr/tomcat/webapps/jalabahramova.com/images/certificates";
  
  @RequestMapping(value={""}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String mainpage()
  {	
	  announcementDAO.GetALLAnnouncement();
	  

	  
	  
    return "find";
  }
  

  @RequestMapping(value={"/find"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String search()
  {
		  
		  
//	  System.out.println("test is "+formFindCar.getModel()[1]);
//	  System.out.println("test is "+formFindCar.getModel()[2]);

	  
	  
	  
    return "find";
  }
  
  @PostMapping("/find")
  public String findAnnouncemnt(FormFindCar formFindCar){
		 announcementDAO.FindAnnouncement(formFindCar);

		 
	  
	  return "find";
  }
  
  @PostMapping("/add_car")
  public String add_car_post(Car car,User user,@RequestParam("sekiller") MultipartFile[] sekiller,@RequestParam("video") MultipartFile[] video,
          RedirectAttributes redirectAttributes,String all_tools,@RequestParam(defaultValue = "0")int yurus,@RequestParam(defaultValue = "0")int muherrik_hecmi_ag) {
	  
	  String  UPLOADED_FOLDER_image="/Users/miriyusifli/Desktop/images";
	  String UPLOADED_FOLDER_video="/Users/miriyusifli/Desktop/images";
	  System.out.println("geldi");
	  System.out.println(user.getTelefon_nomresi());
	  System.out.println(yurus);
	/*  System.out.println(RequestHelper.getParam(""));
	  System.out.println(RequestHelper.getParam(""));
	  System.out.println(RequestHelper.getParam(""));*/

	  announcementDAO.InsertAnnouncement(car, user, Utils.getStringAsArray(all_tools),UPLOADED_FOLDER_image,UPLOADED_FOLDER_video,sekiller,video);

	  
  
	  
	 
	  
	  
	  
    return "add_car";
  }
  
  @GetMapping("/add_car")
  public String add_car() {
	  System.out.println("Get metodu isledi");
    return "add_car";
  }
  
  @GetMapping("/api/search")
  @ResponseBody
  public String find_models(String marka) {
	FindAnnouncementForm findCarForm=new FindAnnouncementForm();
    return  	findCarForm.createModelOptions(formDAO.GetModels(marka));

  }
  
  
  @RequestMapping(value={"/about_toefl"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String about_toefl()
  {
    return "about-toefl";
  }
  
  @RequestMapping(value={"/about_general"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String about_general()
  {
    return "about-general";
  }
  
  @RequestMapping(value={"/certificates"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String certificates() {
    File folder = new File(UPLOADED_FOLDER_certificates);
    File[] listOfFiles = folder.listFiles();
    ArrayList<String> certificatesList = new ArrayList<String>();

    for (File file : listOfFiles) {
      if ((file.isFile()) && (
        (FileServices.getFileExtension(file).equals("jpg")) ))
      {

        certificatesList.add("http://jalabahramova.com/images/certificates/" + file.getName());
      }
    }
    
    System.out.println(certificatesList);
    RequestHelper.setAttribute("certificates", certificatesList);
    

    return "certificates";
  }
  
  @RequestMapping(value={"/blog"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String blog(Integer page) { RequestHelper.setAttribute("maxPage", Long.valueOf(blog_statusDAO.getMaxPage()));
    
    if (page == null) page = Integer.valueOf(1);
    System.out.println(page);
    RequestHelper.setAttribute("statusList", blog_statusDAO.GetBlogStatusesByPage(page.intValue()));
    RequestHelper.setAttribute("maxPage", Long.valueOf(blog_statusDAO.getMaxPage()));
    

    return "blog";
  }
  
  @RequestMapping(value={"/about_internat"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String about_internat()
  {
    return "about-internat";
  }
  
  
  
  
  @RequestMapping(value={"/about_seminar"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String about_seminar()
  {
    return "about-seminar";
  }
  
  @RequestMapping(value={"/about_usaq_evi"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String about_usaq_evi()
  {
    return "about-usaq_evi";
  }
}
