package Action;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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
	
	public void save(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		HelpList helpList = setRequestParameter(request);
		helpListDao.save(helpList);
		
		ArrayList<Family> familyList = getFamilyList(request);
		
		if(familyList.size() > 0){
			int helpSeq = helpListDao.getRecentHelpSeq();
			helpListDao.insertFamilyList(familyList, helpSeq);
		}
		
		response.sendRedirect(request.getContextPath()+"/view/list.jsp");
		
	}
	
	public HelpList setRequestParameter(HttpServletRequest request){
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
		
		String livingCase = request.getParameter("livingCase");
		String sex = request.getParameter("sex");
		
		int age = 0;
		if(!(request.getParameter("age").equals(""))){
			age = Integer.parseInt(request.getParameter("age"));
		}
		
		Date startMonth = null;
		if(request.getParameter("startMonth") != null){
			startMonth = changeStringToDate(request.getParameter("startMonth"));
		}
		
		Date payMonth = null;
		if(request.getParameter("payMonth") != null){
			payMonth = changeStringToDate(request.getParameter("payMonth"));
		}
		
		int pay = 0;
		if(request.getParameter("pay") != null){
			pay = Integer.parseInt(request.getParameter("pay"));
		}
		
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

	public void find(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String who = request.getParameter("who");
		System.out.println(who);
		System.out.println(name);
		
		if(!(name.equals(""))){
			ArrayList<HelpList> personList = helpListDao.find(name, who);
			request.setAttribute("personList", personList);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/list.jsp");
		dispatcher.forward(request, response);
	}

	public void detail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		HelpList helpList = helpListDao.findOne(id);
		
		String houseDescription = changeByteToString(helpList.getHouseDescription());
		String consultDescription = changeByteToString(helpList.getConsultDescription());
		
		request.setAttribute("helpList", helpList);
		request.setAttribute("houseDescription", houseDescription);
		request.setAttribute("consultDescription", consultDescription);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/information.jsp");
		dispatcher.forward(request, response);
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HelpList helpList = setRequestParameter(request);
		helpListDao.update(helpList);
		System.out.println(helpList.toString());
		
		ArrayList<Family> familyList = getFamilyList(request);
		
		helpListDao.deleteFamilyList(helpList.getSeq());
		
		if(familyList.size() > 0){
			int helpSeq = helpListDao.getRecentHelpSeq();
			helpListDao.insertFamilyList(familyList, helpSeq);
		}
		
		response.sendRedirect(request.getContextPath()+"/view/list.jsp");
	}
	
	public String changeByteToString(byte[] description) throws Exception{
		return new String(description,"UTF-8");
	}

	public void listType(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//지금 년도와 월 을 받고 각 타입별로 total을 기본적으로 받아와야 한다.
		//helpListDao에서 getTotal method만들고 그걸 활용할 것. -> 함수화.
	}




	
}
