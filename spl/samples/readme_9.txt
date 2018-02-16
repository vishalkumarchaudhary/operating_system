load timer 






step contains 

int1.spl  
int2.spl
int4.spl
int3.spl
int4.spl   
int5.spl   fork
int6.spl   exec  ,get pid  ,get ppid
int7.spl   exit ,  wait ,signal 


./spl --int=4 spl_progs/int4.spl
./spl --int=3 spl_progs/int3.spl
./spl --int=2 spl_progs/int2_open.spl
./spl --int=1 spl_progs/int1.spl

./spl --int=5 spl_progs/int5.spl
./spl --int=6 spl_progs/int6.spl
./spl --int=7 spl_progs/int7.spl

./spl --int=timer spl_progs/timer.spl

./spl --int=5 spl_progs/int5.spl
./spl --os spl_progs/os_startup_9.spl
./spl --int=6 spl_progs/int6.spl



//write apl to call all of these implemented functionality 

./apl apl_progs/step9.apl





fdisk
load --init $HOME/semv/myxos/apl/apl_progs/step9.xsm
load --exec $HOME/semv/myxos/apl/apl_progs/step9.xsm
load --os $HOME/semv/myxos/spl/spl_progs/os_startup.xsm
load --int=7 $HOME/semv/myxos/spl/spl_progs/int7.xsm
load --exhandler $HOME/semv/myxos/spl/spl_progs/exhandler.xsm
load --int=5 $HOME/semv/myxos/spl/spl_progs/int5.xsm
load --int=6 $HOME/semv/myxos/spl/spl_progs/int6.xsm
load --exec $HOME/semv/myxos/apl/apl_progs/even.xsm

load --int=timer $HOME/semv/myxos/spl/spl_progs/timer.xsm


load --int=1 $HOME/semv/myxos/spl/spl_progs/int1.xsm
load --int=2 $HOME/semv/myxos/spl/spl_progs/int2.xsm
load --int=3 $HOME/semv/myxos/spl/spl_progs/int3.xsm
load --int=4 $HOME/semv/myxos/spl/spl_progs/int4.xsm

