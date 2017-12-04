package com.mavendemo.springmvctest.mavendemo_springmvctest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

public class AppService implements IAppService{
//	private static Logger logger = Logger.getLogger(AppService.class);
    private final static Logger LOGGER =  LoggerFactory.getLogger(AppService.class);
    @Value(value="${username}")
//    @Value("#{configProperties['username']}")
//    @Value("#{apps['username']}")
    private String hello;
    /*log4j
	public void processLog(){
		logger.debug("Service This is a debug message.");
        logger.info("Service This is a info message.");
        logger.warn("Service This is a warn message.");
        logger.error("Service This is a error message.");
	}
	*/
	public void processLog(){
		LOGGER.info("{} {} hello {}",new Object[]{"This","is",hello});
		LOGGER.debug("{} {} a debug message.",new Object[]{"This","is"});
        LOGGER.info("{} {} a info message.",new Object[]{"This","is"});
        LOGGER.warn("{} {} a warn message.",new Object[]{"This","is"});
        LOGGER.error("{} {} a error message.",new Object[]{"This","is"});
	}
}
