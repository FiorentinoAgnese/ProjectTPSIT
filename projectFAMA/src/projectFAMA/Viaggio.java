package projectFAMA;

public class Viaggio {


	int idViaggio;
	String dataInizio;
	String dataFine;
	int numViaggiatori;
	int idMezzo;
	int idLuogo;
	
	public Viaggio() {
	}
	
	public Viaggio(int idViaggio, String dataInizio, String dataFine, int numViaggiatori, int idMezzo, int idLuogo) {
		super();
		this.idViaggio = idViaggio;
		this.dataInizio = dataInizio;
		this.dataFine = dataFine;
		this.numViaggiatori = numViaggiatori;
		this.idMezzo = idMezzo;
		this.idLuogo = idLuogo;
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
	public int getIdMezzo() {
		return idMezzo;
	}
	public void setIdMezzo(int idMezzo) {
		this.idMezzo = idMezzo;
	}
	public int getIdLuogo() {
		return idLuogo;
	}
	public void setIdLuogo(int idLuogo) {
		this.idLuogo = idLuogo;
	}
	@Override
	public String toString() {
		return "Viaggio [idViaggio=" + idViaggio + ", dataInizio=" + dataInizio + ", dataFine=" + dataFine
				+ ", numViaggiatori=" + numViaggiatori + ", idMezzo=" + idMezzo + ", idLuogo=" + idLuogo + "]";
	}
}
