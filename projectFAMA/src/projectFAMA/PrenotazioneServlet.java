package projectFAMA;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PrenotazioneServlet
 */
@WebServlet("/Prenota")
public class PrenotazioneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PrenotazioneServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Servlet prenotazione: ");

		String hotel = request.getParameter("nomeH");
		Utente user = (Utente) request.getSession().getAttribute("UTENTE");
		String username = (String) request.getSession().getAttribute("SESSION_UTENTE");
		System.out.println("Pdf utente: " + user.getNome() + " " + user.getCognome());
		String[] destinazione = (String[]) request.getSession().getAttribute("DESTINAZIONI");
		for (int i = 0; i < destinazione.length; i++)
			System.out.println(destinazione[i]);
		String dataP = (String) request.getSession().getAttribute("DATAP");
		System.out.println(dataP);
		String dataR = (String) request.getSession().getAttribute("DATAA");
		System.out.println(dataR);
		String mezzo = (String) request.getSession().getAttribute(("MEZZO"));
		PDFPrenotazione pdf = new PDFPrenotazione();
		ByteArrayOutputStream output = pdf.printPDF(user.getNome(), user.getCognome(), hotel, destinazione, dataP,
				dataR);
		DataOdierna d = new DataOdierna();
		String data = d.getData();
		try {
			DBManager db = new DBManager();
			int idUtente = db.getIdUtente(username);
			ArrayList<Integer> idLuogo = new ArrayList<Integer>();
			for (int i = 0; i < destinazione.length; i++)
				idLuogo.add(db.idLuogo(destinazione[i]));
			int idMezzo = db.getIdMezzo(mezzo);
			int numViaggiatori = db.numViaggiatori(idMezzo);
			int idViaggio = 0;
			for (int i = 0; i < idLuogo.size(); i++) {
				idViaggio = db.idViaggio();
				db.insertViaggio(0, dataP, dataR, numViaggiatori, idMezzo, idLuogo.get(i));
				db.insertPrenota(data, idViaggio, idUtente);
			}

			response.addHeader("Content-Type", "application/force-download");
			response.addHeader("Content-Disposition", "attachment; filename=\"Prenotazione.pdf\"");
			response.getOutputStream().write(output.toByteArray());
			System.out.println("Download effettuato");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
