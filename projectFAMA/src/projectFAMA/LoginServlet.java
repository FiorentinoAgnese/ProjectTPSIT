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

		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		ArrayList regioni = new ArrayList();
		ArrayList province = new ArrayList();
		try {
			DBManager db = new DBManager();
			ArrayList<Utente> utenti = new ArrayList<Utente>();

			if (db.controllaCredenziali(username, password) == true) {
				province = db.getPartenza();
				regioni = db.getRegione();
				request.getSession().setAttribute("SESSION_UTENTE", username);
				request.getSession().setAttribute("SESSION_REGIONI", regioni);
				request.getSession().setAttribute("SESSION_PROVINCE", province);
				System.out.println(regioni);
				System.out.println(province);
				// request.getSession().setAttribute("SESSION_UTENTE", username);
				response.sendRedirect("home.jsp");
			} else
				response.sendRedirect("login.jsp");
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
