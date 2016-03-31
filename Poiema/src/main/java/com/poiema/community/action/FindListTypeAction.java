package com.poiema.community.action;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.ui.Model;

import com.poiema.community.dao.HelpListDao;
import com.poiema.community.model.HelpList;

public class FindListTypeAction {
	private HelpListDao helpListDao;
	
	public FindListTypeAction(){}

	public FindListTypeAction(HelpListDao helpListDao) {
		super();
		this.helpListDao = helpListDao;
	}

	public HelpListDao getHelpListDao() {return helpListDao;}
	public void setHelpListDao(HelpListDao helpListDao) {this.helpListDao = helpListDao;}
	
	
	public void getHelpListByType(Model model, String type){
		ArrayList<HelpList> personList = helpListDao.getHelpListByType(type);
		
		model.addAttribute("personList", personList);
	}
	
	public void getStatusListByType(Model model){
		String typeArr[] = {"A", "B", "love", "none", "all"};
		ArrayList<HashMap<String, String>> statusList 
				= helpListDao.getStatusListByType(typeArr);
		
		model.addAttribute("statusList",statusList);
	}
	
	public void getTypeObject(Model model, String type){
		HashMap<String, String> typeMap = helpListDao.getTypeObject(type);
		typeMap.put("type", type);
		System.out.println(typeMap);
		
		model.addAttribute("type",typeMap);
		
	}
	
}
