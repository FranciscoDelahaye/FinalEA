#include <..\..\include\build\buildSData.mqh>
#include <..\..\include\build\buildSIndicator.mqh>
#include <..\..\include\userconfig\indicators.mqh>
#include <..\..\include\build\buildSSymbol.mqh>
#include <..\..\include\userconfig\symbols.mqh>


bool build(SData &Sdata[][][], SIndicator &Sindi[], SSymbol &Ssymb[]){
   buildSIndicator(Sindi,IndicatorSize);
   initIndicator(Sindi,0,RSI_Indicator_Name,RSI_Period,0,0,0,RSI_Level_Mid,RSI_Level_Buy,RSI_Level_Sell,RSI_AppliedPrice);
   initIndicator(Sindi,1,MFI_Indicator_Name,MFI_Period,0,0,0,MFI_Level_Mid,MFI_Level_Buy,MFI_Level_Sell,MFI_AppliedPrice);
   initIndicator(Sindi,2,MACD_Indicator_Name,MACD_Fast,MACD_Slow,MACD_Signal,MACD_Desviation,MACD_Level_Mid,MACD_Level_Buy,MACD_Level_Sell,MACD_AppliedPrice);
   
   if(SymbolList==MarketWatch){  SymbolListSize=SymbolsTotal(true);  }
   buildSSymbol(Ssymb, SymbolListSize);
   initSymbol(Ssymb);
   
   buildSData(Sdata, SymbolListSize);
   for(int i=0; i<SymbolListSize; i++){
      for(int j=0; j<IndicatorSize; j++){
         for(int k=0; k<TimeframeSize; k++){
            initData(Sdata,i,j,k,Ssymb[i].name,Sindi[j].name,ATimeframe[k]);
         }
      }
   }
   return false;
};