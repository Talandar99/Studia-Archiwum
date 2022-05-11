package lab7;
import java.time.LocalDate;
import java.util.ArrayList;

public class Osoba {
	String nazwisko = "Kowalski";
	String imiê= "Jan";
	String dataUr= "1999-10-12";
	static LocalDate dzisiaj = LocalDate.now();
	static int bRok = dzisiaj.getYear();
	static int bMiesi¹c = dzisiaj.getMonthValue();
	
	static ArrayList<Osoba> listaOsób = new ArrayList<Osoba>();
	
	public Osoba(String imiê, String nazwisko, String dataUr){
		this.imiê = imiê;
		this.nazwisko = nazwisko;
		this.dataUr = dataUr;
		listaOsób.add(this);
	}
	
	double wiek(String dataUr)
	{
		String[] data = dataUr.split("-");
		int lata = bRok-Integer.parseInt(data[0]);
		int miesi¹ce = bMiesi¹c-Integer.parseInt(data[1]);
		if(miesi¹ce<0)
		{
			lata-=1;
			miesi¹ce=12+miesi¹ce;
		}
		return lata + miesi¹ce/12.0;
	}
	
	@Override
	public String toString()
	{
		return "Imiê: " +  
		this.imiê+ ",  " + "\nNazwisko: " +
		this.nazwisko + ",  " + "\nData urodzenia: " + 
		this.dataUr + ",  " + String.format("Wiek:  %5.2f", wiek(dataUr));	
	}
	
	public boolean jestRowna(Osoba inna) {
		return this.imiê.equals(inna.imiê)&&this.nazwisko.equals(inna.nazwisko)&&this.dataUr.equals(inna.dataUr);
	}
	public Osoba() {
		listaOsób.add(this);}
}