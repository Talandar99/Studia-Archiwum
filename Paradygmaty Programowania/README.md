# PaRaDyGmAtY O.o


## 1. Jakimi cechami charakteryzuje się zmienną w imperatywnych językach programowania. Wyjaśnij znaczenie tych cech

- Zmienna jest abstrakcją komórki pamięci
</br> Zmienne są abstrakcjami komórek pamięci, a
instrukcja podstawienia polega na zmianie
wartości komórki pamięci symbolizowanej przez
zmienną.

### Cechy opisujące zmienną:
- nazwa : długość nazwy, dopuszczalne znaki, rozróżnialność
wielkich/małych liter, konwencje nazewnicze (zmienneJava, 8 znaków,
litera na początku, I – N integer, reszta real), użycie znaków specjalnych -
$zm,
- adres : adres ‘fizycznego’ miejsca w pamięci
to nie musi być zawsze dokładnie ten sam adres (fizyczny), nie ma
jednoznacznego przypisania
w programie mogą występować zmienne o tej samej nazwie i
różnych adresach w pamięci
Czasem do tej samej komórki pamięci dociera się za pomocą
różnych nazw np. int x, *p, *q; p = &x; q = &x; (aliasowanie, zwykle
niebezpieczne)
- wartość : kiedyś liczby i znaki, Wielowartość(tablice) 
- typ : zbiór dopuszczalnych wartości, wiąże się z tym zbiór
dopuszczalnych operacji
<br/> Zmienne mogą być różnych typów (jawnie bądź
niejawnie deklarowanych) 
<br/> zmienne deklarowane jawnie mają z góry założony typ (int, char, boolean)
<br/> zmienne deklarowane nie jawnie nie mają z góry założónego typu (var)

- okres życia : czas od alokacji do usunięcia z pamięci
- zakres widoczności : zmienne występują w podprogramach i są lub
nie są widoczne/dostępne w innych podprogramach 


## 2.Co oznacza słowo statyczny w odniesieniu do zmiennej czas życia
<br/> wikipedia mówi:
<br/> Zmienna statyczna – w programowaniu jest to zmienna, która w danym bloku programu posiada dokładnie jedną instancję i istnieje przez cały czas działania programu. 
- Czyli w całym programie jest tylko jedna zmienna od nazwie czas życia i istnieje o momentu alokacji do zakończenia programu. Zawartość zmiennej może być może być modyfikowana.

## 3.Na czym polega przekazywanie parametrów do podprogramów przez wartość. W jakich językach programowania, dla jakich  typów paramterów jest stosowane.
### Przy przekazywaniu parametrów przez wartość (tryb IN)
- Wartość parametru formalnego jest inicjowana przez odpowiednią wartość parametru
aktualnego
-  Parametr formalny funkcjonuje następnie w podprogramie jako zmienna lokalna
- W istocie kopiuje się wartości parametrów aktualnych do parametrów formalnych
- Przekazywaną wartością może być wskaźnik, jednak z ograniczeniem na modyfikowanie
wskazywanej przezeń wartości
- Może być kosztowne przy przekazywaniu dużych struktur danych (dużych tablic, obiektów
z dużą liczbą właściwości)

# 4. Jak w języku scheme interpretowany jest napis: (a b c d) 
(a b c d) - wywołanie funkcji “a” z parametrami powiązanymi z nazwami b c d, np. (a 1 2 3)

# 5  Następującą funkcję w scheme zapisz imperatywnie 
- GL and HF

## przykład pierwszy
- sChEmE
```scheme
    (define (fun a b)
        (if (> a b) 
            (fun (- a b) b) 
        a)
    )
```
- Cywilizowany język
```javascript
function fun(a,b)
{
    if(a>b){
        fun(a-b, b);
    }
    else {
        return a;
    }
}
```

## przykład drugie
- sChEmE
```scheme
(define (funx a b) (filter (lambda(x) (not (= x a))) b))
```
- cywilizowany język
```javascript

//b jest listą 

function funx(a,b)
{
    foreach(x in b){
        if(x==a){
            usuń x z b
        }
    }
}
```

# 6 Następującą regułę w prologu zapisz w postaci matematycznej implikacji
- https://www.matemaks.pl/kwantyfikatory.html
- ![obraz](https://user-images.githubusercontent.com/32677600/152700938-0d56a29b-a5f1-4264-a22c-fd7b4e1ad9f5.png)
- ![obraz](https://user-images.githubusercontent.com/32677600/152700375-91050097-09b5-4a69-9295-8bb2d4ed2a86.png)


- ![obraz](https://user-images.githubusercontent.com/32677600/152700797-e118cd15-a1e7-4093-8d9e-67ed9450cc19.png)
<br> ∀ X, Y, P {jeździ(X,P)⋀jeździ(Y,P)}==>lubi(X,Y)

- ![obraz](https://user-images.githubusercontent.com/32677600/152701088-fd8401d7-2a7f-4b01-bad7-02ccb8a49070.png)
<br> ∀ X, Y, Z {rodzic(X,Z)⋀przodek(Z,Y)}==>przodek(X,Y)

# 7. Co w imperatywnych językach programowania rozumiemy przez:

## abstrakcję danych
- Abstrakcja danych dotyczy podstawowych typów danych oraz typów danych definiowanych przez
użytkownika. (Tablice)
- Standardowe typy danych to abstrakcje danych w postaci zbioru, np. liczbowego oraz zestawu
operacji działających na elementach tego zbioru np. typ integer z dodawaniem, odejmowaniem
i mnożeniem.
## abstrakcję procesu
- Abstrakcja procesu dotyczy możliwości definiowania złożonych zestawów operacji możliwych do
wielokrotnego wykorzystania i komunikujących się ze swoim otoczeniem w określony sposób.
Wyrazem abstrakcji procesu są podprogramy (procedury i funkcje) 
- możliwość definicji procedur do wielokrotnego użytku i komunikacji, np. definicja funkcji i procedur. (jedyny prawdę mówiąc sensowny przykład XD) 
