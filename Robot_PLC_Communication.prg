Function PLC_Robot
	OutW Status_pracy, 0
	Do
		Integer stan
		stan = InW(59)
		If stan = 1 Then 'Jezeli jest zezwolenie
			OutW Status_pracy, 0
			'#########
			'Pole_1
			'#########
			If InW(32) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(33), InW(34))
			ElseIf InW(32) = 2 Then 'Z planszy do kostek
				Call MoveCube_back(InW(33), InW(34))
			EndIf
			'#########
			'Pole_2
			'#########
			If InW(35) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(36), InW(37))
			ElseIf InW(35) = 2 Then 'Z planszy do kostek
				Call MoveCube_back(InW(36), InW(37))
			EndIf
			'#########
			'Pole_3
			'#########
			If InW(38) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(39), InW(40))
			ElseIf InW(38) = 2 Then 'Zplanszy do kostek
				Call MoveCube_back(InW(39), InW(40))
			EndIf
			'#########
			'Pole_4
			'#########
			If InW(41) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(42), InW(43))
			ElseIf InW(41) = 2 Then 'Zplanszy do kostek
				Call MoveCube_back(InW(42), InW(43))
			EndIf
			'#########
			'Pole_5
			'#########
			If InW(44) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(45), InW(46))
			ElseIf InW(44) = 2 Then 'Zplanszy do kostek
				Call MoveCube_back(InW(45), InW(46))
			EndIf
			'#########
			'Pole_6
			'#########
			If InW(47) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(48), InW(49))
			ElseIf InW(47) = 2 Then 'Zplanszy do kostek
				Call MoveCube_back(InW(48), InW(49))
			EndIf
			'#########
			'Pole_7
			'#########
			If InW(50) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(51), InW(52))
			ElseIf InW(50) = 2 Then 'Zplanszy do kostek
				Call MoveCube_back(InW(51), InW(52))
			EndIf
			'#########
			'Pole_8
			'#########
			If InW(53) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(54), InW(55))
			ElseIf InW(53) = 2 Then 'Zplanszy do kostek
				Call MoveCube_back(InW(54), InW(55))
			EndIf
			'#########
			'Pole_9
			'#########
			If InW(56) = 1 Then 'Z kostek na plansze
				Call MoveCube(InW(57), InW(58))
			ElseIf InW(56) = 2 Then 'Zplanszy do kostek
				Call MoveCube_back(InW(57), InW(58))
			EndIf
			'Wyslanie informacji o zakonczonej pracy do plc
			OutW 32, 1
			Wait 1
		Else
			OutW 32, 0
		EndIf
		Motor Off
	Loop
	
Fend

