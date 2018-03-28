

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test")
public class test extends HttpServlet {

	int i; 
	
	public int add( int x ,  int y ) {return x + y;}
	
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =  response.getWriter(); 
		
		for(i = 0; i< 10; i++) 
			out.println( add( i , i) + "<br>");
		
	}

}
