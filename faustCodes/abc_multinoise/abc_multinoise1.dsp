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
declare name "abc_multinoise1";
//
import("stdfaust.lib");
//
//does not use other .dsp file
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//no control parameters
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF A DECORRELATED MULTINOISE
//
//--------------------------------------------------------------------------------------// 
multinoise(n) = no.multinoise(n);
//
//
process = multinoise(1);
