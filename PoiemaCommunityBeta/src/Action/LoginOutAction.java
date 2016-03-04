package Action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.UserDao;
import Model.UserList;

public class LoginOutAction {
	private UserDao userDao;
	
	public LoginOutAction(){
		userDao = new UserDao();

	}
	
	public void loginCheck(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(userDao.loginCheck(id, password)){
			HttpSession session = request.getSession();
			UserList user = userDao.getUserData(id,password);
			session.setAttribute("user", user);
			
			response.sendRedirect(request.getContextPath()+"/main/list");
		}else{
			request.setAttribute("errorTag", 1);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/index.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	
	public boolean sessionCheck(HttpServletRequest request){
		if(request.getSession().getAttribute("user") != null) return true;
		
		return false;
	}
}
