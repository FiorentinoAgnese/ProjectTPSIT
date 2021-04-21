package projectFAMA;

public class Hotel {
	int IdHotel;
	String Indirizzi;
	String Telefono;
	String Email;
	String Nome;
	String nomeCitta;
	String numStelle;

	public Hotel() {
	}

	public Hotel(int idHotel, String indirizzi, String telefono, String email, String nome, String numStelle,
			String nomeCitta) {
		super();
		IdHotel = idHotel;
		Indirizzi = indirizzi;
		Telefono = telefono;
		Email = email;
		Nome = nome;
		this.nomeCitta = nomeCitta;
		this.numStelle = numStelle;
	}

	public int getIdHotel() {
		return IdHotel;
	}

	public void setIdHotel(int idHotel) {
		IdHotel = idHotel;
	}

	public String getIndirizzi() {
		return Indirizzi;
	}

	public void setIndirizzi(String indirizzi) {
		Indirizzi = indirizzi;
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

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getNumStelle() {
		return numStelle;
	}

	public void setNumStelle(String numStelle) {
		this.numStelle = numStelle;
	}

	public String getNomeCitta() {
		return nomeCitta;
	}

	public void setNomeCitta(String nomeCitta) {
		this.nomeCitta = nomeCitta;
	}

	@Override
	public String toString() {
		return "Hotel [IdHotel=" + IdHotel + ", Indirizzi=" + Indirizzi + ", Telefono=" + Telefono + ", Email=" + Email
				+ ", Nome=" + Nome + ", nomeCitta=" + nomeCitta + ", numStelle=" + numStelle + "]";
	}

}