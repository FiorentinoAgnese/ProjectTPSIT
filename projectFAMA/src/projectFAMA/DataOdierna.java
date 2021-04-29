package projectFAMA;

import java.time.LocalDate;

public class DataOdierna {
	private LocalDate today;

	public DataOdierna() {
		this.today = LocalDate.now();
	}

	public String getData() {
		String data = today.toString();
		return data;
	}

	public static void main(String[] args) throws java.text.ParseException {
		DataOdierna d = new DataOdierna();
		System.out.println(d.getData());
	}
}
