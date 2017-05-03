package net.myapp.web.servlet.view;

import java.io.PrintStream;
import java.util.Locale;
import net.myapp.common.logging.impl.Log;
import net.myapp.common.web.holders.RequestHelper;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


public class MyViewResolver
  extends InternalResourceViewResolver
{
  private String defaultViewParent = "view/default/jsp/";
  private String mobileViewParent = "mobile/jsp/";
  private String ajaxContentPath = "view/ajax/";
  private String defaultViewTemplate = "main";
  private String mobileViewTemplate = "main";
  




  public MyViewResolver() {}
  




  public View resolveViewName(String viewName, Locale locale)
    throws Exception
  {
    if ((!viewName.startsWith("redirect:")) && (!viewName.startsWith("forward:")))
    {
      String gppViewParent = defaultViewParent;
      



      if (RequestHelper.isAJAXRequest())
      {
        viewName = gppViewParent + ajaxContentPath + viewName;
        Log.debug("ajax view name : " + viewName);




      }
      else if ((viewName.equals("index")) || (viewName.equals("blog"))) { viewName = "view/default/jsp/" + viewName;
      }
      else {
        System.out.println("main" + viewName);
        

        RequestHelper.setAttribute("partial", viewName);
        Log.debug("view partial  name" + viewName);
        viewName = gppViewParent + defaultViewTemplate;
      }
    }
    





    return super.resolveViewName(viewName, locale);
  }
}
