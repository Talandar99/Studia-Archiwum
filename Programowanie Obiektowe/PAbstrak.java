package lab7;

import java.util.ArrayList;

public class PAbstrak extends Abstrakcyjna<Osoba>{
	public static ArrayList<Osoba> lista = new ArrayList<Osoba>();
	public void dodaj(Osoba x) {
		lista.add(x);
	}
	public boolean wystepuje(Osoba x) {
		for(Osoba xx:lista) {
			if(xx.jestRowna(x))
				return true;
		}return false;
	}
	
	public static void main(String[] args) {
		PAbstrak obiekt = new PAbstrak();
		obiekt.dodaj(new Osoba("Zbigniew","Kowal","2003-11-11"));
		Osoba nowa = new Osoba("Zbigniew","Kowaliñski","2011-11-11");
		obiekt.dodaj(nowa);
		Osoba nowa1 = new Osoba("Zbigniew","Kowaliñski","2011-11-11");
		System.out.println("równoœæ "+nowa.jestRowna(lista.get(0)));
		System.out.println("wystêpowanie "+ obiekt.wystepuje(nowa1));
		obiekt.napis="Jan";
		System.out.println("napis "+obiekt.napis);
		System.out.println("data "+obiekt.teraz);
	}

}
