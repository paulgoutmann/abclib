//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//-----------------------BY ALAIN BONARDI & PAUL GOUTMANN - 2019-2023 ------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi, Paul Goutmann & David Fierro";
declare licence "LGPLv3";
declare name "abc_delay12";
//
process = library("abc.lib").abc_pardelset_ui(12);
