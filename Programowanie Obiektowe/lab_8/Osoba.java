package lab_8;
import java.time.LocalDate;
import java.util.ArrayList;

public class Osoba {
	String nazwisko = "Kowalski";
	String imię= "Jan";
	String dataUr= "1999-10-12";
	static LocalDate dzisiaj = LocalDate.now();
	static int bRok = dzisiaj.getYear();
	static int bMiesiąc = dzisiaj.getMonthValue();
	
	static ArrayList<Osoba> listaOsób = new ArrayList<Osoba>();
	
	public Osoba(String imię, String nazwisko, String dataUr){
		this.imię = imię;
		this.nazwisko = nazwisko;
		this.dataUr = dataUr;
		listaOsób.add(this);
	}
	
	double wiek(String dataUr)
	{
		String[] data = dataUr.split("-");
		int lata = bRok-Integer.parseInt(data[0]);
		int miesiące = bMiesiąc-Integer.parseInt(data[1]);
		if(miesiące<0)
		{
			lata-=1;
			miesiące=12+miesiące;
		}
		return lata + miesiące/12.0;
	}
	
	@Override
	public String toString()
	{
		return "Imię: " +  
		this.imię+ ",  " + "\nNazwisko: " +
		this.nazwisko + ",  " + "\nData urodzenia: " + 
		this.dataUr + ",  " + String.format("Wiek:  %5.2f", wiek(dataUr));	
	}
	
	public Osoba() {
		listaOsób.add(this);}

    public boolean jestRówna(Osoba inna){

        return this.imię.equals(inna.imię)&&this.nazwisko.equals(inna.nazwisko)&&this.dataUr.equals(inna.dataUr);

    }
}
