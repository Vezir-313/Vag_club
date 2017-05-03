package net.myapp.test.spring.controller;

import com.journaldev.spring.dao.Blog_statusDAO;
import com.journaldev.spring.model.Account;
import com.journaldev.spring.model.Blog_status;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import net.myapp.common.logging.impl.Log;
import net.myapp.common.web.holders.RequestHelper;
import net.myapp.common.web.holders.WebAuthHelper;
import net.myapp.common.web.holders.WebSessionHelper;
import net.myapp.dao.SecureUserDAO;
import net.myapp.services.FileServices;
import net.myapp.services.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;














@Controller
public class AdminPanelController
{
  
  @Autowired(required=true)
  @Qualifier("Blog_statusDAO")
  private Blog_statusDAO blog_statusDAO;
  @Autowired(required=true)
  @Qualifier("secureUserDAO")
  private SecureUserDAO secureUserDAO;
  Account user;
  
  String UPLOADED_FOLDER_certificates = "/home/jalabahr/tomcat/webapps/jalabahramova.com/images/certificates";
  String UPLOADED_FOLDER_statusImage = "/home/jalabahr/tomcat/webapps/jalabahramova.com/images/blog_statuses";

 
  @RequestMapping(value={"AdminPanel/upload_certificate"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String uptade_status()
  {
    return "upload_certificate";
  }
  

  @PostMapping({"AdminPanel/upload_certificate"})
  public String singleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes,String filename)
  {

	  
	  if (file.isEmpty() || filename.isEmpty()) {
      redirectAttributes.addFlashAttribute("message", "Please select a file or filename to upload");
      return "redirect:uploadStatus";
    }
    

    try
    { 
      byte[] bytes = file.getBytes();
      
      Path path = Paths.get(UPLOADED_FOLDER_certificates+"/" + filename+".jpg", new String[0]);
      Files.write(path, bytes, new OpenOption[0]);
      
      redirectAttributes.addFlashAttribute("message", 
        "You successfully uploaded '" + filename + "'");
    }
    catch (IOException e) {
      e.printStackTrace();
    }
    
    return "redirect:/uploadStatus";
  }
  
  @GetMapping({"/uploadStatus"})
  public String uploadStatus() {
    return "uploadStatus";
  }
  




  @RequestMapping(value={"AdminPanel/upload_blog_status"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String upload_blog_status()
  {
    return "upload_blog_status";
  }
  



  @RequestMapping(value={"AdminPanel"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String firstpage_Panel() { return "firstpage_Panel"; }
  
  @RequestMapping(value={"admin/logout"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String printHello1() {
    WebSessionHelper.clearSessionData();
    return "login";
  }
  



  @PostMapping({"AdminPanel/upload_blog_status"})
  public String singleStatusUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes, String status, Integer id)
  {
    Blog_status blog_status = new Blog_status();
    
    if (status.isEmpty()) {
      redirectAttributes.addFlashAttribute("message", "Please insert status to upload");
      return "redirect:uploadStatus";
    }
    

    blog_status.setText(status);
    

    if (id == null)
    {
      if (!file.isEmpty()) {
        try
        {
          byte[] bytes = file.getBytes();
          Path path = Paths.get(UPLOADED_FOLDER_statusImage+"/" + file.getOriginalFilename(), new String[0]);
          Files.write(path, bytes, new OpenOption[0]);
          blog_status.setLink_photos("http://jalabahramova.com/images/blog_statuses/" + file.getOriginalFilename());
        }
        catch (IOException e)
        {
          e.printStackTrace();
        }
      }
      
      if (!blog_status.getText().isEmpty()) {
        blog_statusDAO.InsertBlog_status(blog_status);
        
        redirectAttributes.addFlashAttribute("message", 
          "You successfully uploaded '" + file.getOriginalFilename() + "'");
      }
    }
    if (id != null) {
      blog_status.setId(id.intValue());
      if (blog_statusDAO.UptadeStatus(blog_status) == 1) {
        redirectAttributes.addFlashAttribute("message", 
          "You successfully uploaded '" + file.getOriginalFilename() + "'");
      }
      else
      {
        redirectAttributes.addFlashAttribute("message", 
          "You failure uploaded '" + file.getOriginalFilename() + "'");
      }
    }
    



    return "redirect:/uploadStatus";
  }
  
  @RequestMapping(value={"admin/login"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String printHello(@RequestParam(defaultValue="null") String login, @RequestParam(defaultValue="null") String pass)
  {
    if (!login.equals("null")) {
      user = secureUserDAO.getSecureUser(login);
      if (user != null) {
        try {
          if (user.getPassword().equals(Utils.getMD5(pass))) {
            Log.debug("succesfully logined ");
            WebAuthHelper.setAuthenticatedSecureUser(user);
            
            return "redirect:/AdminPanel";
          }
        }
        catch (NoSuchAlgorithmException e)
        {
          e.printStackTrace();
        }
      }
    }
    return "login";
  }
  
  @RequestMapping(value={"AdminPanel/edit_certificates"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String editCertificates(String delete) {
    if (delete != null) {
      File file = new File(UPLOADED_FOLDER_certificates+"/" + delete);
//bir      

      file.delete();
    }
    
    File folder = new File(UPLOADED_FOLDER_certificates);
    File[] listOfFiles = folder.listFiles();
    ArrayList<String> certificatesList = new ArrayList<String>();
    System.out.println(listOfFiles);
    for (File file : listOfFiles) {
      if ((file.isFile()) && (
        (FileServices.getFileExtension(file).equals("jpg")) || (FileServices.getFileExtension(file).equals("png"))))
      {

        certificatesList.add(file.getName());
      }
    }
    
    System.out.println(certificatesList);
    RequestHelper.setAttribute("certificates", certificatesList);
    


    return "edit_certificates";
  }
  

  @RequestMapping(value={"AdminPanel/edit_statuses"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String editStatuses(Integer delete)
  {
    if (delete != null) {
      blog_statusDAO.DeleteStatusByID(delete.intValue());
    }
    

    List<Blog_status> statusList = blog_statusDAO.GetALLBlogStatuses();
    RequestHelper.setAttribute("statusList", statusList);
    

    return "edit_statuses";
  }
  





  @RequestMapping(value={"AdminPanel/uptade_statuses"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String uptadeStatusesGET(Integer edit, String text)
  {
    if (edit != null)
    {
      Blog_status blog_status = blog_statusDAO.GetBlogStatusByID(edit.intValue());
      RequestHelper.setAttribute("edit_status", blog_status);
    }
    

    System.out.println("text is " + text);
    return "uptade_blog_status";
  }
}
