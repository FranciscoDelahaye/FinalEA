#include <..\..\include\build\build.mqh>

SData Data[][IndicatorSize][TimeframeSize];
SIndicator Indicator[];
SSymbol Symb[];



void OnInit(){

   build(Data, Indicator, Symb);
   
   for(int i=0; i<SymbolListSize; i++){
      for(int j=0; j<IndicatorSize; j++){
         for(int k=0; k<TimeframeSize; k++){
            Print(Data[i][j][k].symbol_name);
            Print(Data[i][j][k].indicator_name);
            Print(Data[i][j][k].indicator_period);
         }
      }
   }
   /*
   Print("Indicador 0 Nombre: "+Indicator[0].name);
   Print("Indicador 1 Nombre: "+Indicator[1].name);
   Print("Indicador 2 Nombre: "+Indicator[2].name);
   */
}