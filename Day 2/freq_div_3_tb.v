module tb;
  
  reg clk_in , enable, reset;
  wire clk_out;
  
  clk_div dut(clk_in,reset,clk_out);
  
  always #5 clk_in=~clk_in;
    
  initial
    begin
      clk_in <= 0;
      reset <= 0 ;
      enable <= 0;
      
  
  #10 reset <= 1;
  #20 reset <= 0;
      enable <= 1;
  #200 $finish;
  
    end
  
 initial 
   
   begin
     $monitor("clk_in = %b , reset = %b , clk_out = %b ,enable = %b ",clk_in,reset,clk_out,enable);
   
   end
  
    initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
  
endmodule
