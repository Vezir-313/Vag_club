package net.myapp.web.filters;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;

public class AppCommonFilterTest implements javax.servlet.Filter
{
  public AppCommonFilterTest() {}
  
  public void init(FilterConfig config) throws ServletException
  {
    String testParam = config.getInitParameter("test-param");
    

    System.out.println("Test Param: " + testParam);
  }
  


  public void doFilter(ServletRequest request, javax.servlet.ServletResponse response, FilterChain chain)
    throws java.io.IOException, ServletException
  {
    String ipAddress = request.getRemoteAddr();
    

    System.out.println("IP " + ipAddress + ", Time " + 
      new java.util.Date().toString());
    
    net.myapp.test.spring.controller.Common.setAttr("hi", "hello");
    

    chain.doFilter(request, response);
  }
  
  public void destroy() {}
}
