package projectFAMA;

import java.io.ByteArrayOutputStream;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.util.ByteArrayDataSource;

import projectFAMA.DBManager;

public class MailPrenotazione {

	private static Properties prop;
	private MimeMessage message;
	private Transport transport;
	private Session session;

	public MailPrenotazione() throws Exception {
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
	public void sendMail(String email, ByteArrayOutputStream allegato) {

		try {
			message = new MimeMessage(session);

			// Impostazione del destinatario
			InternetAddress toAddress = new InternetAddress(email);
			message.addRecipient(Message.RecipientType.TO, toAddress);

			// Impostazione del mittente
			message.setFrom(new InternetAddress(prop.getProperty("mail.smtp.user"), "FAMA"));

			// Impostazione dell'oggetto del messaggio
			message.setSubject("Prenotazione effetuata");

			// Imposto come testo del messaggio un messaggio di modifica riuscita
			message.setText("Prenotazione");

			// allegato
			// construct the text body part

			// now write the PDF content to the output stream

			byte[] bytes = allegato.toByteArray();

			// construct the pdf body part
			DataSource dataSource = new ByteArrayDataSource(bytes, "application/force-download");
			MimeBodyPart pdfBodyPart = new MimeBodyPart();
			pdfBodyPart.setDataHandler(new DataHandler(dataSource));
			pdfBodyPart.setFileName("Prenotazione.pdf");

			// construct the mime multi part
			MimeMultipart mimeMultipart = new MimeMultipart();
			mimeMultipart.addBodyPart(pdfBodyPart);
			message.setContent(mimeMultipart);
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
		MailPrenotazione mailm = new MailPrenotazione();
		// mailm.sendMail("corsano92@gmail.com",
		// "C:\\Users\\corsa\\OneDrive\\Desktop\\spartiti\\piano\\NewYork.pdf");

	}
}
