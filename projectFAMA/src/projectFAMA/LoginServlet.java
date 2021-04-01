package projectFAMA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectFAMA.DBManager;
//import projectFAMA.Utente;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Utente user;
		System.out.println("1");
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		try {
			DBManager db = new DBManager();
			ArrayList<Utente> utenti = new ArrayList<Utente>();
			System.out.println("2");

			if (db.controllaCredenziali(username, password) == true) {
				System.out.println("3");
				response.sendRedirect("home.html");
			} else
				response.sendRedirect("indexforgotpass.jsp");
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
