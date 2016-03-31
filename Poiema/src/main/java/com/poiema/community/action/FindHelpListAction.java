package com.poiema.community.action;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.poiema.community.dao.HelpListDao;
import com.poiema.community.model.HelpList;

public class FindHelpListAction {
	private HelpListDao helpListDao;
	
	public FindHelpListAction(){}

	public FindHelpListAction(HelpListDao helpListDao) {
		this.helpListDao = helpListDao;
	}
	
	public void findHelpList(Model model, String who, String name){
		if(!(name.equals("")) && name != null){
			ArrayList<HelpList> personList = helpListDao.findHelpList(who, name);
			model.addAttribute("personList", personList);
		}
	}
	
}
