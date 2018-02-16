step contains 

int1.spl
int2.spl
int4.spl
int3.spl


./spl --int=4 spl_progs/int4.spl
./spl --int=3 spl_progs/int3.spl
./spl --int=2 spl_progs/int2.spl
./spl --int=1 spl_progs/int1.spl

//write apl to call all of these implemented functionality 


fdisk
load --init $HOME/semv/myxos/apl/apl_progs/file_op.xsm
load --os $HOME/semv/myxos/spl/spl_progs/os_startup.xsm
load --int=7 $HOME/semv/myxos/spl/spl_progs/int7.xsm
load --exhandler $HOME/semv/myxos/spl/spl_progs/exhandler.xsm

load --int=1 $HOME/semv/myxos/spl/spl_progs/int1.xsm
load --int=2 $HOME/semv/myxos/spl/spl_progs/int2.xsm
load --int=3 $HOME/semv/myxos/spl/spl_progs/int3.xsm
load --int=4 $HOME/semv/myxos/spl/spl_progs/int4.xsm
