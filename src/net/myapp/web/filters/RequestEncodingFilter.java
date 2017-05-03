package net.myapp.web.filters;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;

public class RequestEncodingFilter implements javax.servlet.Filter
{
  private FilterConfig config;
  
  public RequestEncodingFilter() {}
  
  private String encoding = "UTF-8";
  
  public void destroy() {}
  
  public void doFilter(ServletRequest request, javax.servlet.ServletResponse response, FilterChain chain) throws java.io.IOException, ServletException {
    request.setCharacterEncoding(encoding);
    chain.doFilter(request, response);
    System.out.println("Miri");
  }
  
  public void init(FilterConfig config) throws ServletException {
    this.config = config;encoding = config.getInitParameter("requestEncoding");
  }
}
