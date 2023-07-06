//Estructura de indicadores.

#define IndicatorSize   3                    //Cantidad de indicadores

struct SIndicator{
   string               name;                //Nombre indicador
   int                  value1;              //Valor 1 del indicador(Ej: Periodo, o ma fast de macd, o k en stoch,etc)
   int                  value2;              //Valor 2 del indicador(Ej: Otro periodo, o ma slow de macd o d en stoch,etc)
   int                  value3;              //Valor 3 del indicador(Ej: macd signal, slow en stoch,etc)
   int                  desviation;          //Desviacion o shift
   int                  level_mid;           //Level por ejemplo para marcar corte al 50
   int                  level_buy;           //Level bajos por ej para compra
   int                  level_sell;          //Level altos por ej para venta
   ENUM_APPLIED_PRICE   appliedprice;        //Aplicar a close, open, etc
};