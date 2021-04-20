package projectFAMA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class gesthotelBackServlet
 */
@WebServlet("/gesthotelBackServlet")
public class gesthotelBackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gesthotelBackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comando = request.getParameter("cmd");
		String id; 
		
		
		if(comando.equals("elimina"))
		{
			id = request.getParameter("id");
			DBManager db;
			ArrayList<Hotel> elenco= new ArrayList<Hotel>();
			try 
			{
				db= new DBManager();
				int righe=db.deleteHotel(id);
				elenco=db.getElencoHotel();
				db.close();
				
				//ELENCO HOTEL IN SESSIONE
				request.getSession().removeAttribute("ELENCO_HOTEL");
				request.getSession().setAttribute("ELENCO_HOTEL", elenco);
				response.sendRedirect("gesthotelback.jsp");
					
				
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		}
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
