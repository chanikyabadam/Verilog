// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module fork_join_none_test();
  int i;
  int r;
  function dis (int a);
    int b[]; //Decalre dynamic Array 
    b =new[a];//Decalred size for dynamic array
    if(a <= 0)
      begin 
         $fatal("Value of a is Negative/Zero, please fix it and rerun it");
        return -1;
      end
    else 
      begin
        for( i =0; i<a; i++)
        begin
          b[i] = 1;//Initializing dynamic array values
          b[i]^=b[i];
          $display("Values of i is %0d",i);
          $display("Values of a is %0d",a);
          $display("Values of b[i] is %0d",b[i]);
        end    
        return b[a-1];
      end 
   endfunction
  
  initial 
    begin
      dis(10);
      $display("Value of i in for loop is %0d",i);
      $display("Value of dis.a in for loop is %0d",dis.a);
      //r = dis(10);
      $display("Value of r in from the fun dis is %0d",r);
    end 
endmodule
