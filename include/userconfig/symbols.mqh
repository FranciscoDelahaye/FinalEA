#include <..\..\FinalEA\data\esymbollist.mqh>

int SymbolListSize = 0;                                                          //Auxiliar para el tamaño de la lista
input ENUM_SHOW_SYMBOLS SymbolList = MarketWatch;                                //Seleccione simbolos de observacion del mercado o un arreglo predeterminado(el cual debe ser fijado por codigo).
// ENUM_SHOW_SYMBOLS SymbolList = {"EURUSD", "AUDCAD", "BTCUSD", "XAUUSD"};      //Si queremos setear simbolos por arreglo
