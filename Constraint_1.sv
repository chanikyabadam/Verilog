class rand_exp;
  rand   bit [3:0] a;
  randc  bit [2:0] b;

  constraint a1 {a > b;};
endclass

module tb();
initial begin
  rand_exp r1;
  r1 = new();
  
  for (int i =0; i<11; i++) begin 
    r1.randomize();
    $display("Values of i %0d r1.a %0d r1.b %0d",i,r1.a,r1.b);
  end
end
endmodule 
  
