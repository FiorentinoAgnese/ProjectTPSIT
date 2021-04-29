package projectFAMA;

public class Hotel {
	String IdHotel;
	String Indirizzi;
	String Telefono;
	String Email;
	String Nome;

	String numStelle;
	String IdLuogo;
	String img;

	public Hotel() {
	}

	public Hotel(String idHotel, String indirizzi, String telefono, String email, String nome, String numStelle,
			String IdLuogo, String img) {
		IdHotel = idHotel;
		Indirizzi = indirizzi;
		Telefono = telefono;
		Email = email;
		Nome = nome;

		this.numStelle = numStelle;
		this.IdLuogo = IdLuogo;
		this.img = img;
	}

	public String getIdHotel() {
		return IdHotel;
	}

	public void setIdHotel(String string) {
		IdHotel = string;
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

	public String getIdLuogo() {
		return IdLuogo;
	}

	public void setIdLuogo(String IdLuogo) {
		this.IdLuogo = IdLuogo;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Hotel [IdHotel=" + IdHotel + ", Indirizzi=" + Indirizzi + ", Telefono=" + Telefono + ", Email=" + Email
				+ ", Nome=" + Nome + ", IdLuogo=" + IdLuogo + ", numStelle=" + numStelle + ", Img=" + img + "]";
	}

}