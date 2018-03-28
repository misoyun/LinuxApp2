package com.bit.logApp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class App {

	private static final Log LOG =   LogFactory.getLog( App.class);
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LOG.debug("#1- bebug"); 
		LOG.info( "#2-info"); 
		LOG.warn("#3. warn ");
		LOG.error("#3. warn ");
		System.out.println("------------------- user log !---------------------");
		
		
	}

}
