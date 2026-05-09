1

2  9  7
A8  /CWA______@ 65  1
A9  /CWS_____KT 66  1

=======================================

line 1: number of transmit groups

line 2: number of variables in group (maximum of 5 in group)
        transmit delay (0=10Hz, 1=5Hz, 2=3.3Hz, 4=2Hz, 9=1Hz)
        transmit offset (in tenths of seconds)

line n: B&G function number (hex) - Use a1-a4 and a8-ae for your additional functions

        /upwind section [/reach section] [/downwind section] [/start section]
        
        where reach, downwind and start are optional and each section is:
          text to be sent out       
          number of variable in bg_vars.d
          decimal places for display

IMPORTANT: maximum of 5 variables per transmit group
