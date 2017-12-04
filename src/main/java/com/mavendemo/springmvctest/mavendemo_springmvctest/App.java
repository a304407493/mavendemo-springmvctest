package com.mavendemo.springmvctest.mavendemo_springmvctest;

import org.apache.log4j.Logger;

/**
 * Hello world!
 *
 */
public class App 
{
	private static Logger logger = Logger.getLogger(App.class);
    public static void main( String[] args )
    {
    	System.out.println( "This is a console message." );
        logger.debug("This is a debug message.");  
        logger.info("This is a info message."); 
        logger.warn("This is a warn message.");  
        logger.error("This is a error message.");  
    }
}
