#include <..\..\include\build\build.mqh>
#include <..\..\include\handle\initHandle.mqh>

SData Data[][IndicatorSize][TimeframeSize];
SIndicator Indicator[];
SSymbol Symb[];



void OnInit(){
   //*Revisar terminal y cuenta*
   //Construimos nuestra estructura de datos
   build(Data, Indicator, Symb);          
   //Iniciamos handle
   initHandle(Data,Indicator,SymbolListSize,IndicatorSize,TimeframeSize);
   
   /* EJEMPLO
   for(int i=0; i<SymbolListSize; i++){
      for(int j=0; j<IndicatorSize; j++){
         for(int k=0; k<TimeframeSize; k++){
            Print(Data[i][j][k].symbol_name);
            Print(Data[i][j][k].indicator_name);
            Print(Data[i][j][k].indicator_period);
            Print(Data[i][j][k].indicator_handler);
            
         }
      }
   }
   */
}


void OnTick(){

}