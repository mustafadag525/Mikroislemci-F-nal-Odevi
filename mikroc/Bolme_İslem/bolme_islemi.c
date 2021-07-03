//LCD ekran ile Mikroi�lemcinin port ba�lant�lar�

sbit LCD_RS at RB0_bit;   //LCD Register Select B0 portuna
sbit LCD_EN at RB1_bit;   //LCD Enable B1 portuna
sbit LCD_D7 at RB7_bit;   // LCD veri ucu 7 B7 portuna
sbit LCD_D6 at RB6_bit;   // LCD veri ucu 6 B6 portuna
sbit LCD_D5 at RB5_bit;   // LCD veri ucu 5 B5 portuna
sbit LCD_D4 at RB4_bit;   // LCD veri ucu 4 B4 portuna

//LCD Ekran pinlerinin portlara y�nlendirilmesi i�lemi
sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;


char txtsonuc[9];                      //LCD Ekran�na g�stermek i�in string olu�turuluyor.
int sayi1 = 600, sayi2 = 100, sonuc;  // De�erler tan�mlan�yor.

void main() {
  sonuc=sayi1/sayi2;                  //B�lme i�lemi yap�l�yor.
  IntToStr(sonuc,txtsonuc);          // ��lem sonucunu LCD de basmak i�in string olan txtsonuc ifadesine atad�k.
  Lcd_Init();                        // Lcd yi ba�lat�yoruz
  Lcd_Cmd(_LCD_CLEAR);               // Ekran� temizliyoruz
  Lcd_Cmd(_LCD_CURSOR_OFF);          // �mleci  kapatt�k.
  Lcd_Out(1,1,"600/100= ");           // 1.sat�r 1.s�tundan "B�lme sonucu" yaz�s�n� yazd�r�yoruz.
  Lcd_Out(1,9,txtsonuc);             // 1.sat�r 9.s�tundan b�lme i�lemi sonucunu yazd�r�yoruz.

}