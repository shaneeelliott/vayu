11

4  0  0  5
51  /AWA______M   10  0
55  /TWS_____KT   17  1
4d  /AWS_____KT   11  1
59  /TWA______@   16  1

4  0  1  5
57  /MWS_____KT    9  1
5a  /MWA______@    8  0
49  /HDG_____@M   55  0
4a  /HDGR____@M   55  0

4  0  2  5
4e  /AWSR____KT   11  1
6d  /TWD_____@M   18  0
6e  /TWDR____@M   18  0
52  /AWAR_____@   10  0

3  0  3  1
41  /VS______KT   91  2
42  /VSR_____KT   91  2
7F  /VMG_____KT   19  2

4  1  4  5
44  /YAW_RTE_@S   56  1
9E  /PTCH_RTE@S   54  1
3C  /ROLL_RTE@S   52  1
75  /TIMER___MS   -1  0

4  1  5  5
7e  /POL_SPD_KT   35  1
7d  /TARG_SPDKT   32  1
7c  /REACHINGKT   36  1
53  /TARG_TWA_@   34  0

2  9  1  1
C1  /DEPTH____M   67  1
1F  /SEA_TEMP_C   60  1

3  9  2  5
87  /BAROMETRMB   62  1
82  /LEEWAY___@   12  1
9a  /OPP_TACK@M   72  0

3  9  3  9
e8  /DTW_GC__NM   40  1
e6  /BTW_GC__@M   39  0
ee  /XTE_____NM   68  2

2  4  1  5
9B  /TRIM_____@   90  1
34  /HEEL_____@   89  1

4  4  2  9
ea  /COG_____@M   28  0
eb  /SOG_____KT   27  1
84  /TIDE_SET@M   43  0
83  /TIDE_RTEKT   42  1

=====================================================================
line 1: number of transmit groups

line 2: number of variables in group (max 5)
        transmit delay
        transmit offset
        Node

line n: B&G function number (hex)
        /text to be sent out with this function number
        number of variable in bg_vars.d
        decimal places for display
