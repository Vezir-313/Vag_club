package net.myapp.common.web.holders;

import com.journaldev.spring.model.Account;
import javax.servlet.http.HttpSession;













public class WebSessionHelper
{
  public WebSessionHelper() {}
  
  public static void set(String key, Object object)
  {
    HttpSession httpSession = RequestHolder.get().getSession();
    if (object == null) {
      httpSession.removeAttribute(key);
    } else {
      httpSession.setAttribute(key, object);
    }
  }
  
  public static void remove(String key)
  {
    RequestHolder.get().getSession().removeAttribute(key);
  }
  
  public static Object get(String key)
  {
    HttpSession httpSession = RequestHolder.get().getSession();
    return httpSession.getAttribute(key);
  }
  
  public static boolean isAvailable(String key)
  {
    Object value = get(key);
    return value != null;
  }
  










  public static void clearSessionData()
  {
    if (WebAuthHelper.isUserAuthenticated()) {
      System.out.println("logout : " + Account.class.getSimpleName() + "/" + WebAuthHelper.getAuthenticatedSecureUser().getUser());
    }
    
    RequestHolder.get().getSession().invalidate();
  }
}
