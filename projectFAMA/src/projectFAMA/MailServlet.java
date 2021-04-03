package projectFAMA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResendServlet
 */
@WebServlet("/MailSrvlet")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("Pass");
		String pass_confirm = request.getParameter("CPass");
		System.out.println(email);
		try {
			DBManager db = new DBManager();
			MailManager m = new MailManager();
			if (pass.equals(pass_confirm)) {
				// System.out.println("ok");
				m.sendMail(email, pass_confirm);
				response.sendRedirect("index.jsp");
				// m.close();
				// db.close();
			} else
				response.sendRedirect("indexsignin.jsp");
			m.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
