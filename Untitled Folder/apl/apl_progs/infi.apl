integer main(){

	integer pid, s;
	breakpoint;
	pid = Fork();
	if (pid == -2) then
		s = Exec("infip.xsm");
	endif;
	breakpoint;
	pid = Fork();
	if (pid == -2) then
		s = Exec("infin.xsm");
	endif;

	return 0;
}
