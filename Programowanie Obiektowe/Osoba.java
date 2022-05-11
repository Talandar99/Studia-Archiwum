package lab7;
import java.time.LocalDate;
import java.util.ArrayList;

public class Osoba {
	String nazwisko = "Kowalski";
	String imi�= "Jan";
	String dataUr= "1999-10-12";
	static LocalDate dzisiaj = LocalDate.now();
	static int bRok = dzisiaj.getYear();
	static int bMiesi�c = dzisiaj.getMonthValue();
	
	static ArrayList<Osoba> listaOs�b = new ArrayList<Osoba>();
	
	public Osoba(String imi�, String nazwisko, String dataUr){
		this.imi� = imi�;
		this.nazwisko = nazwisko;
		this.dataUr = dataUr;
		listaOs�b.add(this);
	}
	
	double wiek(String dataUr)
	{
		String[] data = dataUr.split("-");
		int lata = bRok-Integer.parseInt(data[0]);
		int miesi�ce = bMiesi�c-Integer.parseInt(data[1]);
		if(miesi�ce<0)
		{
			lata-=1;
			miesi�ce=12+miesi�ce;
		}
		return lata + miesi�ce/12.0;
	}
	
	@Override
	public String toString()
	{
		return "Imi�: " +  
		this.imi�+ ",  " + "\nNazwisko: " +
		this.nazwisko + ",  " + "\nData urodzenia: " + 
		this.dataUr + ",  " + String.format("Wiek:  %5.2f", wiek(dataUr));	
	}
	
	public boolean jestRowna(Osoba inna) {
		return this.imi�.equals(inna.imi�)&&this.nazwisko.equals(inna.nazwisko)&&this.dataUr.equals(inna.dataUr);
	}
	public Osoba() {
		listaOs�b.add(this);}
}