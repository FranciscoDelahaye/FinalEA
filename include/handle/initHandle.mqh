#include <..\..\data\sdata.mqh>
#include <..\..\data\sindicator.mqh>

bool initHandle(SData &data[][][], SIndicator &indi[], int symbSize, int indicatorSize, int timeframeSize){
   for(int i=0; i<symbSize; i++){
      for(int j=0; j<indicatorSize; j++){
         for(int k=0; k<timeframeSize; k++){
            //Buscamos a que indicador corresponde e iniciamos su handle
            if(data[i][j][k].indicator_name=="rsi"){
               initRSI(data[i][j][k].indicator_handler,data[i][j][k].symbol_name,data[i][j][k].indicator_period,indi[j].value1,indi[j].appliedprice);
            }
            else if(data[i][j][k].indicator_name=="mfi"){
               initMFI(data[i][j][k].indicator_handler,data[i][j][k].symbol_name,data[i][j][k].indicator_period,indi[j].value1);
            }
            else if(data[i][j][k].indicator_name=="macd"){
               initMACD(data[i][j][k].indicator_handler,data[i][j][k].symbol_name,data[i][j][k].indicator_period,indi[j].value1,indi[j].value2,indi[j].value3,indi[j].appliedprice);
            }
            else{
               PrintFormat("Funcion: "+__FUNCTION__+" No se reconoce nombre de indicador, codigo de error %d", GetLastError());
               return false;
            }
         }
      }
   }
   return true;
}

//+------------------------------------------------------------------+
//| Inicializa el handler indicado, para funciones con RSI           |
//+------------------------------------------------------------------+
bool initRSI(int &handler,string symb_name, ENUM_TIMEFRAMES period, int rsi_period, int PriceApplied)
{
   ResetLastError();
   handler = iRSI(symb_name,period,rsi_period,PriceApplied);
      if(handler==INVALID_HANDLE)
        {
         PrintFormat("Function: "+__FUNCTION__+" Failed to create handle RSI, error code %d", GetLastError());
         return(false);
        } 
   PrintFormat("Function: "+__FUNCTION__+" Executed good.");
   return(true);
}
//+------------------------------------------------------------------+
//| Inicializa el handler indicado, para funciones con MFI           |
//+------------------------------------------------------------------+
bool initMFI(int &handler,string symb_name, ENUM_TIMEFRAMES period, int mfi_period)
{
   ResetLastError();
   handler = iMFI(symb_name,period,mfi_period,VOLUME_TICK);
      if(handler==INVALID_HANDLE)
        {
         PrintFormat("Function: "+__FUNCTION__+" Failed to create handle MFI, error code %d", GetLastError());
         return(false);
        } 
   PrintFormat("Function: "+__FUNCTION__+" Executed good.");
   return(true);
}
//+------------------------------------------------------------------+
//| Inicializa el handler indicado, para funciones con MACD          |
//+------------------------------------------------------------------+
bool initMACD(int &handler,string symb_name, ENUM_TIMEFRAMES period, int macd_period1, int macd_period2, int macd_signal, int PriceApplied)
{
   ResetLastError();
   handler = iMACD(symb_name,period,macd_period1,macd_period2,macd_signal,PriceApplied);
      if(handler==INVALID_HANDLE)
        {
         PrintFormat("Function: "+__FUNCTION__+" Failed to create handle MACD, error code %d", GetLastError());
         return(false);
        } 
   PrintFormat("Function: "+__FUNCTION__+" Executed good.");
   return(true);
}
//+------------------------------------------------------------------+