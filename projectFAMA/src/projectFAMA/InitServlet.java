package projectFAMA;

import java.io.*;
import org.apache.logging.log4j.core.config.*;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class initservlet
 */
@WebServlet("/initservlet")
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		//CONFIGURAZIONE LOG
		try {
		
		System.out.println("CIAO LOG");
		String log4jConfigFile = config.getServletContext().getRealPath("/conf/log4j.xml"); 
		ConfigurationSource source = new ConfigurationSource(new FileInputStream(log4jConfigFile)); 
		Configurator.initialize(null, source); 
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
