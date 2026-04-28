DECKMAN     01b1  03
REMOTE1     01b1  01  F0
REMOTE2     01b1  02  F1
REMOTE3     01b1  03  F2
REMOTE4     01b1  04  F3
REMOTE5     01b1  05  F4
REMOTE6     01b1  06  F5
REMOTE7     01b1  07  F6
REMOTE8     01b1  08  F7

CWA______@  0112  04  A8
CWS______@  0112  05  A9

====================================

line type 1: adds a menu. Only required if menu not already on FFD

Example:
DECKMAN    01b1  03

Menu title (appears on FFD)
menu number - Use 01b1, 01b2, 01b3 etc.
order in chain - 0 appears first on FFD (i.e. before SPEED)

line type 2: adds items to menus

menu item name (appears on FFD)
menu number (as per standard FFD list or defined via type 1 (above)
order in item chain
B&G function number (hex). Use ranges a1-a4 and a8-ae)
         
You can add all items to the same menu, or create a new menu (e.g. "CUSTOM") or add to an
existing FFD menu by using numbers below:

SPEED  	        0102     
LOG    	        0103     
DEPTH  	        0104      
NAVIGATE  	0105      
WIND   	        0106     
PERFORM   	0107     
WAYPOINT  	0108     
MOTOR  	        0109     
TEMP   	        010a      
TIME   	        010b   
MISC   	        010c   
PARAMTR 	0112   
EXTERNAL  	0113   

