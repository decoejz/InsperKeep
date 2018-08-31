package br.edu.insper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValidarUser
 */
@WebServlet("/ValidarUser")
public class ValidarUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidarUser() {
        super();
        // TODO Auto-generated constructor stub
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
		DAO dao;
		dao = new DAO();
		User user = new User();
		try {
		user.setLogin(request.getParameter("login"));
		user.setPassword(request.getParameter("password"));
		
			boolean auth =dao.validateUser(user);
	
		
		if (auth == true) {
			
			request.setAttribute("id", user.getId());
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else {
			PrintWriter out  = response.getWriter();
			out.println("<html>");
	    	out.println("<body>");
	    	out.println("<h1> Usuário não autenticado" + "</h3><br>");
	    	out.println("<a href=\"index.jsp\"><input type=\"button\" value=\"Cancelar\"></a>");


	    	out.println("</body>");

	    	out.println("</html>");
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}