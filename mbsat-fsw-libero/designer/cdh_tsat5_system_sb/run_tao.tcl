set_family {SmartFusion2}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CORESPI\3.0.156\rtl\vlog\core_obfuscated\spi_master.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CORESPI\3.0.156\rtl\vlog\core_obfuscated\spi_slave.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CORESPI\3.0.156\rtl\vlog\core_obfuscated\corespi_sfr.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CORESPI\3.0.156\rtl\vlog\core_obfuscated\corespi.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\work\cdh_tsat5_system_sb\CCC_0\cdh_tsat5_system_sb_CCC_0_FCCC.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\work\cdh_tsat5_system_sb\FABOSC_0\cdh_tsat5_system_sb_FABOSC_0_OSC.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\work\cdh_tsat5_system_sb_MSS\cdh_tsat5_system_sb_MSS.v}
read_verilog -mode verilog_2k -lib COREAPB3_LIB {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core_obfuscated\coreapb3_muxptob3.v}
read_verilog -mode verilog_2k -lib COREAPB3_LIB {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core_obfuscated\coreapb3_iaddr_reg.v}
read_verilog -mode verilog_2k -lib COREAPB3_LIB {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core_obfuscated\coreapb3.v}
read_verilog -mode verilog_2k {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\component\work\cdh_tsat5_system_sb\cdh_tsat5_system_sb.v}
set_top_level {cdh_tsat5_system_sb}
map_netlist
check_constraints {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\synthesis.fdc}
