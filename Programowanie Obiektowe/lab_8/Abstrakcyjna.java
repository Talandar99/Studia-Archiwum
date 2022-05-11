package lab_8;

import java.time.LocalDate;

public abstract class Abstrakcyjna <Element>{
    LocalDate teraz= LocalDate.now();
    String sapis= "abcd";
    public abstract void dodaj(Element x);
    public abstract boolean występuje(Element x);
}
