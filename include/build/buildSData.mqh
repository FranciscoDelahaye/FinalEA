#include <..\..\data\atimeframe.mqh>
#include <..\..\data\sdata.mqh>

bool buildSData(SData &data[][][], int dataSymbolsSize){
   if(dataSymbolsSize!=0){
      ArrayResize(data,dataSymbolsSize,0);
      return true;
   }
   return false;
};

bool initData(SData &data[][][], int i, int j, int k, string SymbName, string IndiName, ENUM_TIMEFRAMES Timeframe){
   data[i][j][k].symbol_name = SymbName;
   data[i][j][k].indicator_name = IndiName;
   data[i][j][k].indicator_period = Timeframe;
   data[i][j][k].indicator_handler = 0;
   ArrayResize(data[i][j][k].indicator_buffer0,BufferMaxSize,0);
   ArrayResize(data[i][j][k].indicator_buffer1,BufferMaxSize,0);
   ArrayInitialize(data[i][j][k].indicator_buffer0,0.0);
   ArrayInitialize(data[i][j][k].indicator_buffer1,0.0);
   ArraySetAsSeries(data[i][j][k].indicator_buffer0,true);
   ArraySetAsSeries(data[i][j][k].indicator_buffer1,true);
   return true;
};