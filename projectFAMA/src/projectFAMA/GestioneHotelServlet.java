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

		System.out.println("Servlet: ");
		ArrayList<Integer> id = new ArrayList<Integer>();
		int idd;
		ArrayList<Hotel> elenco = new ArrayList<Hotel>();
		String[] destinazione = request.getParameterValues("province");
		System.out.println(destinazione);
		DBManager db;
		try {
			db = new DBManager();
			for (int i = 0; i < destinazione.length; i++) {
				idd = db.getIdProvincia(destinazione[i]);
				id.add(idd);
				System.out.println("Id: " + id);
				elenco = db.getHotel(id.get(i));
				System.out.println(elenco.get(i));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		request.getSession().setAttribute("IDLUOGO_SESSIONE", id);
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
