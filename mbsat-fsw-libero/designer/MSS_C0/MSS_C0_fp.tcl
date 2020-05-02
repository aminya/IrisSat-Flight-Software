new_project \
         -name {MSS_C0} \
         -location {C:\Users\howarth3-INS\Desktop\mbsat-fsw-libero\designer\MSS_C0\MSS_C0_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S010} \
         -name {M2S010}
enable_device \
         -name {M2S010} \
         -enable {TRUE}
save_project
close_project
