integer main()
{ 
	integer childpid, retval;
	childpid = Fork();

	if(childpid == -2) then
		retval = Exec("10.xsm");
		if(retval==-1)then
			
			Exit() ;
		endif ;
	else
		while(childpid != -1) do
			print(childpid);
			retval = Wait(childpid) ;
		endwhile;
	endif;
	return 0 ;
}