package br.edu.insper;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeletaUser
 */
@WebServlet("/DeletaUser")
public class DeletaUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletaUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	
    	Integer personId = Integer.parseInt(request.getParameter("person_id"));
    	Integer id = Integer.parseInt(request.getParameter("id"));

	
		DAO dao;

		try {
			dao = new DAO();
			User usuario = new User();
			usuario.setId(personId);
			dao.deleteUser(usuario);
			dao.close();
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(id + " " + personId);
		
		if (personId == id) {
			System.out.println(id + " "  );
			response.sendRedirect("index.jsp");
			return;
		}
		else {
			
			
			
			request.setAttribute("id", id);
			request.getRequestDispatcher("usersAdm.jsp").forward(request, response);
		}


    }
    
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