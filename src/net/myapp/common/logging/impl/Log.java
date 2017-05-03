package net.myapp.common.logging.impl;

import org.apache.log4j.Logger;

public class Log
{
  private static final Logger logger = Logger.getLogger("");
  
  public Log() {}
  
  public static boolean isDebugEnabled() {
    return false;
  }
  
  public static void info(String paramString)
  {
    logger.info(paramString);
  }
  
  public static void debug(String paramString) {
    logger.debug(paramString);
  }
  
  public static void warn(String paramString)
  {
    logger.warn(paramString);
  }
  
  public static void error(String paramString)
  {
    logger.error(paramString);
  }
  
  public static void error(String paramString, Throwable paramThrowable)
  {
    logger.error(paramString, paramThrowable);
  }
}
