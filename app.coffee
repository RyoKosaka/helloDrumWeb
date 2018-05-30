Framer.Extras.Preloader.enable()

document.body.style.cursor = "auto"

kickfile = "sounds/CYCdh_AcouKick-03.wav"
snarefile = "sounds/CYCdh_LudSnrA-05.wav"
hihatfile = "sounds/KHats Clsd-02.wav"
tom1file = "sounds/Hi_Tom_04.flac"
tom2file = "sounds/Mid_Tom_04.flac"
tom3file = "sounds/Flr_Tom_04.flac"
crash1file = "sounds/crash16i__crash1.flac"
crash2file = "sounds/crash20i__crash.flac"
ridefile = "sounds/crash20i__ride4.flac"

time = 1
downTime = 0.7
upTime = 0.05
noteOffValue = 0
korgflag = false

noteOff = (progressBar.height / 127) * noteOffValue

kickvalue = 0
snarevalue = 0
hihatvalue = 0
tom1value = 0
tom2value = 0
tom3value = 0
crash1value = 0
crash2value = 0
ridevalue = 0

kickNote = 36
snareNote = 37
hihatNote = 38
tom1Note = 39
tom2Note = 40
tom3Note = 41
crash1Note = 42
crash2Note = 43
rideNote = 44
aux1Note = 45
aux2Note = 46
aux3Note = 47

# First Transition

kick.states.a =
		height: 0
	
kick.animate "a",
		time: 1.00
		curve: Bezier.easeIn
		
Utils.delay 0.1*time, ->
	snare.states.a =
		height: 0
	
	snare.animate "a",
		time: 1.00
		curve: Bezier.easeIn
	
	Utils.delay 0.1*time, ->
		hihat.states.a =
			height: 0
		
		hihat.animate "a",
			time: 1.00
			curve: Bezier.easeIn
			
		Utils.delay 0.1*time, ->
			tom1.states.a =
				height: 0
			
			tom1.animate "a",
				time: 1.00
				curve: Bezier.easeIn
				
			Utils.delay 0.1*time, ->
				tom2.states.a =
					height: 0
				
				tom2.animate "a",
					time: 1.00
					curve: Bezier.easeIn
					
				Utils.delay 0.1*time, ->
					tom3.states.a =
						height: 0
					
					tom3.animate "a",
						time: 1.00
						curve: Bezier.easeIn
						
					Utils.delay 0.1*time, ->
						crash1.states.a =
							height: 0
						
						crash1.animate "a",
							time: 1.00
							curve: Bezier.easeIn
							
						Utils.delay 0.1*time, ->
							crash2.states.a =
								height: 0
							
							crash2.animate "a",
								time: 1.00
								curve: Bezier.easeIn
								
							Utils.delay 0.1*time, ->
								ride.states.a =
									height: 0
								
								ride.animate "a",
									time: 1.00
									curve: Bezier.easeIn
									
								Utils.delay 0.1*time, ->
									aux1.states.a =
										height: 0
									
									aux1.animate "a",
										time: 1.00
										curve: Bezier.easeIn
										
									Utils.delay 0.1*time, ->
										aux2.states.a =
											height: 0
										
										aux2.animate "a",
											time: 1.00
											curve: Bezier.easeIn
											
										Utils.delay 0.1*time, ->
											aux3.states.a =
												height: 0
											
											aux3.animate "a",
												time: 1.00
												curve: Bezier.easeIn

###############################################

# Receive MIDI

kickM = new MIDIComponent
	control: kickNote
	min: 0
	max: progressBar.height
	
kickM.onValueChange (value) ->
	if value == noteOff
		kick.states.a =
			height: 0
	
		kick.animate "a",
		kickvalue = 0

	else if kickvalue != value
		kicksound = new Audio(kickfile)
		kicksound.play()
		kick.states.a =
			height: value
	
		kick.animate "a",
			time: upTime
			curve: Bezier.ease
		kickvalue = value

snareM = new MIDIComponent
	control: snareNote
	min: 0
	max: progressBar.height
	
snareM.onValueChange (value) ->
	
	if value == noteOff
		snare.states.a =
			height: 0
	
		snare.animate "a",
		snarevalue = 0
				
	else if snarevalue != value
		snaresound = new Audio(snarefile)
		snaresound.play()
		snare.states.a =
			height: value
	
		snare.animate "a",
			time: upTime
			curve: Bezier.ease
		snarevalue = value

hihatM = new MIDIComponent
	control: hihatNote
	min: 0
	max: progressBar.height
	
hihatM.onValueChange (value) ->
	
	if value == noteOff
		hihat.states.a =
			height: 0
	
		hihat.animate "a",
		hihatvalue = 0
				
	else if hihatvalue != value	
		hihatsound = new Audio(hihatfile)
		hihatsound.play()
		hihat.states.a =
			height: value
	
		hihat.animate "a",
			time: upTime
			curve: Bezier.ease
		hihatvalue = value
			
tom1M = new MIDIComponent
	control: tom1Note
	min: 0
	max: progressBar.height
	
tom1M.onValueChange (value) ->
	
	if value == noteOff
		tom1.states.a =
			height: 0
	
		tom1.animate "a",
		tom1value = 0
				
	else if tom1value != value	
		tom1sound = new Audio(tom1file)
		tom1sound.play()		
		tom1.states.a =
			height: value
	
		tom1.animate "a",
			time: upTime
			curve: Bezier.ease
		tom1value = value
			
tom2M = new MIDIComponent
	control: tom2Note
	min: 0
	max: progressBar.height
	
tom2M.onValueChange (value) ->
	
	if value == noteOff
		tom2.states.a =
			height: 0
	
		tom2.animate "a",
		tom2value = 0
				
	else if tom2value != value	
		tom2sound = new Audio(tom2file)
		tom2sound.play()
		tom2.states.a =
			height: value
	
		tom2.animate "a",
			time: upTime
			curve: Bezier.ease
		tom2value = value
			
tom3M = new MIDIComponent
	control: tom3Note
	min: 0
	max: progressBar.height
	
tom3M.onValueChange (value) ->
	
	if value == noteOff
		tom3.states.a =
			height: 0
	
		tom3.animate "a",
		tom3value = 0
				
	else if tom3value != value	
		tom3sound = new Audio(tom3file)
		tom3sound.play()
		tom3.states.a =
			height: value
	
		tom3.animate "a",
			time: upTime
			curve: Bezier.ease
		tom3value = value
			
crash1M = new MIDIComponent
	control: crash1Note
	min: 0
	max: progressBar.height
	
crash1M.onValueChange (value) ->
	
	if value == noteOff
		crash1.states.a =
			height: 0
	
		crash1.animate "a",
		crash1value = 0
				
	else if crash1value != value	
		crash1sound = new Audio(crash1file)
		crash1sound.play()
		crash1.states.a =
			height: value
	
		crash1.animate "a",
			time: upTime
			curve: Bezier.ease
		crash1value = value
			
crash2M = new MIDIComponent
	control: crash2Note
	min: 0
	max: progressBar.height
	
crash2M.onValueChange (value) ->
	
	if value == noteOff
		crash2.states.a =
			height: 0
	
		crash2.animate "a",
		crash2value = 0
				
	else if crash2value != value	
		crash2sound = new Audio(crash2file)
		crash2sound.play()
		crash2.states.a =
			height: value
	
		crash2.animate "a",
			time: upTime
			curve: Bezier.ease
		crash2value = value
			
rideM = new MIDIComponent
	control: rideNote
	min: 0
	max: progressBar.height
	
rideM.onValueChange (value) ->
	
	if value == noteOff
		ride.states.a =
			height: 0
	
		ride.animate "a",
		ridevalue = 0
				
	else if ridevalue != value	
		ridesound = new Audio(ridefile)
		ridesound.play()
		ride.states.a =
			height: value
	
		ride.animate "a",
			time: upTime
			curve: Bezier.ease
		ridevalue = value
			
aux1M = new MIDIComponent
	control: aux1Note
	min: 0
	max: progressBar.height
	
aux1M.onValueChange (value) ->
	
	if value == noteOff
		aux1.states.a =
			height: 0
	
		aux1.animate "a",
				
	else		
		aux1.states.a =
			height: value
	
		aux1.animate "a",
			time: upTime
			curve: Bezier.ease
			
aux2M = new MIDIComponent
	control: aux2Note
	min: 0
	max: progressBar.height
	
aux2M.onValueChange (value) ->
	
	if value == noteOff
		aux2.states.a =
			height: 0
	
		aux2.animate "a",
				
	else		
		aux2.states.a =
			height: value
	
		aux2.animate "a",
			time: upTime
			curve: Bezier.ease

aux3M = new MIDIComponent
	control: aux3Note
	min: 0
	max: progressBar.height
	
aux3M.onValueChange (value) ->
	
	if value == noteOff
		aux3.states.a =
			height: 0
	
		aux3.animate "a",
				
	else		
		aux3.states.a =
			height: value
	
		aux3.animate "a",
			time: upTime
			curve: Bezier.ease
			
###############################################

# Note Setting
kickUp.onTap ->
	kickN.text = kickNote + 1
	kickNote = kickNote + 1
	kickM.control = kickM.control + 1	
	kickN.states.a =
		scale: 1.4
	kickN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		kickN.states.b =
			scale: 1
		kickN.animate "b",
			time: 0.1
	
kickDown.onTap ->
	kickN.text = kickNote - 1
	kickNote = kickNote - 1
	kickM.control = kickM.control - 1
	kickN.states.a =
		scale: 1.4
	kickN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		kickN.states.b =
			scale: 1
		kickN.animate "b",
			time: 0.1
	
	
snareUp.onTap ->
	snareN.text = snareNote + 1
	snareNote = snareNote + 1
	snareM.control = snareM.control + 1
	snareN.states.a =
		scale: 1.4
	snareN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		snareN.states.b =
			scale: 1
		snareN.animate "b",
			time: 0.1
	
snareDown.onTap ->
	snareN.text = snareNote - 1
	snareNote = snareNote - 1
	snareM.control = snareM.control - 1
	snareN.states.a =
		scale: 1.4
	snareN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		snareN.states.b =
			scale: 1
		snareN.animate "b",
			time: 0.1
	
hihatUp.onTap ->
	hihatN.text = hihatNote + 1
	hihatNote = hihatNote + 1
	hihatM.control = hihatM.control + 1
	hihatN.states.a =
		scale: 1.4
	hihatN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		hihatN.states.b =
			scale: 1
		hihatN.animate "b",
			time: 0.1
	
hihatDown.onTap ->
	hihatN.text = hihatNote - 1
	hihatNote = hihatNote - 1
	hihatM.control = hihatM.control - 1
	hihatN.states.a =
		scale: 1.4
	hihatN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		hihatN.states.b =
			scale: 1
		hihatN.animate "b",
			time: 0.1
	
tom1Up.onTap ->
	tom1N.text = tom1Note + 1
	tom1Note = tom1Note + 1
	tom1M.control = tom1M.control + 1
	tom1N.states.a =
		scale: 1.4
	tom1N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		tom1N.states.b =
			scale: 1
		tom1N.animate "b",
			time: 0.1
	
tom1Down.onTap ->
	tom1N.text = tom1Note - 1
	tom1Note = tom1Note - 1
	tom1M.control = tom1M.control - 1
	tom1N.states.a =
		scale: 1.4
	tom1N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		tom1N.states.b =
			scale: 1
		tom1N.animate "b",
			time: 0.1
	
tom2Up.onTap ->
	tom2N.text = tom2Note + 1
	tom2Note = tom2Note + 1
	tom2M.control = tom2M.control + 1
	tom2N.states.a =
		scale: 1.4
	tom2N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		tom2N.states.b =
			scale: 1
		tom2N.animate "b",
			time: 0.1
	
tom2Down.onTap ->
	tom2N.text = tom2Note - 1
	tom2Note = tom2Note - 1
	tom2M.control = tom2M.control - 1
	tom2N.states.a =
		scale: 1.4
	tom2N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		tom2N.states.b =
			scale: 1
		tom2N.animate "b",
			time: 0.1
	
tom3Up.onTap ->
	tom3N.text = tom3Note + 1
	tom3Note = tom3Note + 1
	tom3M.control = tom3M.control + 1
	tom3N.states.a =
		scale: 1.4
	tom3N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		tom3N.states.b =
			scale: 1
		tom3N.animate "b",
			time: 0.1
	
	
tom3Down.onTap ->
	tom3N.text = tom3Note - 1
	tom3Note = tom3Note - 1
	tom3M.control = tom3M.control - 1
	tom3N.states.a =
		scale: 1.4
	tom3N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		tom3N.states.b =
			scale: 1
		tom3N.animate "b",
			time: 0.1
	
crash1Up.onTap ->
	crash1N.text = crash1Note + 1
	crash1Note = crash1Note + 1
	crash1M.control = crash1M.control + 1
	crash1N.states.a =
		scale: 1.4
	crash1N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		crash1N.states.b =
			scale: 1
		crash1N.animate "b",
			time: 0.1
	
crash1Down.onTap ->
	crash1N.text = crash1Note - 1
	crash1Note = crash1Note - 1
	crash1M.control = crash1M.control - 1
	crash1N.states.a =
		scale: 1.4
	crash1N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		crash1N.states.b =
			scale: 1
		crash1N.animate "b",
			time: 0.1

crash2Up.onTap ->
	crash2N.text = crash2Note + 1
	crash2Note = crash2Note + 1
	crash2M.control = crash2M.control + 1
	crash2N.states.a =
		scale: 1.4
	crash2N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		crash2N.states.b =
			scale: 1
		crash2N.animate "b",
			time: 0.1
	
crash2Down.onTap ->
	crash2N.text = crash2Note - 1
	crash2Note = crash2Note - 1
	crash2M.control = crash2M.control - 1
	crash2N.states.a =
		scale: 1.4
	crash2N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		crash2N.states.b =
			scale: 1
		crash2N.animate "b",
			time: 0.1
	
rideUp.onTap ->
	rideN.text = rideNote + 1
	rideNote = rideNote + 1
	rideM.control = rideM.control + 1
	rideN.states.a =
		scale: 1.4
	rideN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		rideN.states.b =
			scale: 1
		rideN.animate "b",
			time: 0.1
	
rideDown.onTap ->
	rideN.text = rideNote - 1
	rideNote = rideNote - 1
	rideM.control = rideM.control - 1
	rideN.states.a =
		scale: 1.4
	rideN.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		rideN.states.b =
			scale: 1
		rideN.animate "b",
			time: 0.1
	
aux1Up.onTap ->
	aux1N.text = aux1Note + 1
	aux1Note = aux1Note + 1
	aux1M.control = aux1M.control + 1
	aux1N.states.a =
		scale: 1.4
	aux1N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		aux1N.states.b =
			scale: 1
		aux1N.animate "b",
			time: 0.1
	
aux1Down.onTap ->
	aux1N.text = aux1Note - 1
	aux1Note = aux1Note - 1
	aux1M.control = aux1M.control - 1
	aux1N.states.a =
		scale: 1.4
	aux1N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		aux1N.states.b =
			scale: 1
		aux1N.animate "b",
			time: 0.1
	
aux2Up.onTap ->
	aux2N.text = aux2Note + 1
	aux2Note = aux2Note + 1
	aux2M.control = aux2M.control + 1
	aux2N.states.a =
		scale: 1.4
	aux2N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		aux2N.states.b =
			scale: 1
		aux2N.animate "b",
			time: 0.1
	
aux2Down.onTap ->
	aux2N.text = aux2Note - 1
	aux2Note = aux2Note - 1
	aux2M.control = aux2M.control - 1
	aux2N.states.a =
		scale: 1.4
	aux2N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		aux2N.states.b =
			scale: 1
		aux2N.animate "b",
			time: 0.1
	
aux3Up.onTap ->
	aux3N.text = aux3Note + 1
	aux3Note = aux3Note + 1
	aux3M.control = aux3M.control + 1
	aux3N.states.a =
		scale: 1.4
	aux3N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		aux3N.states.b =
			scale: 1
		aux3N.animate "b",
			time: 0.1
	
aux3Down.onTap ->
	aux3N.text = aux3Note - 1
	aux3Note = aux3Note - 1
	aux3M.control = aux3M.control - 1
	aux3N.states.a =
		scale: 1.4
	aux3N.animate "a",
		time: 0.1
	Utils.delay 0.1, ->
		aux3N.states.b =
			scale: 1
		aux3N.animate "b",
			time: 0.1

###############################################

# Korg check
korg.onTap (event, layer) ->
	if korgflag == false
		korg_check.states.a =
			opacity: 1
		korg_check.stateSwitch "a"
		noteOffValue = 64
# korg nanopad2's noteoff velociy is 64
	if korgflag == true
		korg_check.states.b =
			opacity: 0
		korg_check.stateSwitch "b"
		noteOffValue = 0
		
	if noteOffValue == 64
		korgflag = true
	if noteOffValue == 0
		korgflag = false
	noteOff = (progressBar.height / 127) * noteOffValue



