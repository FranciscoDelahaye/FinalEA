#include <..\..\FinalEA\data\SSymbol.mqh>

bool buildSSymbol(SSymbol &Ssymb[], int SymbolsSelectedSize){
   if(SymbolsSelectedSize!=0){
      ArrayResize(Ssymb,SymbolsSelectedSize,0);
      return true;
   }
   return false;
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