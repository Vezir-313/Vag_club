package net.myapp.common.web.holders;

import com.journaldev.spring.model.Account;

public class WebAuthHelper
{
  public WebAuthHelper() {}
  
  public static void setAuthenticatedSecureUser(Account secureUser) {
    WebSessionHelper.set(Account.class.getSimpleName(), secureUser);
  }
  

  public static Account getAuthenticatedSecureUser()
  {
    return (Account)WebSessionHelper.get(Account.class.getSimpleName());
  }
  




  public static boolean isUserAuthenticated()
  {
    Account secureUser = getAuthenticatedSecureUser();
    if (secureUser != null) {
      return true;
    }
    return false;
  }
}
