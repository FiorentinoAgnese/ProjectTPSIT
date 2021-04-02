package projectFAMA;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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

		String sql = "SELECT * FROM utente WHERE username='" + user + "' AND passw='" + pass + "';";
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

	public static void main(String[] args) throws Exception {
		DBManager db = new DBManager();
		// System.out.println(db.controllaCredenziali("Maria", "rosa"));
		int id = db.idUtente() + 1;

		Utente u = new Utente(id, "Lol", "pASS", "Lkl", "Lol", "2021-01-01", "33333", "c@CICE.COM", false);
		db.registrazioneUtente(u);
		System.out.println(db.idUtente());
	}

}