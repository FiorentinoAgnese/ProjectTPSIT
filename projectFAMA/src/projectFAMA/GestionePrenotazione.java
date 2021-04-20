package projectFAMA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GestionePrenotazione
 */
@WebServlet("/gestprenotazione")
public class GestionePrenotazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionePrenotazione() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comando = request.getParameter("cmd");
		if(comando.equals("viewall"))
		{
			DBManager db;
			ArrayList<Viaggio> elenco= new ArrayList<Viaggio>();
			
			try 
			{
				db= new DBManager();
				elenco=db.getViaggio();
				db.close();
				
				//ELENCO CLIENTI IN SESSIONE
				request.getSession().setAttribute("ELENCO_VIAGGI", elenco);
				response.sendRedirect("vediprenotazione.jsp");
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
		doGet(request,response);
	}
}
