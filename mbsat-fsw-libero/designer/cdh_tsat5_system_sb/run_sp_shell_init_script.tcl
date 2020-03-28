set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package tq144 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {PLL_SUPPLY} {PLL_SUPPLY_25}
set_def {VPP_SUPPLY_25_33} {VPP_SUPPLY_25}
set_def {PA4_URAM_FF_CONFIG} {SUSPEND}
set_def {PA4_SRAM_FF_CONFIG} {SUSPEND}
set_def {PA4_MSS_FF_CLOCK} {RCOSC_1MHZ}
set_def USE_CONSTRAINTS_FLOW 1
set_netlist -afl {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb.afl} -adl {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb.adl}
set_placement   {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb.loc}
set_routing     {C:\Users\Joseph Howarth\Documents\MBSat\libero_update\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb.seg}
