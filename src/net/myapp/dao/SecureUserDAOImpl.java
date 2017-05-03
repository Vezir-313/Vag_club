package net.myapp.dao;

import com.journaldev.spring.model.Account;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class SecureUserDAOImpl implements SecureUserDAO
{
  private SessionFactory sessionFactory;
  
  public SecureUserDAOImpl() {}
  
  public void setSessionFactory(SessionFactory sf)
  {
    sessionFactory = sf;
  }
  
  @org.springframework.transaction.annotation.Transactional
  public Account getSecureUser(String login) {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery(" From Account where username=:username");
    
    query.setParameter("username", login);
    Account s = (Account)query.uniqueResult();
    return s;
  }
}
