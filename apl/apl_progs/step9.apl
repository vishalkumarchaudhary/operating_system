
decl
		integer inp ,in1,out;
		string str   ;
		
enddecl 

integer main()
{
	inp = 0 ;
	breakpoint ;
	while(inp < 9)do
		out=Fork( );
		
 
		print("output is");
		print("**************") ;
		print(out) ;
		if(out==-2)then
			out= Exec("even.xsm") ;
			print ("out") ;
		endif ;
		print(out) ;
		print("**************") ;
		 inp= inp+1 ;
		 breakpoint ;

		
	endwhile ;  
	  breakpoint ;
	print("exiting init") ;
	 
	return 0;
}





