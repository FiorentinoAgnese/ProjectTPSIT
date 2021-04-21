package projectFAMA;

public class Viaggio {


	int idViaggio;
	String dataInizio;
	String dataFine;
	int numViaggiatori;
	String Mezzo;
	String Luogo;
	
	public Viaggio() {
	}
	
	public Viaggio(int idViaggio, String dataInizio, String dataFine, int numViaggiatori, String Mezzo, String Luogo) {
		super();
		this.idViaggio = idViaggio;
		this.dataInizio = dataInizio;
		this.dataFine = dataFine;
		this.numViaggiatori = numViaggiatori;
		this.Mezzo = Mezzo;
		this.Luogo = Luogo;
	}
	
	public int getIdViaggio() {
		return idViaggio;
	}
	public void setIdViaggio(int idViaggio) {
		this.idViaggio = idViaggio;
	}
	public String getDataInizio() {
		return dataInizio;
	}
	public void setDataInizio(String dataInizio) {
		this.dataInizio = dataInizio;
	}
	public String getDataFine() {
		return dataFine;
	}
	public void setDataFine(String dataFine) {
		this.dataFine = dataFine;
	}
	public int getNumViaggiatori() {
		return numViaggiatori;
	}
	public void setNumViaggiatori(int numViaggiatori) {
		this.numViaggiatori = numViaggiatori;
	}
	public String getMezzo() {
		return Mezzo;
	}
	public void setMezzo(String Mezzo) {
		this.Mezzo = Mezzo;
	}
	public String getLuogo() {
		return Luogo;
	}
	public void setLuogo(String Luogo) {
		this.Luogo = Luogo;
	}
	@Override
	public String toString() {
		return "Viaggio [idViaggio=" + idViaggio + ", dataInizio=" + dataInizio + ", dataFine=" + dataFine
				+ ", numViaggiatori=" + numViaggiatori + ", idMezzo=" + Mezzo + ", idLuogo=" + Luogo + "]";
	}
}
