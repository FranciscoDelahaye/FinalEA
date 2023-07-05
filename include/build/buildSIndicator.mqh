#include <..\..\FinalEA\data\SIndicator.mqh>

bool buildSIndicator(SIndicator &Sindi[], int SSize){
   if(SSize==0){
      return false;
   }
   else{
      ArrayResize(Sindi,SSize,0);
   }
   return true;
};

bool initIndicator(SIndicator &Sindi[], int arrayPositionI, string name, int value1, int value2, int value3, int desviation, int level_mid, int level_buy, int level_sell, ENUM_APPLIED_PRICE ap){
   if(arrayPositionI >= ArraySize(Sindi)){
      Print("Fallo en "+__FUNCTION__+" Posicion I incorrecta.");
      return false;
   }
   Sindi[arrayPositionI].name = name;
   Sindi[arrayPositionI].value1 = value1;
   Sindi[arrayPositionI].value2 = value2;
   Sindi[arrayPositionI].value3 = value3;
   Sindi[arrayPositionI].desviation = desviation;
   Sindi[arrayPositionI].level_mid = level_mid;
   Sindi[arrayPositionI].level_buy = level_buy;
   Sindi[arrayPositionI].level_sell = level_sell;
   Sindi[arrayPositionI].appliedprice = ap;
   return true;
};