Function MoveCube(Place As Integer, Cube As Integer)
	' !!! Z kostek na plansze !!!
	'Przenoszenie kostki (Cube,K1...) w jedno z miejsc na planszy (Place)
	'#######	##########
	'#1#2#3#	#K1#K2#K3#
	'#######	##########
	'#4#5#6#	#K4#K5#K6#
	'#######	##########
	'#7#8#9#	#K7#K8#K9#
	'#######	##########
	
	'Ustawienie parametrow
	If Motor = Off Then Motor On
	Power High
	Speed 50
	Accel 50, 50
	SpeedS 800
	AccelS 800
	
	'Definicja luku
	Arch 1, 20, 20
	
	'Ustawienie Timera
	TmReset 1
	
	'Dojazd do pozycji domowej
	'Home
	Jump Home_pos
	
	'Wybor kostki
	Select Cube
		Case 1 'K1 - kolor czerwony - gorny lewy
			'instrukcje do poniesienia
			Jump K1 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait 0.5
		Case 2 'K2 - kolor czerwony gorny srodek
			'instrukcje do poniesienia
			Jump K2 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Case 3 'K3 - kolor czerwony gorny prawy
			'instrukcje do poniesienia
			Jump K3 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Case 4 'K4 - kolor pomaranczowy srodek lewy
			'instrukcje do poniesienia
			Jump K4 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Case 5 'K5 - kolor pomaranczowy srodek srodek
			'instrukcje do poniesienia
			Jump K5 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Case 6 'K6 - kolor pomaranczowy srodek prawy
			'instrukcje do poniesienia
			Jump K6 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Case 7 'K7 - kolor zolty dol lewy
			'instrukcje do poniesienia
			Jump K7 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Case 8 'K8 - kolor zolty dol srodek
			'instrukcje do poniesienia
			Jump K8 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Case 9 'K9 - kolor zolty dol prawy
			'instrukcje do poniesienia
			Jump K9 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
		Default 'Domyslnie kostka K1
			'instrukcje do poniesienia
			Jump K1 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			On Przyssawka 'zalaczenie przyssawki
			Wait .5
	Send
	
	'Wybor miejsca
	Select Place
		Case 1 'Pole 1 - gorny lewy
			'instrukcje do oddania
			Jump Pole_1 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 2 'Pole 2 - gora srodek
			'instrukcje do oddania
			Jump Pole_2 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 3 'Pole 3 - gorny prawy 
			'instrukcje do oddania
			Jump Pole_3 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 4 'Pole 4 - srodek lewy
			'instrukcje do oddania
			Jump Pole_4 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 5 'Pole 5 - srodek srodek
			'instrukcje do oddania
			Jump Pole_5 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 6 'Pole 6 - srodek prawy
			'instrukcje do oddania
			Jump Pole_6 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 7 'Pole 7 - dol lewy
			'instrukcje do oddania
			Jump Pole_7 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 8 'Pole 8 - dol srodek
			'instrukcje do oddania
			Jump Pole_8 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Case 9 'Pole 9 - dol prawy
			'instrukcje do oddania
			Jump Pole_9 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
		Default 'Domyslnie pole Pole_1
			'instrukcje do oddania
			Jump Pole_1 C1 'LimZ wartosc 'dojazd do punktu pobrania kostki 
			Wait .2
			Off Przyssawka 'zalaczenie przyssawki
			Wait .2
	Send
	
	'Odjazd do pozycji domowej
	'Home
	Jump Home_pos
	
	'Wyswietlenie wartosci Timera
	Print "Czas wykonania: ", Tmr(1), "s"
	
	'Do zdefiniowania: 
	'Punkty pobrania kostek: K1, K2, K3, K4, K5, K6, K7, K9, K9
	'Punkty oddania(pola): Pole_1, Pole_2, Pole_3,...
	'I/O Table wysterowanie pracy przyssawki: Przyssawka
	'Pozycja domowa: HomeSet Pls(1) Pls(2) Pls(3) Pls(4)
	
Fend
