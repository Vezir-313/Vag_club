package net.myapp.web.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import net.myapp.common.web.holders.WebAuthHelper;



public class AuthFilter
  implements Filter
{
  public AuthFilter() {}
  
  public void init(FilterConfig config)
    throws ServletException
  {}
  
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
    throws IOException, ServletException
  {
    if (!WebAuthHelper.isUserAuthenticated()) {
      HttpServletResponse httpResponse = (HttpServletResponse)response;
      httpResponse.sendRedirect("/admin/login");
      return;
    }
    chain.doFilter(request, response);
  }
  
  public void destroy() {}
}
