
_main:

;bolme_islemi.c,22 :: 		void main() {
;bolme_islemi.c,23 :: 		sonuc=sayi1/sayi2;                  //B�lme i�lemi yap�l�yor.
	MOVF       _sayi2+0, 0
	MOVWF      R4+0
	MOVF       _sayi2+1, 0
	MOVWF      R4+1
	MOVF       _sayi1+0, 0
	MOVWF      R0+0
	MOVF       _sayi1+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _sonuc+0
	MOVF       R0+1, 0
	MOVWF      _sonuc+1
;bolme_islemi.c,24 :: 		IntToStr(sonuc,txtsonuc);          // ��lem sonucunu LCD de basmak i�in string olan txtsonuc ifadesine atad�k.
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _txtsonuc+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;bolme_islemi.c,25 :: 		Lcd_Init();                        // Lcd yi ba�lat�yoruz
	CALL       _Lcd_Init+0
;bolme_islemi.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);               // Ekran� temizliyoruz
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;bolme_islemi.c,27 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // �mleci  kapatt�k.
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;bolme_islemi.c,28 :: 		Lcd_Out(1,1,"600/100= ");           // 1.sat�r 1.s�tundan "B�lme sonucu" yaz�s�n� yazd�r�yoruz.
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_bolme_islemi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;bolme_islemi.c,29 :: 		Lcd_Out(1,9,txtsonuc);             // 1.sat�r 9.s�tundan b�lme i�lemi sonucunu yazd�r�yoruz.
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txtsonuc+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;bolme_islemi.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
