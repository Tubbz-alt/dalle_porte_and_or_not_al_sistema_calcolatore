
Memory Configuration

Name             Origin             Length             Attributes
*default*        0x0000000000000000 0xffffffffffffffff

Linker script and memory map

LOAD calcolo_del_fattoriale.o
                [!provide]                        PROVIDE (__executable_start = SEGMENT_START ("text-segment", 0x400000))
                0x0000000000400120                . = (SEGMENT_START ("text-segment", 0x400000) + SIZEOF_HEADERS)

.interp
 *(.interp)

.note.gnu.property
                0x0000000000400120       0x20
 .note.gnu.property
                0x0000000000400120       0x20 calcolo_del_fattoriale.o

.note.gnu.build-id
 *(.note.gnu.build-id)

.hash
 *(.hash)

.gnu.hash
 *(.gnu.hash)

.dynsym
 *(.dynsym)

.dynstr
 *(.dynstr)

.gnu.version
 *(.gnu.version)

.gnu.version_d
 *(.gnu.version_d)

.gnu.version_r
 *(.gnu.version_r)

.rela.dyn       0x0000000000400140        0x0
 *(.rela.init)
 *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*)
 *(.rela.fini)
 *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*)
 *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*)
 *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*)
 *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*)
 *(.rela.ctors)
 *(.rela.dtors)
 *(.rela.got)
 .rela.got      0x0000000000400140        0x0 calcolo_del_fattoriale.o
 *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*)
 *(.rela.ldata .rela.ldata.* .rela.gnu.linkonce.l.*)
 *(.rela.lbss .rela.lbss.* .rela.gnu.linkonce.lb.*)
 *(.rela.lrodata .rela.lrodata.* .rela.gnu.linkonce.lr.*)
 *(.rela.ifunc)

.rela.plt       0x0000000000400140        0x0
 *(.rela.plt)
                [!provide]                        PROVIDE (__rela_iplt_start = .)
 *(.rela.iplt)
 .rela.iplt     0x0000000000400140        0x0 calcolo_del_fattoriale.o
                [!provide]                        PROVIDE (__rela_iplt_end = .)
                0x0000000000401000                . = ALIGN (CONSTANT (MAXPAGESIZE))

.init
 *(SORT_NONE(.init))

.plt            0x0000000000401000        0x0
 *(.plt)
 *(.iplt)
 .iplt          0x0000000000401000        0x0 calcolo_del_fattoriale.o

.plt.got
 *(.plt.got)

.plt.sec
 *(.plt.sec)

.text           0x0000000000401000       0x8f
 *(.text.unlikely .text.*_unlikely .text.unlikely.*)
 *(.text.exit .text.exit.*)
 *(.text.startup .text.startup.*)
 *(.text.hot .text.hot.*)
 *(.text .stub .text.* .gnu.linkonce.t.*)
 .text          0x0000000000401000       0x8f calcolo_del_fattoriale.o
                0x0000000000401064                _start
 *(.gnu.warning)

.fini
 *(SORT_NONE(.fini))
                [!provide]                        PROVIDE (__etext = .)
                [!provide]                        PROVIDE (_etext = .)
                [!provide]                        PROVIDE (etext = .)
                0x0000000000402000                . = ALIGN (CONSTANT (MAXPAGESIZE))
                0x0000000000402000                . = SEGMENT_START ("rodata-segment", (ALIGN (CONSTANT (MAXPAGESIZE)) + (. & (CONSTANT (MAXPAGESIZE) - 0x1))))

.rodata
 *(.rodata .rodata.* .gnu.linkonce.r.*)

.rodata1
 *(.rodata1)

.eh_frame_hdr
 *(.eh_frame_hdr)
 *(.eh_frame_entry .eh_frame_entry.*)

.eh_frame
 *(.eh_frame)
 *(.eh_frame.*)

.gcc_except_table
 *(.gcc_except_table .gcc_except_table.*)

.gnu_extab
 *(.gnu_extab*)

.exception_ranges
 *(.exception_ranges .exception_ranges*)
                0x0000000000402000                . = DATA_SEGMENT_ALIGN (CONSTANT (MAXPAGESIZE), CONSTANT (COMMONPAGESIZE))

.eh_frame
 *(.eh_frame)
 *(.eh_frame.*)

.gnu_extab
 *(.gnu_extab)

.gcc_except_table
 *(.gcc_except_table .gcc_except_table.*)

.exception_ranges
 *(.exception_ranges .exception_ranges*)

.tdata          0x0000000000402000        0x0
                [!provide]                        PROVIDE (__tdata_start = .)
 *(.tdata .tdata.* .gnu.linkonce.td.*)

.tbss
 *(.tbss .tbss.* .gnu.linkonce.tb.*)
 *(.tcommon)

.preinit_array  0x0000000000402000        0x0
                [!provide]                        PROVIDE (__preinit_array_start = .)
 *(.preinit_array)
                [!provide]                        PROVIDE (__preinit_array_end = .)

.init_array     0x0000000000402000        0x0
                [!provide]                        PROVIDE (__init_array_start = .)
 *(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*))
 *(.init_array EXCLUDE_FILE(*crtend?.o *crtend.o *crtbegin?.o *crtbegin.o) .ctors)
                [!provide]                        PROVIDE (__init_array_end = .)

.fini_array     0x0000000000402000        0x0
                [!provide]                        PROVIDE (__fini_array_start = .)
 *(SORT_BY_INIT_PRIORITY(.fini_array.*) SORT_BY_INIT_PRIORITY(.dtors.*))
 *(.fini_array EXCLUDE_FILE(*crtend?.o *crtend.o *crtbegin?.o *crtbegin.o) .dtors)
                [!provide]                        PROVIDE (__fini_array_end = .)

.ctors
 *crtbegin.o(.ctors)
 *crtbegin?.o(.ctors)
 *(EXCLUDE_FILE(*crtend?.o *crtend.o) .ctors)
 *(SORT_BY_NAME(.ctors.*))
 *(.ctors)

.dtors
 *crtbegin.o(.dtors)
 *crtbegin?.o(.dtors)
 *(EXCLUDE_FILE(*crtend?.o *crtend.o) .dtors)
 *(SORT_BY_NAME(.dtors.*))
 *(.dtors)

.jcr
 *(.jcr)

.data.rel.ro
 *(.data.rel.ro.local* .gnu.linkonce.d.rel.ro.local.*)
 *(.data.rel.ro .data.rel.ro.* .gnu.linkonce.d.rel.ro.*)

.dynamic
 *(.dynamic)

.got            0x0000000000402000        0x0
 *(.got)
 .got           0x0000000000402000        0x0 calcolo_del_fattoriale.o
 *(.igot)
                0x0000000000402000                . = DATA_SEGMENT_RELRO_END (., (SIZEOF (.got.plt) >= 0x18)?0x18:0x0)

.got.plt        0x0000000000402000        0x0
 *(.got.plt)
 .got.plt       0x0000000000402000        0x0 calcolo_del_fattoriale.o
 *(.igot.plt)
 .igot.plt      0x0000000000402000        0x0 calcolo_del_fattoriale.o

.data           0x0000000000402000        0x6
 *(.data .data.* .gnu.linkonce.d.*)
 .data          0x0000000000402000        0x6 calcolo_del_fattoriale.o

.data1
 *(.data1)
                0x0000000000402006                _edata = .
                [!provide]                        PROVIDE (edata = .)
                0x0000000000402006                . = .
                0x0000000000402006                __bss_start = .

.bss            0x0000000000402006        0x0
 *(.dynbss)
 *(.bss .bss.* .gnu.linkonce.b.*)
 .bss           0x0000000000402006        0x0 calcolo_del_fattoriale.o
 *(COMMON)
                0x0000000000402006                . = ALIGN ((. != 0x0)?0x8:0x1)

.lbss
 *(.dynlbss)
 *(.lbss .lbss.* .gnu.linkonce.lb.*)
 *(LARGE_COMMON)
                0x0000000000402008                . = ALIGN (0x8)
                0x0000000000402008                . = SEGMENT_START ("ldata-segment", .)

.lrodata
 *(.lrodata .lrodata.* .gnu.linkonce.lr.*)

.ldata          0x0000000000404008        0x0
 *(.ldata .ldata.* .gnu.linkonce.l.*)
                0x0000000000404008                . = ALIGN ((. != 0x0)?0x8:0x1)
                0x0000000000404008                . = ALIGN (0x8)
                0x0000000000404008                _end = .
                [!provide]                        PROVIDE (end = .)
                0x0000000000404008                . = DATA_SEGMENT_END (.)

.stab
 *(.stab)

.stabstr
 *(.stabstr)

.stab.excl
 *(.stab.excl)

.stab.exclstr
 *(.stab.exclstr)

.stab.index
 *(.stab.index)

.stab.indexstr
 *(.stab.indexstr)

.comment
 *(.comment)

.debug
 *(.debug)

.line
 *(.line)

.debug_srcinfo
 *(.debug_srcinfo)

.debug_sfnames
 *(.debug_sfnames)

.debug_aranges
 *(.debug_aranges)

.debug_pubnames
 *(.debug_pubnames)

.debug_info
 *(.debug_info .gnu.linkonce.wi.*)

.debug_abbrev
 *(.debug_abbrev)

.debug_line
 *(.debug_line .debug_line.* .debug_line_end)

.debug_frame
 *(.debug_frame)

.debug_str
 *(.debug_str)

.debug_loc
 *(.debug_loc)

.debug_macinfo
 *(.debug_macinfo)

.debug_weaknames
 *(.debug_weaknames)

.debug_funcnames
 *(.debug_funcnames)

.debug_typenames
 *(.debug_typenames)

.debug_varnames
 *(.debug_varnames)

.debug_pubtypes
 *(.debug_pubtypes)

.debug_ranges
 *(.debug_ranges)

.debug_macro
 *(.debug_macro)

.debug_addr
 *(.debug_addr)

.gnu.attributes
 *(.gnu.attributes)

/DISCARD/
 *(.note.GNU-stack)
 *(.gnu_debuglink)
 *(.gnu.lto_*)
OUTPUT(calcolo_del_fattoriale elf64-x86-64)
