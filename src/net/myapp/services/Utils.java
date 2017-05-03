package net.myapp.services;

import java.security.MessageDigest;
import java.util.List;

public class Utils {
  public Utils() {}
  
  public static String getMD5(String s) throws java.security.NoSuchAlgorithmException { MessageDigest md = MessageDigest.getInstance("MD5");
    md.update(s.getBytes());
    byte[] byteData = md.digest();
    

    StringBuffer sb = new StringBuffer();
    for (int i = 0; i < byteData.length; i++) {
      sb.append(Integer.toString((byteData[i] & 0xFF) + 256, 16).substring(1));
    }
    
    System.out.println("Digest(in hex format):: " + sb.toString());
    return sb.toString();
  }
  
  
  
/* parse words in String in order to ;  **/
  public static String [] getStringAsArray(String String){
	  String []tools = null;
  
	 if(!isNullOrEmpty(String)){
	tools=String.split(";"); }
	  
	  return tools;
	  
  }
  
  
  
  public static boolean isNullOrEmpty(String s) {
		if (s==null)  return true;
		else if (s.equals(""))  return true;
		else if (s.equals("null"))  return true;
		return false;
		
	}
	public static boolean isNull(Object o) {
		if (o==null)  return true;
		return false;
		
	}
	
	public static boolean isEmail(String s){
		int intIndex = s.indexOf("@");
		if(intIndex != - 1)  return true;
	    return false;
	    
	}
	
	
	public static  boolean isEmpty(List<?> list){
		if (list==null)  return true;
		else if (list.size()==0)  return true;
		return false;
	}
	
	public static  boolean isEmpty(String []array){
		if (array==null)  return true;
		if (array.length==0)  return true;
		return false;
	}



}
