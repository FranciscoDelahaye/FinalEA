// RSI Variables
input string RSI_Indicator_Name = "rsi";                    //Nombre del indicador
input int RSI_Period = 14;                                  //Periodo RSI
input int RSI_Level_Mid = 50;                               //Nivel si se necesita
input int RSI_Level_Buy = 30;                               //Niveles de compra
input int RSI_Level_Sell = 70;                              //Niveles de venta
input ENUM_APPLIED_PRICE RSI_AppliedPrice = PRICE_CLOSE;    //Aplicar a

// MFI Variables
input string MFI_Indicator_Name = "mfi";                    //Nombre del indicador
input int MFI_Period = 100;                                 //Valor 1
input int MFI_Level_Mid = 50;                               //Nivel si se necesita
input int MFI_Level_Buy = 30;                               //Niveles de compra
input int MFI_Level_Sell = 70;                              //Niveles de venta
input ENUM_APPLIED_PRICE MFI_AppliedPrice = PRICE_CLOSE;    //Aplicar a

// MACD Variables
input string MACD_Indicator_Name = "macd";                  //Nombre del indicador
input int MACD_Fast = 9;                                    //Valor 1 (MACD FAST)
input int MACD_Slow = 12;                                   //Valor 2 (MACD SLOW)
input int MACD_Signal = 3;                                  //Valor 3 (MACD SIGNAL)
input int MACD_Desviation = 0;                              //Shift (MACD DESVIATION)
input int MACD_Level_Mid = 50;                              //Nivel si se necesita
input int MACD_Level_Buy = 30;                              //Niveles de compra
input int MACD_Level_Sell = 70;                             //Niveles de venta
input ENUM_APPLIED_PRICE MACD_AppliedPrice = PRICE_CLOSE;   //Aplicar a