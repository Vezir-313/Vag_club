package net.myapp.dao;

import com.journaldev.spring.model.Account;

public abstract interface SecureUserDAO
{
  public abstract Account getSecureUser(String paramString);
}
