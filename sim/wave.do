onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {TEST BENCH} /testbench/clk
add wave -noupdate -group {TEST BENCH} /testbench/reset
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/ROM_FILE
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/clk_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/interrupts
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/rst_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/rx_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/tx_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_clk
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_clk_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_adr
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_bte
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_cti
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_cyc
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_sel
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_we
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_adr
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_bte
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cti
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cyc
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_sel
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_we
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_adr
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_bte
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_cti
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_cyc
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_sel
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_we
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_adr
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_bte
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cti
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cyc
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_sel
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_we
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_adr
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_bte
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_cti
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_cyc
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_sel
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_we
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_rst
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_rst_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_ack
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_err
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_rty
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_ack
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_err
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_rty
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_ack
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_err
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_rty
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_ack
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_err
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_rty
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_ack
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_err
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_rty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {162 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 300
configure wave -valuecolwidth 156
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {658 ns}
