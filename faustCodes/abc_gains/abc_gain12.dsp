//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2021 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "LGPLv3";
declare name "abc_gain12";
//
//--------------------------------------------------------------------------------------//
//MULTI CHANNEL GAINS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
gain = hslider("v:gains/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;

//--------------------------------------------------------------------------------------//
// GAIN LINES IN PARALLEL
//--------------------------------------------------------------------------------------//
gainLine(n) = par(i, n, *(gain));
//
//--------------------------------------------------------------------------------------//
// CONVERSION DB=>LINEAR
//--------------------------------------------------------------------------------------//
dbcontrol = _ <: ((_ > -127.0), ba.db2linear) : *;
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
dbtogain = si.smoo : dbcontrol;
//
//
process = gainLine(12);
