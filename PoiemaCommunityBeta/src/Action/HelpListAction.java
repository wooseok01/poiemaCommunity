package Action;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.HelpListDao;
import Model.Family;
import Model.HelpList;

public class HelpListAction {
	
	private HelpListDao helpListDao;
	
	public HelpListAction(){
		helpListDao = new HelpListDao();
	}
	
	public void save(HttpServletRequest request, HttpServletResponse response) {
		
		HelpList helpList = setRequestParameter(request);
		helpListDao.save(helpList);
		
		ArrayList<Family> familyList = getFamilyList(request);
		
		if(familyList.size() > 0){
			int helpSeq = helpListDao.getRecentHelpSeq();
			helpListDao.insertFamilyList(familyList, helpSeq);
		}
		
	}
	
	public HelpList setRequestParameter(HttpServletRequest request){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {e.printStackTrace();}
		
		String type = request.getParameter("type");
		
		String volunteer = request.getParameter("volunteer");
		System.out.println(volunteer);
		String volunteerTel = request.getParameter("volunteerTel");
		String applicant = request.getParameter("applicant");
		String applicantTel = request.getParameter("applicantTel");
		
		String target = request.getParameter("target");
		String targetTel = request.getParameter("targetTel");
		String address = request.getParameter("address");
		
		String livingCase = request.getParameter("livingCase");
		String sex = request.getParameter("sex");
		int age = Integer.parseInt(request.getParameter("age"));
		Date startMonth = changeStringToDate(request.getParameter("startMonth"));
		Date payMonth = changeStringToDate(request.getParameter("payMonth"));
		
		int pay = Integer.parseInt(request.getParameter("pay"));
		String house = request.getParameter("house");
		String protection = request.getParameter("protection");
		String generation = request.getParameter("generation");
		
		String houseDescription = request.getParameter("houseDescription");
		String consultDescription = request.getParameter("consultDescription");
		
		
		return new HelpList(0, type, volunteer, volunteerTel, applicant, applicantTel, 
				target, targetTel, address, livingCase, sex, age, startMonth, payMonth, 
				pay, house, protection, generation, houseDescription, consultDescription);
	}
	
	public Date changeStringToDate(String format){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			java.util.Date date = dateFormat.parse(format);
			return new Date(date.getTime());
		} catch (ParseException e) {e.printStackTrace();}
		return null;
	}

	public ArrayList<Family> getFamilyList(HttpServletRequest request){
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
