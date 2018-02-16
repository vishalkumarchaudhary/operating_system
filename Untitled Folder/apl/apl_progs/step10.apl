
decl
        integer inp ,in1,out;
        string str   ;
        
enddecl 

integer main()
{

    print("user***********")	  ;
    inp = 1 ;
     
   
    while(1==1)do

        print("Enter ");
        print("1 fork ") ;
        print("2 exec ");
        print("3 exit ");
        print("4 getpid ");
        print("5 getppid ");
        print("6 wait");
        print("7 signal") ;
        read(inp);
 

        if(inp == 1)then
            print("forking");
             
            out=Fork( );
            
            if(out == -2) then
                out = Wait(0);
                out = Exec("even.xsm");
             
             endif;
        
            print("output is");
            print(out) ;
           
        endif;

        if(inp == 2)then
            
            print("exec filename");
            
            read(str) ; 
             
            out = Exec(str);
            print("output is");
            print(out) ;
        endif;

        if(inp==3)then
            print("exiting");
            Exit();
            
        endif ;

        if(inp == 4 )then 
             print("getting pid");
             
            out = Getpid(   );
            print("output is");
            print(out) ;

        endif ;

        if(inp == 5)then 
           
            print("getting ppid");
             
            out = Getppid(   );
            print("output is");
            print(out) ;
        endif ;
        if(inp == 6) then
          print("enter pid to wait") ;
            read(in1 ) ;
             out = Wait(in1   );
            print("output is");
            print(out) ;
        endif ;
        if(inp == 7 )then 
            print("signaling") ;
            out = Signal(   );
            print("output is");
            print(out) ;
        endif ;
        
        print("32 forks") ;
        read(inp) ;
        if(inp==32) then 
            inp =1 ;
             while(inp<32)do 

            print("forking");
             
                out=Fork( );
                if(out == -2) then
                    out = Wait(0);
                    out = Exec("even.xsm");
                 
                 endif;
            
                print("output is");
                print(out) ;
                inp =inp+1 ;
            endwhile ;
        endif ;
    inp =1 ;



    endwhile ;  
    return 0;
}




