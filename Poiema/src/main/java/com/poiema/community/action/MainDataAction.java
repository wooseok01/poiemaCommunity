package com.poiema.community.action;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.poiema.community.dao.HelpListDao;
import com.poiema.community.dao.UserListDao;

public class MainDataAction {
	private HelpListDao helpListDao;
	private UserListDao userListDao;
	
	public MainDataAction(){}

	public MainDataAction(HelpListDao helpListDao, UserListDao userListDao) {
		this.helpListDao = helpListDao;
		this.userListDao = userListDao;
	}
	
	public void getMainMetaData(Model model, HttpServletRequest request){
		String arr[] = {"A", "B", "love", "all"};
		
		ArrayList<HashMap<String, String>> statusList = 
				helpListDao.getStatusListByType(arr);
		
		model.addAttribute("statusList",statusList);
	}
}
