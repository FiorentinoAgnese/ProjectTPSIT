package projectFAMA;

public class Luogo {
	String IdLuogo;
	String NomeCitta;
	String NomeRegione;
	String Provincia;
	String img;
	
	
	public Luogo() {
	}
	
	public Luogo(String idLuogo, String nomeCitta, String nomeRegione, String provincia, String img) {
		IdLuogo = idLuogo;
		NomeCitta = nomeCitta;
		NomeRegione = nomeRegione;
		Provincia = provincia;
		this.img=img;
	}


	public String getIdLuogo() {
		return IdLuogo;
	}

	public void setIdLuogo(String idLuogo) {
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

	public String getProvincia() {
		return Provincia;
	}

	public void setProvincia(String provincia) {
		Provincia = provincia;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img=img;
	}

	@Override
	public String toString() {
		return "Luogo [IdLuogo=" + IdLuogo + ", NomeCitta=" + NomeCitta + ", NomeRegione=" + NomeRegione
				+ ", Provincia=" + Provincia + ", Img=" + img + "]";
	}
	
	
}