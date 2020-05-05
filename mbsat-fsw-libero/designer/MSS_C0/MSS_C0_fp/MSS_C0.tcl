open_project -project {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0_fp\MSS_C0.pro}\
         -connect_programmers {FALSE}
if { [catch {load_programming_data \
    -name {M2S010} \
    -fpga {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.map} \
    -header {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.hdr} \
    -envm {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.efc}  \
    -spm {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.spm} \
    -dca {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.dca} } return_val] } {
    save_project
    close_project
    exit }
if { [catch {export_single_ppd \
    -name {M2S010} \
    -file {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.ppd}} return_val ] } {
    save_project
    close_project
    exit}

set_programming_file -name {M2S010} -no_file
save_project
close_project
