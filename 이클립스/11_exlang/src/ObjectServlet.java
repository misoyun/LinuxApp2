

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.big2018.beans.User;

/**
 * Servlet implementation class ObjectServlet
 */
@WebServlet("/ObjectServlet")
public class ObjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ObjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user1 = new User("1", "user1");
		User user2 = new User("2", "user2");
		User user3 = new User("3", "user3");
		
		
		//request scope 에 저장!
		request.setAttribute("user1", user1);
		//session scope 에 저장! 
		request.getSession().setAttribute("user2", user2);
		//application 에 저장!
		request.getServletContext().setAttribute("user3", user3);
		
		request.getRequestDispatcher("/01/scope.jsp").forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
