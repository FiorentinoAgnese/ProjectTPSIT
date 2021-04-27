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
		
		System.out.println("comando: "+comando);
		
		if (comando.equals("inserisci")) {
            DBManager db;
            ArrayList<Hotel> elenco = new ArrayList<Hotel>();
            Hotel h = new Hotel();
            h.setIdHotel(request.getParameter("txtIdHotel"));
            h.setIndirizzi(request.getParameter("txtIndirizzo"));
            h.setTelefono(request.getParameter("txtTelefono"));
            h.setEmail(request.getParameter("txtEmail"));
            h.setNome(request.getParameter("txtNome"));
            h.setNumStelle(request.getParameter("txtNumStelle"));
            h.setIdLuogo(request.getParameter("txtIdLuogo"));
            h.setImg(request.getParameter("txtImg"));

 

            try {
                db = new DBManager();
                db.insertHotel(h);
                elenco = db.getElencoHotel();
                db.close();

 

                request.getSession().setAttribute("ELENCO_HOTEL", elenco);
                response.sendRedirect("gesthotelback.jsp");

 

            } catch (Exception e) {
                e.getStackTrace();
            }

	 
	
	 }
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
