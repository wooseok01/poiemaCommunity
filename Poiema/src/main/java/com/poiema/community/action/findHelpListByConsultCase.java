package com.poiema.community.action;

import java.util.ArrayList;
import java.util.HashMap;

import com.poiema.community.dao.HelpListDao;

public class findHelpListByConsultCase {
	private HelpListDao helpListDao;
	
	public findHelpListByConsultCase(){}

	public findHelpListByConsultCase(HelpListDao helpListDao) {
		this.helpListDao = helpListDao;
	}
	
	
	public ArrayList<HashMap<Object, Object>> findConsultCase(String consultCase){
		System.out.println(helpListDao.findConsultCase(consultCase));
		return helpListDao.findConsultCase(consultCase);
	}
	
}
