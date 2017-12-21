package kr.co.pj.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {

	private Map<String, Controller> mappings;
	
	public HandlerMapping(String propLocation) {
		mappings = new HashMap<>();
		
		Properties prop = new Properties();
		
		try {
			InputStream inStream = new FileInputStream(propLocation);
			prop.load(inStream);
			
			Set<Object> keys = prop.keySet();
			for(Object key : keys) {
				String className = prop.getProperty(key.toString());
				Class<?> clz = Class.forName(className);
				mappings.put(key.toString(), ((Controller)clz.newInstance()) );
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	
	public Controller getController(String uri) {
		return mappings.get(uri);
	}	
	
	
}
