#include <..\..\FinalEA\data\SSymbol.mqh>

bool buildSSymbol(SSymbol &Ssymb[], int SymbolsSelectedSize){
   ArrayResize(Ssymb,SymbolsSelectedSize,0);
   return true;
};

bool initSymbol(SSymbol &Ssymb[]){
   for(int i=0; i<ArraySize(Ssymb); i++){
      Ssymb[i].name=SymbolName(i,true);
      Ssymb[i].point=SymbolInfoDouble(Ssymb[i].name,SYMBOL_POINT);
      Ssymb[i].digit=SymbolInfoInteger(Ssymb[i].name,SYMBOL_DIGITS);
      Ssymb[i].lot_min=SymbolInfoDouble(Ssymb[i].name,SYMBOL_VOLUME_MIN);
      
   }
   return(true);
};