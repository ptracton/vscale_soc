#include "uart.h"

int start(void){
  UART_REGS_Type * UART = (UART_REGS_Type *) UART_REGISTER_ADDRESS;
  UART_Init(UART);
  return 0;
}
 
