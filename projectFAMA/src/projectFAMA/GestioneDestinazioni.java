package projectFAMA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GestioneDestinazioni
 */
@WebServlet("/GestioneDestinazioni")
public class GestioneDestinazioni extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GestioneDestinazioni() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// String comando = request.getParameter("cmd");
		ArrayList<Integer> id = new ArrayList<Integer>();
		ArrayList<Hotel> elenco = new ArrayList<Hotel>();
		// System.out.println(comando);
		System.out.println("Servlet destinazioni");
		DBManager db;

		try {
			db = new DBManager();

			// id = Integer.parseInt(request.getParameter("id"));
			String partenza = request.getParameter("partenze");
			String dataPartenza = request.getParameter("dataP");
			String dataArrivo = request.getParameter("dataA");
			String mezzo = request.getParameter("mezzo");
			String regione = request.getParameter("regione");
			// String[] destinazione = request.getParameterValues("province");
			System.out.println(partenza);
			System.out.println(dataPartenza);
			System.out.println(dataArrivo);
			System.out.println(mezzo);
			System.out.println(regione);
			// for (int i = 0; i < destinazione.length; i++) {
			// id.add(db.getIdProvincia(destinazione[i]));
			// elenco.add(db.getHotel(id.get(i)));
			// elenco = db.getHotel(id.get(i));
			// System.out.println(elenco.get(i));
			// }
			// Hotel h;
			request.getSession().setAttribute("REGIONE", regione);
			// request.getSession().setAttribute("HOTEL_SESSIONE", elenco);
			request.getSession().setAttribute("PARTENZA", partenza);
			request.getSession().setAttribute("DATAP", dataPartenza);
			request.getSession().setAttribute("DATAA", dataArrivo);
			request.getSession().setAttribute("MEZZO", mezzo);
			response.sendRedirect("destinazione.jsp");

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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
