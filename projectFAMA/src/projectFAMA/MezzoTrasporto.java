package projectFAMA;

public class MezzoTrasporto {
	int IdMezzo;
	String tipoVeicolo;
	int NumPostiMax;
	
	public MezzoTrasporto() {
	}

	public MezzoTrasporto(int idMezzo, String tipoVeicolo, int numPostiMax) {
		super();
		IdMezzo = idMezzo;
		this.tipoVeicolo = tipoVeicolo;
		NumPostiMax = numPostiMax;
	}

	public int getIdMezzo() {
		return IdMezzo;
	}

	public void setIdMezzo(int idMezzo) {
		IdMezzo = idMezzo;
	}

	public String getTipoVeicolo() {
		return tipoVeicolo;
	}

	public void setTipoVeicolo(String tipoVeicolo) {
		this.tipoVeicolo = tipoVeicolo;
	}

	public int getNumPostiMax() {
		return NumPostiMax;
	}

	public void setNumPostiMax(int numPostiMax) {
		NumPostiMax = numPostiMax;
	}

	@Override
	public String toString() {
		return "MezzoTrasporto [IdMezzo=" + IdMezzo + ", tipoVeicolo=" + tipoVeicolo + ", NumPostiMax=" + NumPostiMax
				+ "]";
	}
	
}