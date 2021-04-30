package projectFAMA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

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
		String username="";
		String user="";
		if(comando.equals("viewall"))
		{
			DBManager db;
			ArrayList<Prenota> elenco= new ArrayList<Prenota>();
			
			try 
			{
				//request.getSession().setAttribute("SESSION_UTENTE", username);
				user=(String)request.getSession().getAttribute("SESSION_UTENTE");
				System.out.println("utente= "+user);
				db= new DBManager();
				elenco=db.getPrenotazione(user);
				db.close();
				
				//ELENCO CLIENTI IN SESSIONE
				request.getSession().setAttribute("ELENCO_VIAGGI", elenco);
				
				response.sendRedirect("vediprenotazione.jsp");
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}

		}
		Logger logger = LogManager.getLogger(GestionePrenotazione.class); 
		logger.info("lettura dei parametri");
		logger.debug("this is a debug log message"); 
		logger.error("this is a error log message");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
}
