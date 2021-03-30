package projectFAMA;

public class Utente {
	int IdUtente;
	String Username;
	String Passw;
	String Nome;
	String Cognome;
	String DataNascita;
	String Telefono;
	String Email;
	boolean Moderatore;

	public Utente() {
	}

	public Utente(int idUtente, String username, String passw, String nome, String cognome, String dataNascita,
			String telefono, String email, boolean moderatore) {
		IdUtente = idUtente;
		Username = username;
		Passw = passw;
		Nome = nome;
		Cognome = cognome;
		DataNascita = dataNascita;
		Telefono = telefono;
		Email = email;
		Moderatore = moderatore;
	}

	public int getIdUtente() {
		return IdUtente;
	}

	public void setIdUtente(int idUtente) {
		IdUtente = idUtente;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassw() {
		return Passw;
	}

	public void setPassw(String passw) {
		Passw = passw;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getCognome() {
		return Cognome;
	}

	public void setCognome(String cognome) {
		Cognome = cognome;
	}

	public String getDataNascita() {
		return DataNascita;
	}

	public void setDataNascita(String dataNascita) {
		DataNascita = dataNascita;
	}

	public String getTelefono() {
		return Telefono;
	}

	public void setTelefono(String telefono) {
		Telefono = telefono;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public boolean isModeratore() {
		return Moderatore;
	}

	public void setModeratore(boolean moderatore) {
		Moderatore = moderatore;
	}

	@Override
	public String toString() {
		return "Utente [IdUtente=" + IdUtente + ", Username=" + Username + ", Passw=" + Passw + ", Nome=" + Nome
				+ ", Cognome=" + Cognome + ", DataNascita=" + DataNascita + ", Telefono=" + Telefono + ", Email="
				+ Email + ", Moderatore=" + Moderatore + "]";
	}
}
