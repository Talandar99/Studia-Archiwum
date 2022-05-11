package lab7;

import java.time.LocalDate;

public abstract class Abstrakcyjna<Element> {
	LocalDate teraz = LocalDate.now();
	String napis="abcd";
	
	public abstract void dodaj(Element x);
	public abstract boolean wystepuje(Element x);
			
}
