package com.poiema.community.action;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.poiema.community.dao.HelpListDao;
import com.poiema.community.model.Family;
import com.poiema.community.model.HelpList;

public class DetailInformationAction {
	private HelpListDao helpListDao;
	
	public DetailInformationAction(){}
	
	public DetailInformationAction(HelpListDao helpListDao){
		this.helpListDao = helpListDao;
	}
	
	public void detailInformation(Model model, int seq){
		HelpList helpList = helpListDao.detailInformation(seq);
		
		String houseDescription = changeByteToString(helpList.getHouseDescription());
		String consultDescription = changeByteToString(helpList.getConsultDescription());
		
		model.addAttribute("helpList", helpList);
		model.addAttribute("houseDescription", houseDescription);
		model.addAttribute("consultDescription", consultDescription);
	}
	
	public ArrayList<Family> detailFamilyInformation(int seq){
		ArrayList<Family> familyList = helpListDao.detailFamilyInformation(seq);
		System.out.println(familyList);
		return familyList;
	}
	
	private String changeByteToString(byte[] description){
		String result = null;
		try{
			result = new String(description,"UTF-8");
		}catch(Exception e){e.printStackTrace();}
		
		return result;
	}

}
