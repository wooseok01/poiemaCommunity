package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Action.LoginOutAction;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/main/*")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		controller(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		controller(request, response);
	}
	
public void controller(HttpServletRequest request, HttpServletResponse response){
		
		String url = request.getRequestURI();
		String path = url.substring((request.getContextPath()+"/main").length(), url.length());
		
		System.out.println(path);
		
		LoginOutAction loginOutAction = new LoginOutAction();
		
		try{
			if(path.equals("/login")){
				System.out.println("login Page!");
				loginOutAction.loginCheck(request, response);
			}else{
				
			}
		}catch(Exception e){e.printStackTrace();}
	}

}
