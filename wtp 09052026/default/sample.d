#can channel, device id, analogue input, variable number, cal file, fil file, alarm file

[analogue]
MHU_A_B   0   1	   1    7  null.cal	   null.fil	null.alm
MHU_A_G   0   1    2    6  null.cal      null.fil	null.alm
MHU_A_R   0   1    3    5  null.cal      null.fil	null.alm

gyro_dhl  0   1    4   52  gdheel.cal    gdheel.fil	null.alm
gyro_dpt  0   1    5   54  gdpitch.cal   gdpitch.fil	null.alm
gyro_dyw  0   1    6   56  gdyaw.cal     gdyaw.fil	null.alm

rudder    0   2    1   49  null.cal      null.fil    null.alm
Battery   0   2    2   48  null.cal      null.fil	null.alm
MastRot   0   2    3   25  null.cal      null.fil	null.alm

rake      0   2    4   50  null.cal      null.fil	null.alm
keel      0   2    5   59  null.cal      null.fil	null.alm
airtemp   0   2    6   61  null.cal      null.fil	null.alm

[pulse]
MHU_VA    0   0    1	   9  MHUVA.cal     null.fil	null.alm
portpad   0   1    2   63  portpad.cal   portpad.fil	null.alm
stbdpad   0   1    1   64  stbdpad.cal   stbdpad.fil	null.alm
VS2pad    0   0    2   87  vs2pad.cal    vs2pad.fil	null.alm

[derived]
MW_angle           8  mwa.cal       null.fil		null.alm
Boatspeed          2  null.cal      boatspd.fil		null.alm
Orig_TWD          24  null.cal      orig_twd.fil	null.alm
Orig_TWS          23  null.cal      orig_tws.fil	null.alm
TW_dirn           18  null.cal      tw_dirn.fil		null.alm
TW_speed          17  null.cal      tw_speed.fil	null.alm
Course            14  null.cal      course.fil		null.alm
VMG               19  null.cal      vmg.fil		null.alm
VMC               29  null.cal      vmc.fil		null.alm
OptVMC            30  null.cal      optvmc.fil  	null.alm      
CseOVMC           31  null.cal      cseovmc.fil		null.alm
TWAOVMC           69  null.cal      twaovmc.fil		null.alm
OppTrkW           72  null.cal      null.fil		null.alm
OppTrkG           73  null.cal      null.fil		null.alm
GyroHdg           55  null.cal      gyrohdg.fil		null.alm
GyroHl            51  null.cal      gyrohl.fil		null.alm
GyroTrm           53  null.cal      gyrotrm.fil		null.alm
Leeway            12  null.cal      null.fil		null.alm
pitchRMS          75  null.cal      pitchrms.fil	null.alm
pitchPrd          76  null.cal      pitchprd.fil	null.alm
CMWA              65  null.cal      cmwa.fil		null.alm	
CMWS              66  null.cal      cmws.fil		null.alm
Boatspd2          86  null.cal      boatspd2.fil	null.alm
WindToMast        96  mwa.cal       null.fil		null.alm
TargetBSpd        32  null.cal      targbspd.fil	null.alm
variation        110  null.cal      null.fil		null.alm

[uservars]

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

  
