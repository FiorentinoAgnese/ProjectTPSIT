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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String comando = request.getParameter("cmd");
		int id;
		System.out.println("Servlet: ");
		if (comando.equals("cerca")) {
			id = Integer.parseInt(request.getParameter("id"));
			DBManager db;
			ArrayList<Hotel> elenco = (ArrayList<Hotel>) request.getSession().getAttribute("ELENCO_HOTEL");
			Hotel h;
			for (int i = 0; i < elenco.size(); i++) {
				h = (Hotel) elenco.get(i);
				if (h.getIdHotel() == id) {
					request.getSession().setAttribute("HOTEL_SESSIONE", h);
					response.sendRedirect("Hotel.jsp");
					break;
				}
			}

		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		
		
	}

}
