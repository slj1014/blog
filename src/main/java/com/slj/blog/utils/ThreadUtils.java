package com.slj.blog.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadUtils {
   public static ExecutorService fixedThreadPool=Executors.newFixedThreadPool(3);
   public static ExecutorService getExecutorService(){
	   return fixedThreadPool;
   }
}
