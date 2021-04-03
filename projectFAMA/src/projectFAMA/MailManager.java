package projectFAMA;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import projectFAMA.DBManager;

public class MailManager {

	private static Properties prop;
	private MimeMessage message;
	private Transport transport;
	private Session session;

	public MailManager() throws Exception {
		// Leggo le proprietà da file properties
		ReadPropertyFileFromClassPath obj = new ReadPropertyFileFromClassPath();
		prop = obj.loadProperties("config.properties");
		session = Session.getDefaultInstance(prop);
		transport = session.getTransport("smtp");
		System.out.println("Connessione al mail server");
		transport.connect(prop.getProperty("mail.smtp.host"), prop.getProperty("mail.smtp.user"),
				prop.getProperty("mail.smtp.password"));
		System.out.println("Connesso...");
	}

	// Invio della mail
	public void sendMail(String email, String pass) {

		try {
			message = new MimeMessage(session);

			// Impostazione del destinatario
			InternetAddress toAddress = new InternetAddress(email);
			message.addRecipient(Message.RecipientType.TO, toAddress);

			// Impostazione del mittente
			message.setFrom(new InternetAddress(prop.getProperty("mail.smtp.user"), "FAMA"));

			// Impostazione dell'oggetto del messaggio
			message.setSubject("Nuova Password");

			// Aggiornamento della password
			DBManager db = new DBManager();
			String password = db.aggiornaPassword(pass, email);

			// Imposto la password come testo del messaggio
			message.setText(password);
			// Invio la mail
			transport.sendMessage(message, message.getAllRecipients());
			System.out.println("Mail Inviata");
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	public void close() throws Exception {
		System.out.println("Chiusura connessione...");
		transport.close();
	}

	// test
	public static void main(String[] args) throws Exception {
		MailManager mailm = new MailManager();
		mailm.sendMail("corsano92@gmail.com", "1234");

	}
}
