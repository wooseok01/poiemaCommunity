package com.poiema.community;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poiema.community.action.DetailInformationAction;
import com.poiema.community.action.FindGenerationCase;
import com.poiema.community.action.FindHelpListAction;
import com.poiema.community.action.FindListTypeAction;
import com.poiema.community.action.findHelpListByConsultCase;
import com.poiema.community.action.LoginAction;
import com.poiema.community.action.MainDataAction;
import com.poiema.community.action.SaveHelpListAction;
import com.poiema.community.dao.HelpListDao;
import com.poiema.community.dao.UserListDao;
import com.poiema.community.model.Family;
import com.poiema.community.model.UserList;

import net.sf.json.JSONArray;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
//	@Autowired
//	private SqlSession sqlSession;
	
	private UserListDao userListDao;
	private HelpListDao helpListDao;
	
	
	@Autowired
	public void setUserDao(UserListDao userListDao) {this.userListDao = userListDao;}
	public UserListDao getUserDao() {return userListDao;}
	
	@Autowired
	public void setHelpListDao(HelpListDao helpListDao) {this.helpListDao = helpListDao;}
	public HelpListDao getHelpListDao() {return helpListDao;}

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model model, UserList userList, HttpServletRequest request){
		
		LoginAction loginAction = new LoginAction(userListDao);
		
		if(loginAction.loginCheck(userList) > 0){
			HttpSession session = request.getSession();
			UserList user = loginAction.getUserData(request);
			System.out.println(user.toString());
			session.setAttribute("user", loginAction.getUserData(request));
			
			return "redirect:/main";
		}else{
			return "index";
		}
	}
	
	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public String goInformationPage(Model model, HttpServletRequest request){
		return sessionCheck("information", request);
	}
	
	@RequestMapping(value = "/listType", method = RequestMethod.GET)
	public String goListTypePage(Model model, HttpServletRequest request){
		return sessionCheck("listType", request);
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveHelpList(Model model, HttpServletRequest request){
		SaveHelpListAction action = new SaveHelpListAction(helpListDao);
		action.saveHelpList(request);
		return sessionCheck("list", request);
	}
	
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public String findHelpList(Model model, HttpServletRequest request, 
								String who, String name){
		try{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception e){e.printStackTrace();}
		
		FindHelpListAction action = new FindHelpListAction(helpListDao);
		action.findHelpList(model, who, name);
		
		return sessionCheck("list", request);
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detailHelpList(Model model, HttpServletRequest request, 
			@RequestParam("id") int seq){
		
		DetailInformationAction action = new DetailInformationAction(helpListDao);
		action.detailInformation(model, seq);
		
		return sessionCheck("information", request);
	}
	
	
	@RequestMapping(value = "/getFamilyData", method = RequestMethod.GET)
	public @ResponseBody JSONArray getFamilyData(Model model, @RequestParam("seq") int seq){
		
		DetailInformationAction action = new DetailInformationAction(helpListDao);
		ArrayList<Family> familyList = action.detailFamilyInformation(seq);
		
		JSONArray jsonArray = JSONArray.fromObject(familyList);
		
		return jsonArray;
	}
	
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String goToListPage(HttpServletRequest request){
		return sessionCheck("list", request);
	}
	
	
	@RequestMapping(value = "/findListType", method = RequestMethod.GET)
	public String findListType(Model model, HttpServletRequest request,
								@RequestParam("type") String type){
		
		FindListTypeAction action = new FindListTypeAction(helpListDao);
		action.getHelpListByType(model, type);
//		action.getStatusListByType(model);
		action.getTypeObject(model, type);
		
		return sessionCheck("listType",request);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateHelpList(Model model, HttpServletRequest request, 
								@RequestParam("seq") int seq){
		
		SaveHelpListAction action = new SaveHelpListAction(helpListDao);
		action.updateHelpList(request, seq);
		
		return sessionCheck("list", request);
	}
	
	@RequestMapping(value = "/deleteHelpList", method = RequestMethod.POST)
	public @ResponseBody JSONArray deleteHelpList(Model model, HttpServletRequest request, 
								@RequestParam("seqList[]") int[] seqList){
		try{
			for(int i=0; i<seqList.length; i++){
				helpListDao.deleteFamilyList(seqList[i]);
			}
			
			helpListDao.deleteHelpList(seqList);
			
			JSONArray jsonArray = new JSONArray();
			jsonArray.add("success");
			return jsonArray;
		}catch(Exception e){e.printStackTrace();}
		
		return null;
	}
	
	@RequestMapping(value="/main", method =RequestMethod.GET)
	public String mainPage(Model model, HttpServletRequest request){
		MainDataAction action = new MainDataAction(helpListDao, userListDao);
		action.getMainMetaData(model, request);
		return sessionCheck("main", request);
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String goToMyPage(Model model, HttpServletRequest request){
		return sessionCheck("myPage", request);
	}
	
	@RequestMapping(value = "/getSessionPwd", method = RequestMethod.POST)
	public @ResponseBody JSONArray checkSessionPwd(String pwd, HttpServletRequest request){
		HttpSession session = request.getSession();
		JSONArray result = new JSONArray();
		
		
		try{
			UserList user = (UserList)session.getAttribute("user");
			System.out.println(user.toString());
			if(user.getPwd().equals(pwd)){
				result.add("success");
			}else{
				result.add("fail");
			}
			return result;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value = "/changeMyData", method = RequestMethod.POST)
	public @ResponseBody JSONArray changeMyData(HttpServletRequest request, 
			String pwd, String userName){
		System.out.println(userName);
		JSONArray result = new JSONArray();
		HttpSession session = request.getSession();
		UserList user = (UserList)session.getAttribute("user");
		System.out.println(user.toString());
		userListDao.changeMyData(user.getId(), pwd, userName);

		user.setPwd(pwd);
		user.setUserName(userName);
		
		session.setAttribute("user", user);
		
		result.add("success");
		
		return result;
	}
	
	@RequestMapping(value = "/findConsultCase", method = RequestMethod.GET)
	public String findLivingCase(Model model, HttpServletRequest request){
		
		return sessionCheck("consultCase", request);
	}
	
	@RequestMapping(value = "/findHelpListByConsultCase", method = RequestMethod.POST)
	public @ResponseBody JSONArray findHelpListByConsultCase(HttpServletRequest request, 
			@RequestParam(value = "consultCase", defaultValue = "no") String consultCase){
		
		System.out.println(consultCase);
		findHelpListByConsultCase action = new findHelpListByConsultCase(helpListDao);
		
		ArrayList<HashMap<Object, Object>> consultCaseList = action.findConsultCase(consultCase);
		
		JSONArray array = new JSONArray();
		array = JSONArray.fromObject(consultCaseList);
		System.out.println(array);
		return array;
	}
	
	@RequestMapping("/findGeneration")
	public String findGeneration(Model model, HttpServletRequest request){
		
		return sessionCheck("generationCase", request);
	}
	
	@RequestMapping("/findHelpListPersonByGeneration")
	public @ResponseBody JSONArray findHelpListPersonByGeneration(Model model, 
			@RequestParam(value = "generationCase", defaultValue = "1")String generationCase){
		
		FindGenerationCase action = new FindGenerationCase(helpListDao);
		
		ArrayList<HashMap<Object, Object>> generationCaseList = action.getHelpPersonListByGeneration(generationCase);
		JSONArray jArray = JSONArray.fromObject(generationCaseList);
		return jArray;
	}
	
	
	
	
	
	
//	normal function
	public String sessionCheck(String targetJsp, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null){
			return targetJsp;
		}else{
			return "index";
		}
	}
	

	
	
	
}
