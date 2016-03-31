package com.poiema.community.action;

import javax.servlet.http.HttpServletRequest;

import com.poiema.community.dao.UserListDao;
import com.poiema.community.model.UserList;

public class LoginAction {

	private UserListDao userListDao;

	public LoginAction(UserListDao userListDao) {
		this.userListDao = userListDao;
	}
	
	public LoginAction(){}
	
	public int loginCheck(UserList userList){
		
		return userListDao.loginCheck(userList);
	}

	public UserList getUserData(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		return userListDao.getUserData(id, pwd);
	}

}
