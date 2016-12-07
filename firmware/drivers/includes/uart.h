

#ifndef __UART_H__
#define __UART_H__

#include <stdint.h>

//
// This is the location in memory of the UART instance.
// See the bus_matrix soc_template.conf file 
//
#define UART_REGISTER_ADDRESS 0x40000000

typedef struct{
  uint32_t data;
  uint32_t interrupt_enable;
  uint32_t ii;
  uint32_t lc;
  uint32_t ls;
  uint32_t ms;
  uint32_t status;
} UART_REGS_Type;

void UART_Init(UART_REGS_Type *uart);
void UART_SetBaud(UART_REGS_Type *uart, uint32_t baud_rate);
void UART_TransmitByte(UART_REGS_Type * uart, uint8_t byte);
uint8_t UART_ReceiveByte(UART_REGS_Type * uart);


#endif
