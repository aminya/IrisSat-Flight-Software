open_project -project {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0_fp\MSS_C0.pro}
enable_device -name {M2S010} -enable 1
set_programming_file -name {M2S010} -file {C:\Users\Files\MBSAT\working\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.ppd}
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
set_programming_file -name {M2S010} -no_file
save_project
close_project
