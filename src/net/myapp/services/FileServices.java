package net.myapp.services;

import java.io.File;

public class FileServices { public FileServices() {}
  
  public static String getFileExtension(File file) { String name = file.getName();
    try {
      return name.substring(name.lastIndexOf(".") + 1);
    } catch (Exception e) {}
    return "";
  }
}
