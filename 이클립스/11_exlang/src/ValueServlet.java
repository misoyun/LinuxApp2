

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.big2018.beans.User;

/**
 * Servlet implementation class ValueServlet
 */
@WebServlet("/ValueServlet")
public class ValueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValueServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ivalue = 4885;
		double dvalue = 3.14;
		String svalue = "bigdata";
		boolean bvalue = true;
		Object nullvalue = null;
		User user = new User();
		
		user.setId("Master");
		user.setPw("1234");
		
		request.setAttribute("IV", ivalue);
		request.setAttribute("DV", dvalue);
		request.setAttribute("SV", svalue);
		request.setAttribute("BV", bvalue);
		request.setAttribute("NV", nullvalue);
		request.setAttribute("UserInfo", user);
		
		request.getRequestDispatcher("/01/value.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
