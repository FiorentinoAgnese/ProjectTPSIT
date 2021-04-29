package projectFAMA;

import java.awt.Color;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import be.quodlibet.boxable.*;
import be.quodlibet.boxable.line.LineStyle;
import projectFAMA.Hotel;

public class PDFPrenotazione {
	ByteArrayOutputStream output;

	public PDFPrenotazione() {
		output = new ByteArrayOutputStream();

	}

	public ByteArrayOutputStream printPDF(String nome, String cognome, String hotel, String[] destinazione,
			String dataP, String dataR) {
		try {
			PDFont fontPlain = PDType1Font.HELVETICA;
			PDFont fontBold = PDType1Font.HELVETICA_BOLD;
			PDFont fontItalic = PDType1Font.HELVETICA_OBLIQUE;
			PDFont fontMono = PDType1Font.COURIER;
			PDDocument document = new PDDocument();
			PDPage page = new PDPage(PDRectangle.A4); // formato della pagina
			PDRectangle rect = page.getMediaBox();
			document.addPage(page); // aggiungiamo la pagina
			PDPageContentStream cos = new PDPageContentStream(document, page);

			float margin = 50;
			float yStartNewPage = page.getMediaBox().getHeight() - (2 * margin);
			float tableWidth = page.getMediaBox().getWidth() - (2 * margin);

			boolean drawContent = true;
			float bottomMargin = 70;

			float yPosition = 800;
			BaseTable table = new BaseTable(yPosition, yStartNewPage, bottomMargin, tableWidth, margin, document, page,
					true, drawContent);

			Row<PDPage> headerRow = table.createRow(50);
			Cell<PDPage> cell = headerRow.createCell(100, "PRENOTAZIONE");
			// cell.setBottomBorderStyle(new LineStyle(Color.BLACK, 1));
			cell.setFont(fontBold);
			cell.setFontSize(20);
			// allineamento
			cell.setValign(VerticalAlignment.MIDDLE);
			cell.setAlign(HorizontalAlignment.CENTER);
			cell.setTextColor(Color.CYAN);
			cell.setTopBorderStyle(new LineStyle(Color.WHITE, 10));
			table.addHeaderRow(headerRow);

			Row<PDPage> row = table.createRow(20);
			cell = row.createCell(20, "Nome");
			cell.setTextColor(Color.WHITE);
			cell.setFillColor(Color.LIGHT_GRAY);
			cell.setFontSize(15);

			cell.setFontSize(15);
			cell.setFont(fontBold);

			cell = row.createCell(25, nome);
			cell.setFontSize(12);

			row = table.createRow(20);
			cell = row.createCell(20, "Cognome");
			cell.setTextColor(Color.WHITE);
			cell.setFillColor(Color.LIGHT_GRAY);
			cell.setFontSize(15);

			cell.setFontSize(15);
			cell.setFont(fontBold);

			cell = row.createCell(25, cognome);
			cell.setFontSize(12);

			row = table.createRow(20);
			cell = row.createCell(20, "Hotel");
			cell.setTextColor(Color.WHITE);
			cell.setFillColor(Color.LIGHT_GRAY);
			cell.setFontSize(15);

			cell.setFontSize(15);
			cell.setFont(fontBold);
			cell = row.createCell(25, hotel);
			cell.setFontSize(12);

			row = table.createRow(20);
			cell = row.createCell(20, "Destinazione");
			cell.setTextColor(Color.WHITE);
			cell.setFillColor(Color.LIGHT_GRAY);
			cell.setFontSize(15);

			cell.setFontSize(15);
			cell.setFont(fontBold);

			String r = "";
			for (int i = 0; i < destinazione.length; i++) {
				r += destinazione[i] + ",";

			}
			cell = row.createCell(25, r);
			cell.setFontSize(12);

			row = table.createRow(20);
			cell = row.createCell(20, "Data partenza");
			cell.setTextColor(Color.WHITE);
			cell.setFillColor(Color.LIGHT_GRAY);
			cell.setFontSize(15);

			cell.setFontSize(15);
			cell.setFont(fontBold);
			cell = row.createCell(25, dataP);
			cell.setFontSize(12);

			row = table.createRow(20);
			cell = row.createCell(20, "Data ritorno");
			cell.setTextColor(Color.WHITE);
			cell.setFillColor(Color.LIGHT_GRAY);
			cell.setFontSize(15);

			cell.setFontSize(15);
			cell.setFont(fontBold);
			cell = row.createCell(25, dataR);
			cell.setFontSize(12);

			row = table.createRow(20);
			cell = row.createCell(20, "Prezzo");
			cell.setTextColor(Color.WHITE);
			cell.setFillColor(Color.LIGHT_GRAY);
			cell.setFontSize(15);

			cell.setFontSize(15);
			cell.setFont(fontBold);
			cell = row.createCell(25, "€ 150");
			cell.setFontSize(12);

			table.draw();

			float tableHeight = table.getHeaderAndDataHeight();
			System.out.println("tableHeight = " + tableHeight);

			// close the content stream
			cos.close();
			// Save the results and ensure that the document is properly closed:
			document.save(output);
			// document.save("C:\\Users\\corsa\\OneDrive\\Documenti\\scuola\\LoginSw\\projectFAMA2\\Prenotazioni.pdf");
			document.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return output;
	}

	public static void main(String[] args) {
		PDFPrenotazione pdf = new PDFPrenotazione();
		String[] d = { "Matino", "Milano" };
		pdf.printPDF("Matteo", "Corsano", "Hotel Tiziano", d, "20/01/20", "20/04/10");

	}

}
