package projectFAMA;

public class Prenota {
	

	String dataPrenotazione;
	String viaggio;
	//String utente;
	
	public Prenota() {
		
	}
	
	public Prenota(String dataPrenotazione, String viaggio/*, String utente*/) {
		super();
		this.dataPrenotazione = dataPrenotazione;
		this.viaggio = viaggio;
		//this.utente = utente;
	}
	
	public String getDataPrenotazione() {
		return dataPrenotazione;
	}
	public void setDataPrenotazione(String dataPrenotazione) {
		this.dataPrenotazione = dataPrenotazione;
	}
	public String getViaggio() {
		return viaggio;
	}
	public void setViaggio(String viaggio) {
		this.viaggio = viaggio;
	}
	/*public String getUtente() {
		return utente;
	}
	public void setUtente(String utente) {
		this.utente = utente;
	}*/

	@Override
	public String toString() {
		return "Prenota [dataPrenotazione=" + dataPrenotazione + ", viaggio=" + viaggio +/* ", utente=" + utente + */"]";
	}
	
}

