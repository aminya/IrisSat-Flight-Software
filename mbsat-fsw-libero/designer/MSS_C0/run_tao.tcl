set_family {SmartFusion2}
read_verilog -mode verilog_2k -lib CORESPI_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CORESPI\5.2.104\rtl\vlog\core\spi_clockmux.v}
read_verilog -mode verilog_2k -lib CORESPI_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CORESPI\5.2.104\rtl\vlog\core\spi_chanctrl.v}
read_verilog -mode verilog_2k -lib CORESPI_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CORESPI\5.2.104\rtl\vlog\core\spi_fifo.v}
read_verilog -mode verilog_2k -lib CORESPI_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CORESPI\5.2.104\rtl\vlog\core\spi_rf.v}
read_verilog -mode verilog_2k -lib CORESPI_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CORESPI\5.2.104\rtl\vlog\core\spi_control.v}
read_verilog -mode verilog_2k -lib CORESPI_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CORESPI\5.2.104\rtl\vlog\core\spi.v}
read_verilog -mode verilog_2k -lib CORESPI_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CORESPI\5.2.104\rtl\vlog\core\corespi.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\CORESPI_C0\CORESPI_C0.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\CORESPI_C1\CORESPI_C1.v}
read_verilog -mode verilog_2k -lib COREAPB3_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode verilog_2k -lib COREAPB3_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode verilog_2k -lib COREAPB3_LIB {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\CoreAPB3_C0\CoreAPB3_C0.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\CoreResetP_C0\CoreResetP_C0.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\FCCC_C0\FCCC_C0_0\FCCC_C0_FCCC_C0_0_FCCC.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\FCCC_C0\FCCC_C0.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\MSS_C0_MSS\MSS_C0_MSS.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode verilog_2k {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\component\work\MSS_C0\MSS_C0.v}
set_top_level {MSS_C0}
map_netlist
check_constraints {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\iris-fsw-libero\designer\MSS_C0\synthesis.fdc}
