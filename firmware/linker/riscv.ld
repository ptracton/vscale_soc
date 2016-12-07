OUTPUT_ARCH( "riscv" )

MEMORY
{
    rom : ORIGIN = 0x00000000, LENGTH = 0x00001000 
    ram : ORIGIN = 0x20000000, LENGTH = 0x00001000 
}

SECTIONS
{

  .boot : { *(.boot) } > rom

	.text : {
		_stext = .;
		*(.text)
		_etext  =  .;	
		_endtext = .;
	}  > rom

  .rodata : {
		*(.rodata);
		*(.rodata.*)
	} > rom
	.data : {
		sdata  =  .;
		_sdata  =  .;
		*(.data)
		edata  =  .;
		_edata  =  .;
	} > ram	
	.bss :
	{
		_bss_start = .;
		*(.bss)
		*(COMMON)
		_bss_end = .;
	} > ram
	
}

