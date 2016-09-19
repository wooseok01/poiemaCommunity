package com.poiema.community.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.poiema.community.dao.HelpListDao;
import com.poiema.community.model.Family;
import com.poiema.community.model.HelpList;

public class SaveHelpListAction {
	
	private HelpListDao helpListDao;
	
	public SaveHelpListAction() {}
	
	public SaveHelpListAction(HelpListDao helpListDao){this.helpListDao = helpListDao;}
	
	public void saveHelpList(HttpServletRequest request){
		
		HelpList helpList = setRequestParameter(request);
		ArrayList<Family> familyList = getFamilyList(request);
		helpListDao.save(helpList);
		
		if(familyList.size() > 0){
			int helpSeq = helpListDao.getRecentHelpSeq();
			helpListDao.insertFamilyList(familyList, helpSeq);
		}
	}
	
	public void updateHelpList(HttpServletRequest request, int seq){
		HelpList helpList = setRequestParameter(request);
		System.out.println(helpList);
		ArrayList<Family> familyList = getFamilyList(request);
		
		helpListDao.deleteFamilyList(seq);
		helpListDao.updateHelpList(helpList);
		
		if(familyList.size() > 0){
			helpListDao.insertFamilyList(familyList, seq);
		}
	}
	
	
	private HelpList setRequestParameter(HttpServletRequest request){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {e.printStackTrace();}
		
		int seq = 0;
		System.out.println("sss -> "+request.getParameter("seq").equals(""));
		if(!(request.getParameter("seq").equals(""))){
			seq = Integer.parseInt(request.getParameter("seq"));
		}
		String type = request.getParameter("type");
		
		String volunteer = request.getParameter("volunteer");
		String volunteerTel = request.getParameter("volunteerTel");
		String applicant = request.getParameter("applicant");
		String applicantTel = request.getParameter("applicantTel");
		
		String target = request.getParameter("target");
		String targetTel = request.getParameter("targetTel");
		String address = request.getParameter("address");
		
		String consultCase = request.getParameter("consultCase");
		String sex = request.getParameter("sex");
		
		int age = 0;
		if(!(request.getParameter("age").equals(""))){
			age = Integer.parseInt(request.getParameter("age"));
		}
		
		String startMonth = null;
		if(request.getParameter("startMonth") != null){
			startMonth = request.getParameter("startMonth");
		}
		
		String payMonth = null;
		if(request.getParameter("payMonth") != null){
			payMonth = request.getParameter("payMonth");
		}
		
		String pay = request.getParameter("pay");
		String house = request.getParameter("house");
		String protection = request.getParameter("protection");
		String generation = request.getParameter("generation");
		
		byte[] houseDescription = null;
		if(request.getParameter("houseDescription") != null){
			houseDescription = request.getParameter("houseDescription").getBytes();
		}
		
		byte[] consultDescription = null;
		if(request.getParameter("consultDescription")  != null){
			consultDescription = request.getParameter("consultDescription").getBytes();
		}
		
		return new HelpList(seq, type, volunteer, volunteerTel, applicant, applicantTel, 
				target, targetTel, address, consultCase, sex, age, startMonth, payMonth, 
				pay, house, protection, generation, houseDescription, consultDescription);
	}
	
	
	private ArrayList<Family> getFamilyList(HttpServletRequest request){
		ArrayList<Family> familyList = new ArrayList<Family>();

		String relation, famName, job, liveWith, etc, age;
		
		for(int i=1; i<=5; i++){
			
			relation = request.getParameter("relation"+i);
			famName = request.getParameter("famName"+i);
			job = request.getParameter("job"+i);
			liveWith = request.getParameter("liveWith"+i);
			etc = request.getParameter("etc"+i);
			age = request.getParameter("age"+i);
			
			if(!(age.equals(""))){
				int numAge = Integer.parseInt(request.getParameter("age"+i));
				
				if(!(relation.equals("")) && !(famName.equals("")) && !(job.equals("")) && !(liveWith.equals(""))){
					familyList.add(new Family(relation, famName, numAge, job, liveWith, etc));
				}
			}
		}
		return familyList;
	}

}
