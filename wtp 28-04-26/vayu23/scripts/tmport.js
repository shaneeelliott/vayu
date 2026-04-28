//PORT CALCS
// funtion to create deg2rad
function deg2rad(degrees)
{
  var pi = Math.PI;
  return degrees * (pi/180);
}

function rad2deg(radians)
{
  var pi = Math.PI;
  return radians / (pi/180);
}

// call wtp variables
var brg2mk = bgvars.value(39);
var dst2mk = bgvars.value(40);
var TargTWA = bgvars.value(34);
var TargBSP = bgvars.value(32);
var PolBSP = bgvars.value(35);
var twa = bgvars.value(16);
var twd = bgvars.value(18);
var CcurRate = bgvars.value(42);
var CcurDirn = bgvars.value(43);
var McurRate = bgvars.value(44);
var McurDirn = bgvars.value(45);
var selcurr = bgvars.value (194);
var abstwa = Math.abs(twa);
var absTargTWA = Math.abs(TargTWA);

var curRate;
if (selcurr = 0) {
	curRate = McurRate;
}else{
	curRate = CcurRate;
}

var curDirn;
if (selcurr = 0) {
	curDirn = McurDirn;
}else{
	curDirn = CcurDirn;
}


//calculate TWA2MK
var twa2mk;
if (twd - brg2mk < -180) { 
    twa2mk = (twd + 360)-brg2mk;
}else if (twd - brg2mk > 180) {    
    twa2mk = twd - (brg2mk + 360);
}else {
    twa2mk = twd - brg2mk;
}

//calculate CsePort
var CsePort;
if ((twd + absTargTWA) >= 360) {
    CsePort = (twd + absTargTWA) -360;
}else {
    CsePort = (twd + absTargTWA);
}

//calculate CseStbd
var CseStbd;
if ((twd - absTargTWA) < 0) {
    CseStbd = (twd - absTargTWA) + 360;
}else {
    CseStbd = (twd - absTargTWA);
}

//calculate Current x-y
var currX = Math.cos(deg2rad(curDirn)) * curRate;
var currY = Math.sin(deg2rad(curDirn)) * curRate;

//PortLL
var PboatX = Math.cos(deg2rad(CsePort)) * TargBSP;
var PboatY = Math.sin(deg2rad(CsePort)) * TargBSP;
var pLL_X = PboatX + currX;
var pLL_Y = PboatY + currY;
var PortLL;
if ((rad2deg(Math.atan2 (pLL_Y,pLL_X))) <= 0) {
    PortLL = 360+(rad2deg(Math.atan2 (pLL_Y,pLL_X)));
}else {
    PortLL = (rad2deg(Math.atan2 (pLL_Y,pLL_X)));
}    

//StbdLL
var SboatX = Math.cos(deg2rad(CseStbd)) * TargBSP;
var SboatY = Math.sin(deg2rad(CseStbd)) * TargBSP;
var sLL_X = SboatX + currX;
var sLL_Y = SboatY + currY;
var StbdLL;
if ((rad2deg(Math.atan2 (sLL_Y,sLL_X))) <= 0) {
    StbdLL = 360+(rad2deg(Math.atan2 (sLL_Y,sLL_X)));
}else {
    StbdLL = (rad2deg(Math.atan2 (sLL_Y,sLL_X)));
} 

//calculate UpCseLL
var UpCseA = PortLL - brg2mk;
var UpCseC = brg2mk - StbdLL;
var UpCseB = UpCseA + UpCseC;

//calculate DnCseLL
var DnCseA = brg2mk - PortLL;
var DnCseC = StbdLL - brg2mk;
var DnCseB = DnCseA + DnCseC;

//calculate DstPort
var DstPort;
if (abstwa <= 90) {
    DstPort = (Math.sin(deg2rad(UpCseC))*dst2mk)/Math.sin(deg2rad(UpCseB));
}else {
    DstPort = (Math.sin(deg2rad(DnCseC))*dst2mk)/Math.sin(deg2rad(DnCseB));
}

//calculate TmPort
var dTmPort = (DstPort / (TargBSP))/24;

//calculate ReTmPort
var dReTmPort = (dst2mk / (PolBSP))/24;

//calculate Decimal Time on Port Tack
var dTM_PORT;
if (abstwa <= 90  && Math.abs(twa2mk) <= absTargTWA) {
    dTM_PORT = dTmPort;
}else if (abstwa > 90 && Math.abs(twa2mk) >= absTargTWA) {
    dTM_PORT = dTmPort;
}else if (twa2mk > 0) {
    dTM_PORT = 0;
}else {
    dTM_PORT = dReTmPort;
}

//decimal time to mmss
var p_min = Math.floor(Math.abs(dTM_PORT*1440));
var p_sec = Math.floor((Math.abs(dTM_PORT * 1440) * 60) %60);
var TM_PORT = Number(p_min+ "." + (p_sec < 10 ? "0" : "") + p_sec);

return TM_PORT;





