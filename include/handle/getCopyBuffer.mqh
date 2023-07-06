//+------------------------------------------------------------------+
//| Carga valores en el arreglos de la handler solicitada           |
//+------------------------------------------------------------------+
bool getCopyBuffer(int handler, int buffer_number1, int start_pos, int bars_count, double &handler_array[])
{
   ResetLastError();
   if(CopyBuffer(handler,buffer_number1,start_pos,bars_count,handler_array)<0)
     {
      PrintFormat("Function: "+__FUNCTION__+" Failed to copy data from the handler indicator, error code %d",GetLastError());
      return(false);
     }
   PrintFormat("Function: "+__FUNCTION__+" Executed good.");
   return(true);
}
//+------------------------------------------------------------------+
//| Carga valores en los 2 arreglos de la handler solicitada         |
//+------------------------------------------------------------------+
bool getCopyBuffer(int handler, int buffer_number1, int start_pos, int bars_count, double &handler_array[], int buffer_number2, double &handler_array2[])
{
   ResetLastError();
   if(CopyBuffer(handler,buffer_number1,start_pos,bars_count,handler_array)<0 || CopyBuffer(handler,buffer_number2,start_pos,bars_count,handler_array2)<0)
     {
      PrintFormat("Function: "+__FUNCTION__+" Failed to copy data from the handler indicator, error code %d",GetLastError());
      return(false);
     }
   PrintFormat("Function: "+__FUNCTION__+" Executed good.");
   return(true);
}
//+------------------------------------------------------------------+
//| Carga valores en los 3 arreglos de la handler solicitada         |
//+------------------------------------------------------------------+
bool getCopyBuffer(int handler, int buffer_number1, int start_pos, int bars_count, double &handler_array[], int buffer_number2, double &handler_array2[], int buffer_number3, double &handler_array3[])
{
   ResetLastError();
   if(CopyBuffer(handler,buffer_number1,start_pos,bars_count,handler_array)<0 || CopyBuffer(handler,buffer_number2,start_pos,bars_count,handler_array2)<0 || CopyBuffer(handler,buffer_number3,start_pos,bars_count,handler_array3)<0)
     {
      PrintFormat("Function: "+__FUNCTION__+" Failed to copy data from the handler indicator, error code %d",GetLastError());
      return(false);
     }
   PrintFormat("Function: "+__FUNCTION__+" Executed good.");
   return(true);
}