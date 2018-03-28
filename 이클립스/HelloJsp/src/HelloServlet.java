

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 *  서블릿 클래스 작성 지침 !! 
 *  1) 서블릿 클래스는 public 작성 !!  :  톰캣에서 접근해서 사용  
 *  2) httpServlet 클래스를 상속 javax.servlet , javax.servlet.http 패키지 Import 필요 !!
 *  3)  doGet :    GET방식을 사용하는 모든 HTTP 요청을 처리 
 *  4)  doPost :  POST방식을 사용하는 모든 HTTP 요청을 처리 
 *  5) doGet, doPost 매개변수 !! 
 *     HttpServletRequest  :  클라이언트로 부터 전송된 요청 정보 ( 데이타,  전송 방식..등등) 
 *     HttpServletResponse :  클라이언트에 응답하기 위한 정보    ( HTML 정보) 
 */  
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out =  response.getWriter(); // HTML쓰기 스트림 !! 
		out.println("Hello Servlet !!"); 
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}










