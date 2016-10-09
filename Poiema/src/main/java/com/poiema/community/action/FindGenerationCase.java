package com.poiema.community.action;

import java.util.ArrayList;
import java.util.HashMap;

import com.poiema.community.dao.HelpListDao;

public class FindGenerationCase {
	private HelpListDao helpListDao;
	
	public FindGenerationCase(){}
	public FindGenerationCase(HelpListDao helpListDao) {this.helpListDao = helpListDao;}

	public void setHelpListDao(HelpListDao helpListDao) {this.helpListDao = helpListDao;}
	
	public ArrayList<HashMap<Object, Object>> getHelpPersonListByGeneration(String generationCase){
		ArrayList<HashMap<Object, Object>> generationList = null;
		
		generationList = helpListDao.getHelpPersonListByGeneration(generationCase);
		
		return generationList;
	}
	
	
	
	
}
