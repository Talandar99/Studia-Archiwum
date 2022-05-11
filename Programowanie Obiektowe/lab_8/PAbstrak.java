package lab_8;

import java.util.ArrayList;

public class PAbstrak extends Abstrakcyjna<Osoba>{
    public static ArrayList<Osoba> lista = new ArrayList<Osoba>();
    public void dodaj(Osoba x){
        lista.add(x);
    }

    public boolean występuje(Osoba x);
    for(Osoba xx:lista){
        if (xx.jestRówna(x)) 
            return true;
        }else{
        return false;
        }

}