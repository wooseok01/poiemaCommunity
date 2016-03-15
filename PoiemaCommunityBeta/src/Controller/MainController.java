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
				loginOutAction.loginCheck(request, response);
			}else if(path.equals("/save")){
				helpListAction.save(request, response);
			}else if(path.equals("/find")){
				helpListAction.find(request, response);
			}else if(path.equals("/detail")){
				helpListAction.detail(request, response);
			}else if(path.equals("/update")){
				System.out.println("update!!");
				helpListAction.update(request, response);
			}else if(path.equals("/listType")){
				System.out.println("listType!!");
				helpListAction.listType(request, response);
			}
			
			else{
				
			}
		}catch(Exception e){e.printStackTrace();}
	}

}
