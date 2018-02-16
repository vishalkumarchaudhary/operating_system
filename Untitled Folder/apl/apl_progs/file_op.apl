
decl
        integer inp ,in1,out;
        string str   ;
        
enddecl 

integer main()
{
    inp = 1 ;
    while(inp < 8)do

        print("Enter ");
        print("1 Create ") ;
        print("2 Open ");
        print("3 Write ");
        print("4 Seek ");
        print("5 Read ");
        print("6 Close");
        print("7 Delete") ;
        read(inp);

        breakpoint ;

        if(inp == 1)then
            print("enter filename");
            read(str);
            out=Create(str);
            print("output is");
            print(out) ;
        endif;

        if(inp == 2)then
            print("enter filename to open");
            read(str) ;
            out=Open(str);
            print("output is");
            print(out) ;
        endif;

        if(inp==3)then
            print("enter the fid to write into");
            read(in1) ;
            print("enter what to write") ;
            read(str) ; 
            out = Write(in1,str);
            print("output is");
            print(out) ;
        endif ;

        if(inp == 4 )then 
            print("enter the fid the seek " ) ;
            read(in1);
            print("enter the seek length") ;
            read(inp) ;
            out = Seek(in1 ,inp);
            print("output is");
            print(out) ;
            inp = 4 ;
        endif ;

        if(inp == 5)then 
            print("enter the fid of the file to read ");
            read(in1) ;
            out = Read(in1,str);
            print("output is");
            print(out) ;

            if(out == 0) then
                print("read word is ");
                print(str) ;
            endif ;
        endif ;
        if(inp == 6) then
            print("enter fid to close");
            read(in1);
            out = Close(in1) ;
            print("output is");
            print(out) ;
        endif ;

        if(inp == 7 )then 
            print("filename to del");
            read(str) ;
            out = Delete(str) ;
        endif ;


    endwhile ;  
    return 0;
}





