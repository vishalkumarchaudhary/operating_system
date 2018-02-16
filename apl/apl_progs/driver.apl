integer main()
{
    integer i,pid,a;
    i = 0;
    a = Fork();
    if (a == -2) then
    a = Exec("even.xsm");
    endif;
    print("after exec");
    while(i < 20) do
        if(i%2 == 0) then
            print (i * 10000);
        endif;
        i = i+1;
    endwhile;
    
    return(0);
}