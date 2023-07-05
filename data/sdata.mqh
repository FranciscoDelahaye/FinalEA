//Estructura principal donde manejaremos nuestra informacion.
struct SData{
   string            symbol_name;                  //Nombre del simbolo
   string            indicator_name;               //Indicador
   int               indicator_handler;            //Nombre de los handler
   double            indicator_buffer0[];          //Variable para almacenar valores del buffer 0
   double            indicator_buffer1[];          //Variable para almacenar valores del buffer 1
   ENUM_TIMEFRAMES   indicator_period;             //Periodo timeframe
};