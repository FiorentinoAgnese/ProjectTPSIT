package projectFAMA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GestioneHotelServlet
 */
@WebServlet("/GestioneHotelServlet")
public class GestioneHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GestioneHotelServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Hotel h;
		System.out.println("Servlet hotel");
		ArrayList<Integer> id = new ArrayList<Integer>();
		ArrayList<Hotel> elenco = new ArrayList<Hotel>();
		String[] destinazioni = request.getParameterValues("province");
		System.out.println("Destinazioni: " + destinazioni);
		DBManager db;
		try {
			db = new DBManager();
			for (int i = 0; i < destinazioni.length; i++) {
				id.add(db.getIdProvincia(destinazioni[i]));
				elenco.addAll(db.getHotel(id.get(i)));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("ID: " + id);
		// request.getSession().setAttribute("IDLUOGO_SESSIONE", id);
		System.out.println("Numeri hotel in sessione: " + elenco.size());
		request.getSession().setAttribute("HOTEL_SESSIONE", elenco);
		response.sendRedirect("hotel.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
