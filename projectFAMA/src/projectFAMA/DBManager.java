package projectFAMA;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import projectFAMA.Md5Pass;
import projectFAMA.Utente;

public class DBManager {
	private Connection connessione;
	private Statement query;
	private ResultSet rs;
	private String urlDb;
	private String userDb;
	private String passwordDb;

	public DBManager() throws Exception {

		try {

			System.out.println("Creazione della connessione");
			urlDb = "jdbc:mysql://localhost:3306/fama?serverTimezone=UTC";
			userDb = "root";
			passwordDb = "";
			System.out.println("Registrazione dei driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Registrazione effettuata");
			connessione = DriverManager.getConnection(urlDb, userDb, passwordDb);
			System.out.println("Connessione instaurata");
			query = connessione.createStatement();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public void close() throws Exception {
		query.close();
		connessione.close();
	}

	public boolean controllaCredenziali(String user, String pass) throws Exception {
		Md5Pass md = new Md5Pass();
		String passCriptata = md.Md5Pa(pass);
		System.out.println("Md5: " + passCriptata);
		String sql = "SELECT * FROM utente WHERE username='" + user + "' AND passw='" + passCriptata + "';";
		rs = query.executeQuery(sql);
		return rs.next();
	}

	public ArrayList<Utente> getUtenti() throws Exception {
		ArrayList<Utente> elenco = new ArrayList<Utente>();

		String sql = "SELECT * FROM Utente;";
		rs = query.executeQuery(sql);
		Utente u;

		while (rs.next()) {
			u = new Utente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getString(7), rs.getString(8), rs.getBoolean(9));
			elenco.add(u);
		}

		System.out.println("Utenti caricati: " + elenco.size());

		return elenco;
	}

	public int idUtente() throws Exception {
		int id = 0;
		ResultSet rs;
		PreparedStatement pstm;
		String sql = "SELECT MAX(IdUtente) FROM utente";
		rs = query.executeQuery(sql);
		while (rs.next()) {
			id = rs.getInt(1) + 1;
		}
		return id;
	}

	public ArrayList getPartenza() throws Exception {
		String sql = "SELECT DISTINCT NomeCitta FROM luogo ORDER BY 1";
		rs = query.executeQuery(sql);
		ArrayList luoghi = new ArrayList();
		String l = "";
		while (rs.next()) {
			l = rs.getString(1);
			luoghi.add(l);
		}
		return luoghi;

	}

	public ArrayList getRegione() throws Exception {
		String sql = "SELECT DISTINCT NomeRegione FROM luogo ORDER BY 1";
		rs = query.executeQuery(sql);
		ArrayList luoghi = new ArrayList();
		String l = "";
		while (rs.next()) {
			l = rs.getString(1);
			luoghi.add(l);
		}
		return luoghi;

	}

	public ArrayList<Hotel> getHotel(int luogo) throws Exception {
		ArrayList<Hotel> elenco = new ArrayList<Hotel>();
		String sql = "SELECT hotel.Nome FROM `hotel`, luogo WHERE luogo.IdLuogo=hotel.IdLuogo AND hotel.IdLuogo="
				+ luogo + ";";
		rs = query.executeQuery(sql);
		Hotel h;
		while (rs.next()) {
			h = new Hotel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getString(7));
			elenco.add(h);
		}
		System.out.println("Hotel visualizzati: " + elenco.size());

		return elenco;
	}

	public ArrayList getProvincia(String regione) throws Exception {
		String sql = "SELECT DISTINCT luogo.NomeCitta FROM luogo WHERE NomeRegione='" + regione + "';";
		rs = query.executeQuery(sql);
		ArrayList provincia = new ArrayList();
		String l = "";
		while (rs.next()) {
			l = rs.getString(1);
			provincia.add(l);
		}
		return provincia;
	}

	public ArrayList getProvincia() throws Exception {
		String sql = "SELECT DISTINCT luogo.NomeCitta FROM luogo ORDER BY 1";
		rs = query.executeQuery(sql);
		ArrayList provincia = new ArrayList();
		String l = "";
		while (rs.next()) {
			l = rs.getString(1);
			provincia.add(l);
		}
		return provincia;
	}

	public void registrazioneUtente(Utente u) throws Exception {
		String sqlInsert = "INSERT INTO utente VALUES (?,?,?,?,?,?,?,?,?);";
		PreparedStatement pstm;
		pstm = connessione.prepareStatement(sqlInsert);
		pstm.setInt(1, u.getIdUtente());
		pstm.setString(2, u.getUsername());
		pstm.setString(3, u.getPassw());
		pstm.setString(4, u.getNome());
		pstm.setString(5, u.getCognome());
		pstm.setString(6, u.getDataNascita());
		pstm.setString(7, u.getTelefono());
		pstm.setString(8, u.getEmail());
		pstm.setBoolean(9, u.isModeratore());
		System.out.println(pstm);
		pstm.executeUpdate();

	}

	public String aggiornaPassword(String pass, String email) {
		String passw = pass;
		Md5Pass md = new Md5Pass();
		String passCriptata = md.Md5Pa(pass);
		System.out.println("Md5: " + passCriptata);
		String sqlUpdate = "UPDATE utente SET Passw ='" + passCriptata + "' WHERE Email = '" + email + "';";
		PreparedStatement pstm;
		try {
			pstm = connessione.prepareStatement(sqlUpdate);
			pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return passw;
	}

	public static void main(String[] args) throws Exception {
		DBManager db = new DBManager();
		System.out.println(db.getPartenza());
		System.out.println(db.getRegione());
		System.out.println(db.getProvincia("Puglia"));

	}

}