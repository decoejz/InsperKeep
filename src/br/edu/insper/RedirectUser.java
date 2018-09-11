package br.edu.insper;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectUser
 */
@WebServlet("/RedirectUser")
public class RedirectUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedirectUser() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Integer pessoa_id = Integer.parseInt(request.getParameter("id"));
		
		request.setAttribute("id", pessoa_id);
		request.getRequestDispatcher("home.jsp").forward(request, response);
		
	
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
