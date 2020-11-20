set_device \
    -fam SmartFusion2 \
    -die PA4M1000_N \
    -pkg tq144
set_input_cfg \
	-path {C:/Users/Files/MBSAT/working/IrisSat-Flight-Software/mbsat-fsw-libero/component/work/MSS_C0_MSS/ENVM.cfg}
set_output_efc \
    -path {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\mbsat-fsw-libero\designer\MSS_C0\MSS_C0.efc}
set_proj_dir \
    -path {C:\Users\Files\MBSAT\working\IrisSat-Flight-Software\mbsat-fsw-libero}
gen_prg -use_init false
