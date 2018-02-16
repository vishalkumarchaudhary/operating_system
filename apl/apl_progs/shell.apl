integer main(){
	string filename;
	integer pid;
	integer retVal;
	while(1 == 1) do
		print(">>"); 
		// Read the file name to fork and exec
		read(filename);
		if(filename == "halt") then
			Exit();
		endif;
		pid = Fork();
		if(pid == -1) then
			print("!Fork");
		endif;
		if(pid == -2) then 
			retVal = Exec(filename);
			if(retVal == -1) then
				print("!Exec");
				Exit();
			endif;
		endif;
		retVal = Wait(pid);
	endwhile;
	return 0;
}
