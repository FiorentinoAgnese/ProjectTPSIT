package projectFAMA;

public class Luogo {
	int IdLuogo;
	String NomeCitta;
	String NomeRegione;
	char Provincia;
	int IdHotel;
	int IdViaggio;
	
	public Luogo() {
	}
	
	public Luogo(int idLuogo, String nomeCitta, String nomeRegione, char provincia, int idHotel) {
		IdLuogo = idLuogo;
		NomeCitta = nomeCitta;
		NomeRegione = nomeRegione;
		Provincia = provincia;
		IdHotel = idHotel;
	}


	public int getIdLuogo() {
		return IdLuogo;
	}

	public void setIdLuogo(int idLuogo) {
		IdLuogo = idLuogo;
	}

	public String getNomeCitta() {
		return NomeCitta;
	}

	public void setNomeCitta(String nomeCitta) {
		NomeCitta = nomeCitta;
	}

	public String getNomeRegione() {
		return NomeRegione;
	}

	public void setNomeRegione(String nomeRegione) {
		NomeRegione = nomeRegione;
	}

	public char getProvincia() {
		return Provincia;
	}

	public void setProvincia(char provincia) {
		Provincia = provincia;
	}

	public int getIdHotel() {
		return IdHotel;
	}

	public void setIdHotel(int idHotel) {
		IdHotel = idHotel;
	}

	@Override
	public String toString() {
		return "Luogo [IdLuogo=" + IdLuogo + ", NomeCitta=" + NomeCitta + ", NomeRegione=" + NomeRegione
				+ ", Provincia=" + Provincia + ", IdHotel=" + IdHotel + "]";
	}
	
	
}