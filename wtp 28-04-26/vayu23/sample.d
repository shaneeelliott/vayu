#can channel, device id, analogue input, variable number, cal file, fil file, alarm file

[analogue]
#gyro_dhl  1   0    3   52  gdheel.cal    gdheel.fil	null.alm
#gyro_dpt  1   0    2   54  gdpitch.cal   gdpitch.fil	null.alm
#gyro_dyw  1   0    1   56  gdyaw.cal     gdyaw.fil	null.alm

rudder    1   0    4  170  rudder.cal    rudder.fil    null.alm

Deflector 1   4    1  160  deflector.cal null.fil  null.alm
rake      1   4    2  166  rake.cal      null.fil	null.alm
forestay  1   4    3   58  forestay.cal  forestay.fil	null.alm

V1_stbd	  1   3    2  167  v1_stbd.cal   v1_stbd.fil    null.alm
V1_port   1   3    1  168  v1_port.cal   v1_port.fil    null.alm

[pulse]

[analogue speed]
VS2pad    1   3   87  vs2pad.cal    vs2pad.fil	null.alm

[derived]
MW_angle           8  mwa.cal       null.fil		null.alm
Boatspeed          2  null.cal      boatspd.fil		null.alm
Orig_TWD          24  null.cal      orig_twd.fil	null.alm
Orig_TWS          23  null.cal      orig_tws.fil	null.alm
TW_dirn           18  null.cal      tw_dirn.fil		null.alm
TW_speed          17  null.cal      tw_speed.fil	null.alm
Course            14  null.cal      course.fil		null.alm
VMG               19  null.cal      null.fil		null.alm
VMC               29  null.cal      null.fil		null.alm
OptVMC            30  null.cal      null.fil  	    null.alm      
CseOVMC           31  null.cal      null.fil		null.alm
TWAOVMC           69  null.cal      null.fil		null.alm
OppTrkW           72  null.cal      null.fil		null.alm
OppTrkG           73  null.cal      null.fil		null.alm
GyroHdg           55  null.cal      gyrohdg.fil		null.alm
GyroHl            51  null.cal      null.fil		null.alm
GyroTrm           53  null.cal      null.fil		null.alm
Leeway            12  null.cal      null.fil		null.alm
pitchRMS          75  null.cal      pitchrms.fil	null.alm
pitchPrd          76  null.cal      pitchprd.fil	null.alm
CMWA              65  null.cal      cmwa.fil		null.alm	
CMWS              66  null.cal      cmws.fil		null.alm
Boatspd2          86  null.cal      boatspd2.fil	null.alm
WindToMast        96  mwa.cal       null.fil		null.alm
TargetBSpd        32  null.cal      targbspd.fil	null.alm
variation        110  null.cal      null.fil		null.alm


[nmea2k]
heel2	   0  0  41 81  heel2.cal     heel2.fil	null.alm
trim2      0  0  97 82  trim2.cal     trim2.fil	null.alm
heading2   0  0  38 80  heading2.cal  heading2.fil  null.alm

[uservars]
HeelTar    161   -1   tgtheel.tab   null.fil  null.alm
TWA_ABS    169   16   null.cal      null.fil  null.alm
RuddTarg     171   -1   tgtrudd.tab   null.fil  null.alm
TrimTarg     172   -1   tgttrim.tab   null.fil  null.alm
FsyTarg      173   -1   tgtfsy.tab    null.fil  null.alm
RkeTarg      174   -1   tgtrke.tab    null.fil  null.alm
MastTwist  175   -1   masttwist.tab masttwist.fil  null.alm
TwistCorr  176  175   twist.cal     null.fil  null.alm
BsTarg     177   32   null.cal      null.fil  null.alm
Fsty_Lb    178   58   fstylb.cal    null.fil  null.alm
GRM_BRG2MK 182   39   null.cal      null.fil  null.alm
GRM_HEEL   183   89   null.cal      null.fil  null.alm 
RUDD_30    185  170   null.cal      30sec.fil null.alm  
tVMG%      186   71   null.cal      tvmg%.fil null.alm
TWD        187   18   null.cal      grm_twd.fil  null.alm
TRIM       188   90   inv.cal       null.fil  null.alm
TWATarg    189   34   null.cal      null.fil  null.alm
RUDDERavg  190  170   null.cal      ruddavg.fil  null.alm
TRIMavg    191  188   null.cal      trimavg.fil  null.alm
TWSavg     192   17   null.cal      twsavg.fil   null.alm
TWDavg     193   18   null.cal      twdavg.fil   null.alm
SelCurr    194  146   selcurr.cal   null.fil     null.alm
UpK        195  146   UpK.cal       null.fil     null.alm
DnK        196  146   DnK.cal       null.fil     null.alm
JibTkRat   197   58   jib_tack_ratio.cal     jib_tack_ratio.fil     null.alm
Grm_tws    199   17   grm_tws.cal   null.fil     null.alm
FrothFac   198    1   froth_factor.cal       null.fil     null.alm
DepthWL    200   67   depthwl.cal     null.fil     null.alm

==============================================================================

INSTRUCTIONS:

[analogue]:
   name of variable
   Can Channel
   Device ID
   physical input (1 to 6)
   number of variable in bg_vars.d
   calibration file
   filtering file
   alarm file

[pulse]:
   name of variate
   Can Channel
   Device ID
   physical input 1 or 2
   number of variable in bg_vars.d
   calibration file
   filtering file
   alarm file

[derived]:
   name of variate
   number of variate
   calibration file
   filtering file
   alarm file
   DO NOT MODIFY THE ORDER OF VARIABLES. MUST MATCH THE SOURCE CODE.

[uservars]:
   User variables go here

Notes:
1.  variable names MUST NOT contain spaces

  
