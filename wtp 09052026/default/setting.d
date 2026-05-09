# ---------------------------------------------------------------------- 
# WTP3 
# setting.d 
# ---------------------------------------------------------------------- 
# mast_height - mastheight (feet) 
# leeway_cal - leeway calibration 80 
# heel_enable - use heel in calculations (0 off, 1 on) 
# gyro_enable - use gyro in calculations (0 off, 1 on) 
# mag_var - magnetic variation (+East, -West) 
# dsp_time - time (in tenths of seconds) for oscillating variables (see userout.d) 
# dsp_up_ang - angle for switch between upwind and reaching variables 
# dsp_dn_ang - angle for switch between reaching and downwind variables 
# TWS_factor - TWS adjustment 80 
# mast_rot - use mast rotation (0 off, 1 absolute value, 2 full rotation) 
# 3D_enable - use 3D gyro correction in heading (0 off, 1 on) 
# 3D_damping - 3D damping parameter (DO NOT CHANGE should be 0.970) 
# sel_comp - compass select (1, 2 or 3) 
# sel_heel - heel select (1, 2 or 3) 
# sel_trim - trim select (1, 2 or 3) 
# sel_speed - boatspeed select (1 p/s paddle, 2 single i/p, 3 SOG) 
# sel_GPS - GPS select 
# log_miles - total distance travelled, nm 
# bspd_switch - boatspeed switching mode (0 heel, 1 mwa) 
# datalog - datalog (0 off, 1 on) 
# ---------------------------------------------------------------------- 
# Parameters: 
# Name (appears on Deckman) / "S" / setting ID / width of display field in chars / decimal places / value 
# ---------------------------------------------------------------------- 
# ORDER OF PARAMETERS IS FIXED AND MUST NOT CHANGE 
# ---------------------------------------------------------------------- 

mast_height S 0 5 1 50.0 
leeway_cal S 1 4 1 0.0 
heel_enable S 2 4 0 1 
gyro_enable S 3 4 0 1 
mag_var S 4 5 1 0.0 
dsp_time S 5 4 0 30 
dsp_up_ang S 6 4 0 80 
dsp_dn_ang S 7 4 0 120 
TWS_factor S 8 4 2 1.00 
mast_rot S 9 4 0 0 
3D_enable S 10 4 0 1 
3D_damp S 11 5 3 0.970 
sel_comp S 12 4 0 1 
sel_heel S 13 4 0 1 
sel_trim S 14 4 0 1 
sel_speed S 15 4 0 1 
sel_GPS S 16 4 0 1 
log_miles S 17 5 2 0 
bspd_switch S 18 4 0 0 
datalog S 19 0 0 0 

