
decl
        integer status;
enddecl
        integer main()
        {
                breakpoint ;
                print("hello user ");
                status = Create("myfile.dat");
                print(status);

		breakpoint ;
                print("hello user ");
                status = Create("another.dat");
                print(status);
                
                return 0;
        }






