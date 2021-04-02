package projectFAMA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrazioneServlet
 */
@WebServlet("/RegistrazioneServlet")
public class RegistrazioneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrazioneServlet() {
		super();
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
		Md5Pass md = new Md5Pass();
		String nome = request.getParameter("name");
		String cognome = request.getParameter("surname");
		String dataN = request.getParameter("dateofbirthday");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		String confirm_password = request.getParameter("pass1");
		String passCriptata = md.Md5Pa(confirm_password);
		try {
			DBManager db = new DBManager();
			int id = db.idUtente();
			Utente u = new Utente(id, username, passCriptata, nome, cognome, dataN, tel, email, false);
			System.out.println(u.toString());
			if (password.equals(confirm_password)) {
				db.registrazioneUtente(u);
				response.sendRedirect("login.jsp");
				db.close();
			} else {
				response.sendRedirect("indexsignin.jsp");
				db.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
