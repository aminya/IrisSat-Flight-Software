open_project -project {C:\Users\Joseph Howarth\Documents\MBSat\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system\cdh_tsat5_system_fp\cdh_tsat5_system.pro}\
         -connect_programmers {FALSE}
if { [catch {load_programming_data \
    -name {M2S010} \
    -fpga {C:\Users\Joseph Howarth\Documents\MBSat\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system\cdh_tsat5_system.map} \
    -header {C:\Users\Joseph Howarth\Documents\MBSat\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system\cdh_tsat5_system.hdr} \
    -spm {C:\Users\Joseph Howarth\Documents\MBSat\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system\cdh_tsat5_system.spm} \
    -dca {C:\Users\Joseph Howarth\Documents\MBSat\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system\cdh_tsat5_system.dca} } return_val] } {
    save_project
    close_project
    exit }
if { [catch {export_single_ppd \
    -name {M2S010} \
    -file {C:\Users\Joseph Howarth\Documents\MBSat\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system\cdh_tsat5_system.ppd}} return_val ] } {
    save_project
    close_project
    exit}

set_programming_file -name {M2S010} -no_file
save_project
close_project
