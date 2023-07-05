#include <..\..\data\atimeframe.mqh>
#include <..\..\data\sdata.mqh>

bool buildSData(SData &data[][][], int dataSymbolsSize){
   ArrayResize(data,dataSymbolsSize,0);
   return true;
};

bool initData(SData &data[][][], int i, int j, int k, string SymbName, string IndiName, ENUM_TIMEFRAMES Timeframe){
   data[i][j][k].symbol_name = SymbName;
   data[i][j][k].indicator_name = IndiName;
   data[i][j][k].indicator_period = Timeframe;
   return true;
};