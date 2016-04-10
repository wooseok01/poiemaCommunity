package com.poiema.community.action;

import java.util.ArrayList;
import java.util.HashMap;

import com.poiema.community.dao.HelpListDao;

public class FindLivingCaseAction {
	private HelpListDao helpListDao;
	
	public FindLivingCaseAction(){}

	public FindLivingCaseAction(HelpListDao helpListDao) {
		this.helpListDao = helpListDao;
	}
	
	
	public ArrayList<HashMap<Object, Object>> findHelpListByLivingCase(String livingCase){
		System.out.println(helpListDao.findHelpListByLivingCase(livingCase));
		return helpListDao.findHelpListByLivingCase(livingCase);
	}
	
}
