set_family {SmartFusion2}
read_adl {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb.adl}
read_afl {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb.afl}
map_netlist
check_constraints {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\constraint\timing_sdc_errors.log}
write_sdc -strict -afl {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\timing_analysis.sdc}
