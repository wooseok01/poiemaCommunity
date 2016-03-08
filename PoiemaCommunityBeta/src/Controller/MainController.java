package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Action.HelpListAction;
import Action.LoginOutAction;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/main/*")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MainController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		controller(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		controller(request, response);
	}
	
	public void controller(HttpServletRequest request, HttpServletResponse response){
		
		String url = request.getRequestURI();
		String path = url.substring((request.getContextPath()+"/main").length(), url.length());
		
		System.out.println(path);
		
		LoginOutAction loginOutAction = new LoginOutAction();
		HelpListAction helpListAction = new HelpListAction();
		
		try{
			if(path.equals("/login")){
				System.out.println("login Page!");
				loginOutAction.loginCheck(request, response);
			}else if(path.equals("/save")){
				System.out.println("data save!");
				helpListAction.save(request, response);
			}else if(path.equals("/find")){
				System.out.println("find query!");
				helpListAction.find(request, response);
			}else if(path.equals("/detail")){
				System.out.println("detail page!");
				helpListAction.detail(request, response);
			}
			else{
				
			}
		}catch(Exception e){e.printStackTrace();}
	}

}
