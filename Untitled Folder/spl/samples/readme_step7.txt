
./spl --int=1 spl_progs/step7.spl             //for interrupt 1 
./spl --os spl_progs/start_step7.spl 



--------------------------xfs interface ------------------------------------
fdisk 
load --int=1 $HOME/semv/myxos/spl/spl_progs/int1.xsm
load --os $HOME/semv/myxos/spl/spl_progs/os_startup.xsm
load --init $HOME/semv/myxos/apl/apl_progs/cr_file.xsm
load --int=7 $HOME/semv/myxos/spl/spl_progs/int7.xsm
load --exhandler $HOME/semv/myxos/spl/spl_progs/exhandler.xsm

-----------------------------------------------------------------------------

