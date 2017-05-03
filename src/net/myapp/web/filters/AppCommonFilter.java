package net.myapp.web.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.myapp.common.web.holders.RequestHolder;
import net.myapp.common.web.holders.ResponseHolder;
import org.apache.log4j.MDC;






public class AppCommonFilter
  implements Filter
{
  public AppCommonFilter() {}
  
  public void init(FilterConfig config)
    throws ServletException
  {}
  
  private void doBeforeProcessing(HttpServletRequest request, HttpServletResponse response)
  {
    RequestHolder.set(request);
    ResponseHolder.set(response);
  }
  








  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
    throws IOException, ServletException
  {
    try
    {
      HttpServletRequest rq = (HttpServletRequest)request;
      HttpSession session = rq.getSession();
      
      MDC.put("sessionInfo", session.getId() + "!" + session.getCreationTime());
      
      doBeforeProcessing((HttpServletRequest)request, (HttpServletResponse)response);
      
      chain.doFilter(request, response);
      doAfterProcessing((HttpServletRequest)request, (HttpServletResponse)response);
    }
    finally {
      MDC.remove("sessionInfo");
    }
  }
  






  private void doAfterProcessing(HttpServletRequest request, HttpServletResponse response)
  {
    RequestHolder.remove();
    ResponseHolder.remove();
  }
  
  public void destroy() {}
}
