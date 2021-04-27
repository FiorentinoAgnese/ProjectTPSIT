package projectFAMA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class gestluogoBackServlet
 */
@WebServlet("/gestluogoBackServlet")
public class gestluogoBackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gestluogoBackServlet() {
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
		
		if (comando.equals("insert")) {
            DBManager db;
            ArrayList<Luogo> elenco = new ArrayList<Luogo>();
            Luogo l = new Luogo();
            l.setIdLuogo(request.getParameter("txtIdLuogo"));
           l.setNomeCitta(request.getParameter("txtNomeCitta"));
           l.setNomeRegione(request.getParameter("txtNomeRegione"));
           l.setProvincia(request.getParameter("txtProvincia"));
           l.setImg(request.getParameter("txtImg"));
 System.out.println(l.IdLuogo);

            try {
                db = new DBManager();
                db.insertLuogo(l);
                elenco = db.getElencoLuogo();
                db.close();
                

 

                request.getSession().setAttribute("ELENCO_LUOGO", elenco);
                response.sendRedirect("gestluogoback.jsp");

 

            } catch (Exception e) {
                e.getStackTrace();
            }

	 
	
	 }
		if(comando.equals("elimina"))
		{
			id = request.getParameter("id");
			DBManager db;
			ArrayList<Luogo> elenco= new ArrayList<Luogo>();
			try 
			{
				db= new DBManager();
				int righe=db.deleteLuogo(id);
				elenco=db.getElencoLuogo();
				db.close();
				
				//ELENCO Luoghi IN SESSIONE
				request.getSession().removeAttribute("ELENCO_LUOGO");
				request.getSession().setAttribute("ELENCO_LUOGO", elenco);
				response.sendRedirect("gestluogoback.jsp");
					
				
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
