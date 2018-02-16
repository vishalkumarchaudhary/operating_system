integer main()
{
	integer a, s , n;
	s = Fork();
	print("S IS");
	print (s);
	
	if (s >= 0 && s < 32) then
		print("beforewait");
		a = Wait(s);
		print ("parent");
		print (a);
	endif;
	
	if (s == -2) then
                print("signal");
                 
		a = Signal();
		print ("child");
		print (a);
		print("****") ;
	endif;
	

	if (s == -2 ) then
	 
	print("ppid") ;
		a = Getppid() ;

		a = Wait(a);

		print("******") ;
	endif;
	n = 20;
	while (n > 0) do
		print(n);
		n = n-1;	
	endwhile;
	print("last") ;
        a = Getpid();
	print(a);	
return 0;
}


