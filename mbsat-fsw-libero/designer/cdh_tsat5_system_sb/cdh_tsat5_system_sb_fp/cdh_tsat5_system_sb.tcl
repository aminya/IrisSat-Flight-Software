open_project -project {C:\Users\Files\MBSAT\Test4\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb_fp\cdh_tsat5_system_sb.pro}
enable_device -name {M2S010} -enable 1
set_programming_file -name {M2S010} -file {C:\Users\Files\MBSAT\Test4\ManitobaSat-Flight-Software\mbsat-fsw-libero\designer\cdh_tsat5_system_sb\cdh_tsat5_system_sb.ppd}
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
set_programming_file -name {M2S010} -no_file
save_project
close_project
