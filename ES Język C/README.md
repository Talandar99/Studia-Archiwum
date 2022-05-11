# Zadanie 1
## Przeliczanie liczb
### np. z binarki na 10 lub 16
##### 0b11001010 -> 202 -> 0xCA
##### 173 -> 10101101 -> 0xAD
___
# Zadanie 2
## Obliczanie jak komputer
### np. uint8_t x = (12/7 << 2)
##### 12/7 << 2 = 0b00000001 << 2 = 0b00000100
### np. uint8_t x = (12%7 << 3)
##### 12%7 << 6 = 0b00000101 << 6 = 0b101000000 = 0b01000000 (overflow bo int8_t, więc ucina za nadmiar cyferek)
___
# Zadanie 3
## Dostaniemy rysunek implementacji hardware
## 1. Świecimy jedynką
```C
int main(void) {
    DDRB |= (1 << 3);
    DDRB &= (1 << 4);

    while(1) {
        if(~PINB & (1 << 4)) {
            PORTB &= ~(1 << 3);
        }
        else {
            PORTB |= (1 << 3);
        }
    }
}
```
## 2. Świecimy zerem
___
# Zadanie 4
## Wypisanie stringa przesuwając się wskaźnikiem po stringu
```C
int main(void) {
    char[] slowo = "example";
    char *l = slowo;
    while(*l) {
        printf("%c", *l);
        l++;
    }
}
```
___
# Zadanie 5
## Wywołanie typu, stworzenie struktury, 
```C
uint8_t count = 2;

// tworzymy strukturę do robienia grzybów
typedef struct szrum {
    uint16_t x;
    uint16_t y;
    bool prawdziwek;
};

// tworzymy sobie obiekt ktory to robi
struct szrum grzyb[] = {
    { .x = 12, .y = 2, .prawdziwek = true },
    { .x = -10, .y = 30, .prawdziwek = true }
};

//tworzymy sobie 
void FoundSzrum(uint16_t x, uint16_t y, bool prawdziwek) {
    grzyb[count].x = x;
    grzyb[count].y = y;
    grzyb[count].prawdziwek = prawdziwek;
    count++;
}

// ta metoda orzyjmuje obiekt
void FoundSzrum(struct szrum *grzyb) {
    grzyb[count].x = grzyb->x;
    grzyb[count].y = grzyb->y;
    grzyb[count].prawdziwek = grzyb->prawdziwek;
    count++;
}


int main(void) {
    // tworzymy grzyby do dodania
    struct szrum grzyb = { .x = 12, .y = 2, .prawdziwek = true };
    FoundSzrum(&grzyb);
}
```
___
# Zadanie 6
## Tutaj będzie jedno otwarte QnA
### Zalety i wady języka C
### **ZALETY**
- #### szybkość
- #### jest w stanie uruchomić się wszędzie
- #### dynamiczny przydział pamięci
### **WADY**
- #### brak stringa
- #### nieintuicyjny
- #### 
### jak działa `sizeOf`
#### sizeOf(int8_t) = 1
#### sizeOf(int16_t) = 2
#### char slowo[] = "abcd123gh"
#### sizeOf(slowo) = 9
___
#### char *przyklad;
#### przykald = malloc(sizeOf(szrum) * count);
### Stringi i struktury w C
___
# Zadanie 7
## Tutaj Dąbrowski daje jakieś dziwne pytanie na które nie odpowiem. 
